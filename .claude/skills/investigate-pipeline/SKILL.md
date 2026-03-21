---
name: investigate-pipeline
description: Investigate a Vertex AI pipeline run - view status, task details, and logs. Use when debugging pipeline failures, checking run status, or analyzing pipeline performance.
argument-hint: [pipeline-job-id or console URL or "latest" or pipeline-name-prefix]
disable-model-invocation: true
---

# Investigate Vertex AI Pipeline

Investigate a Vertex AI pipeline run. `$ARGUMENTS` can be a full pipeline job ID, a Vertex AI console URL, a pipeline name prefix to find the latest run, or "latest" to find the most recent run.

## Key Details

- **Projects:** `voi-ml` (prod, project number `243138478433`) or `voi-ml-dev` (dev)
- **Regions:** Check `europe-west1`, `europe-west2`, and `europe-west3` (most pipelines use `europe-west2`)
- **Pipeline template registry:** `europe-kfp.pkg.dev/<PROJECT>/ml-pipelines/`

If the user provides a console URL, extract the project and pipeline job ID from it:
`https://console.cloud.google.com/vertex-ai/pipelines/locations/<REGION>/runs/<PIPELINE_JOB_ID>?project=<PROJECT>`

## Steps

### 1. Find the pipeline run

If given a full pipeline job ID, use it directly. Otherwise, list recent pipelines to find the right one:

```bash
# List recent pipeline runs (filter by state or name as needed)
# For failed runs:
curl -s -H "Authorization: Bearer $(gcloud auth print-access-token --project=<PROJECT>)" \
  "https://<REGION>-aiplatform.googleapis.com/v1/projects/<PROJECT>/locations/<REGION>/pipelineJobs?filter=state%3DPIPELINE_STATE_FAILED&orderBy=create_time%20desc&pageSize=10"

# For all recent runs matching a name prefix:
curl -s -H "Authorization: Bearer $(gcloud auth print-access-token --project=<PROJECT>)" \
  "https://<REGION>-aiplatform.googleapis.com/v1/projects/<PROJECT>/locations/<REGION>/pipelineJobs?filter=display_name%3D%22<PREFIX>*%22&orderBy=create_time%20desc&pageSize=5"
```

Show the user the recent runs with dates so they can pick one if needed.

### 2. Get pipeline task details

```bash
curl -s -H "Authorization: Bearer $(gcloud auth print-access-token --project=<PROJECT>)" \
  "https://<REGION>-aiplatform.googleapis.com/v1/projects/<PROJECT>/locations/<REGION>/pipelineJobs/<PIPELINE_JOB_ID>"
```

Parse `jobDetail.taskDetails` to show:
- Each task name, state, start/end time, duration
- For failed tasks: extract the `error` field
- Summary: total task count, succeeded/failed/not-triggered

### 3. Find the custom job ID for this run

Pipeline-level logs and worker logs use different resource types. Worker logs are under
`resource.type="ml_job"` keyed by a custom job ID. Each pipeline run creates a new custom
job, so this ID is unique per run.

Extract it from the pipeline task details (step 2):
- Look at `taskDetails[].executorDetail.containerDetail.mainJob`
- It will be like `projects/.../customJobs/<CUSTOM_JOB_ID>`
- The numeric ID at the end is what you need for log filtering

### 4. Pull application logs

**IMPORTANT:** Always filter by the custom job ID to avoid mixing logs from other runs.
Worker logs use `resource.type="ml_job"` and `resource.labels.job_id="<CUSTOM_JOB_ID>"`.

```bash
# Get all worker logs for the specific custom job
gcloud logging read \
  'resource.type="ml_job" AND resource.labels.job_id="<CUSTOM_JOB_ID>" AND jsonPayload.message:*' \
  --project=<PROJECT> \
  --limit=500 \
  --format="value(timestamp, jsonPayload.levelname, jsonPayload.message)" \
  --freshness=24h \
  | sort
```

To filter for specific patterns:

```bash
# Errors and warnings only
gcloud logging read \
  'resource.type="ml_job" AND resource.labels.job_id="<CUSTOM_JOB_ID>" AND (jsonPayload.levelname="ERROR" OR jsonPayload.levelname="WARNING")' \
  --project=<PROJECT> --limit=200 \
  --format="value(timestamp, jsonPayload.message)" --freshness=24h | sort

# City timing, process results, error summaries
gcloud logging read \
  'resource.type="ml_job" AND resource.labels.job_id="<CUSTOM_JOB_ID>" AND jsonPayload.message=~"(done —|Process.*returned|Starting|Time taken|No successful|Error Summary|GaveUp|fatal|Gave up)"' \
  --project=<PROJECT> --limit=500 \
  --format="value(timestamp, jsonPayload.message)" --freshness=24h | sort
```

### 4. Present results

For **failed pipelines**:
```
## Pipeline: <pipeline-job-id>
- **When:** <start> to <end>
- **State:** FAILED
- **Tasks:** X total, Y succeeded, Z failed, W not triggered

### Failed Tasks
- **Task name**: <name>
- **Error**: <root error message>

### Application Logs
<key error/warning lines from worker logs>

### Root Cause
<Synthesis of what went wrong>
```

For **performance analysis**:
```
## Pipeline: <pipeline-job-id>
- **When:** <start> to <end>
- **Duration:** X minutes
- **State:** SUCCEEDED

### Task Timeline
<table of tasks with start, end, duration>

### Per-City Breakdown
<city timing and throughput from logs>

### Error Summary
<error accumulator output if present>
```

## Common Patterns

- **NOT_TRIGGERED tasks**: Downstream tasks that didn't run because upstream failed. Not the root cause.
- **Replica exit code 1**: Check Python traceback in the logs.
- **"No successful results for X"**: All requests for a city failed. Check the GaveUp reasons in the error summary — could be missing 'data' field (city not served by Lime), 5xx errors, or null responses.
- **"pipe closed by peer"**: Playwright browser connections died. Usually means the event loop wasn't kept alive between batches.
- **Tab done logs**: `"Tab P0-T0: done — X succeeded, Y errors out of Z processed"` shows per-tab success rates. If succeeded=0 across all tabs, the API is rejecting everything for that city.
- **Process return logs**: `"Process N: returned X results"` shows what each subprocess collected. If all return 0, the issue is in the workers, not in result transport.
