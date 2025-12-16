import sys
from pathlib import Path

import dagster as dg
import dlt
from dagster_dbt import DbtCliResource, DbtProject, dbt_assets
from dagster_dlt import DagsterDltResource, dlt_assets

sys.path.insert(0, str(Path(__file__).parents[1]))
from data_extract_load.load_data import anime_source

dlt_resource = DagsterDltResource()


@dlt_assets(
    dlt_source=anime_source(),
    dlt_pipeline=dlt.pipeline(
        pipeline_name="raw_anime",
        dataset_name="bronze",
        destination="postgres",
    ),
)
def dlt_load(context: dg.AssetExecutionContext, dlt: DagsterDltResource):
    yield from dlt.run(context=context)


dbt_project_directory = Path(__file__).parents[1] / "data_transformation"
profiles_dir = Path.home() / ".dbt"

dbt_project = DbtProject(project_dir=dbt_project_directory, profiles_dir=profiles_dir)

dbt_resource = DbtCliResource(project_dir=dbt_project)


dbt_project.prepare_if_dev()


@dbt_assets(
    manifest=dbt_project.manifest_path,
)
def dbt_models(context: dg.AssetExecutionContext, dbt: DbtCliResource):
    yield from dbt.cli(["build"], context=context).stream()


job_dlt = dg.define_asset_job(
    "job_dlt", selection=dg.AssetSelection.keys("dlt_anime_source_raw_anime")
)
job_dbt = dg.define_asset_job(
    "job_dbt", selection=dg.AssetSelection.key_prefixes("silver", "gold", "mart")
)

schedule_dlt = dg.ScheduleDefinition(
    job=job_dlt,
    cron_schedule="8 0 * * *",  # UTC
)


@dg.asset_sensor(
    asset_key=dg.AssetKey("dlt_anime_source_raw_anime"), job_name="job_dbt"
)
def dlt_load_sensor():
    yield dg.RunRequest()


defs = dg.Definitions(
    assets=[dlt_load, dbt_models],
    resources={"dlt": dlt_resource, "dbt": dbt_resource},
    jobs=[job_dlt, job_dbt],
    schedules=[schedule_dlt],
    sensors=[dlt_load_sensor],
)
