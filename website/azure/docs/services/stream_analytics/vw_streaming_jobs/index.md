--- 
title: vw_streaming_jobs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_streaming_jobs
  - stream_analytics
  - azure
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure resources using SQL
custom_edit_url: null
image: /img/stackql-azure-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_streaming_jobs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_streaming_jobs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.stream_analytics.vw_streaming_jobs" /></td></tr>
</tbody></table>

## Fields

See the SQL Definition (view DDL) for fields returned by this view.

## SQL Definition

<Tabs
defaultValue="Sqlite3"
values={[
{ label: 'Sqlite3', value: 'Sqlite3' },
{ label: 'Postgres', value: 'Postgres' }
]}
>
<TabItem value="Sqlite3">

```sql
SELECT
location as location,
tags as tags,
identity as identity,
JSON_EXTRACT(properties, '$.sku') as "sku",
JSON_EXTRACT(properties, '$.jobId') as "job_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.jobState') as "job_state",
JSON_EXTRACT(properties, '$.jobType') as "job_type",
JSON_EXTRACT(properties, '$.outputStartMode') as "output_start_mode",
JSON_EXTRACT(properties, '$.outputStartTime') as "output_start_time",
JSON_EXTRACT(properties, '$.lastOutputEventTime') as "last_output_event_time",
JSON_EXTRACT(properties, '$.eventsOutOfOrderPolicy') as "events_out_of_order_policy",
JSON_EXTRACT(properties, '$.outputErrorPolicy') as "output_error_policy",
JSON_EXTRACT(properties, '$.eventsOutOfOrderMaxDelayInSeconds') as "events_out_of_order_max_delay_in_seconds",
JSON_EXTRACT(properties, '$.eventsLateArrivalMaxDelayInSeconds') as "events_late_arrival_max_delay_in_seconds",
JSON_EXTRACT(properties, '$.dataLocale') as "data_locale",
JSON_EXTRACT(properties, '$.compatibilityLevel') as "compatibility_level",
JSON_EXTRACT(properties, '$.createdDate') as "created_date",
JSON_EXTRACT(properties, '$.inputs') as "inputs",
JSON_EXTRACT(properties, '$.transformation') as "transformation",
JSON_EXTRACT(properties, '$.outputs') as "outputs",
JSON_EXTRACT(properties, '$.functions') as "functions",
JSON_EXTRACT(properties, '$.etag') as "etag",
JSON_EXTRACT(properties, '$.jobStorageAccount') as "job_storage_account",
JSON_EXTRACT(properties, '$.contentStoragePolicy') as "content_storage_policy",
JSON_EXTRACT(properties, '$.cluster') as "cluster",
subscriptionId,
resourceGroupName,
jobName
FROM azure.stream_analytics.streaming_jobs
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
identity as identity,
json_extract_path_text(properties, '$.sku') as "sku",
json_extract_path_text(properties, '$.jobId') as "job_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.jobState') as "job_state",
json_extract_path_text(properties, '$.jobType') as "job_type",
json_extract_path_text(properties, '$.outputStartMode') as "output_start_mode",
json_extract_path_text(properties, '$.outputStartTime') as "output_start_time",
json_extract_path_text(properties, '$.lastOutputEventTime') as "last_output_event_time",
json_extract_path_text(properties, '$.eventsOutOfOrderPolicy') as "events_out_of_order_policy",
json_extract_path_text(properties, '$.outputErrorPolicy') as "output_error_policy",
json_extract_path_text(properties, '$.eventsOutOfOrderMaxDelayInSeconds') as "events_out_of_order_max_delay_in_seconds",
json_extract_path_text(properties, '$.eventsLateArrivalMaxDelayInSeconds') as "events_late_arrival_max_delay_in_seconds",
json_extract_path_text(properties, '$.dataLocale') as "data_locale",
json_extract_path_text(properties, '$.compatibilityLevel') as "compatibility_level",
json_extract_path_text(properties, '$.createdDate') as "created_date",
json_extract_path_text(properties, '$.inputs') as "inputs",
json_extract_path_text(properties, '$.transformation') as "transformation",
json_extract_path_text(properties, '$.outputs') as "outputs",
json_extract_path_text(properties, '$.functions') as "functions",
json_extract_path_text(properties, '$.etag') as "etag",
json_extract_path_text(properties, '$.jobStorageAccount') as "job_storage_account",
json_extract_path_text(properties, '$.contentStoragePolicy') as "content_storage_policy",
json_extract_path_text(properties, '$.cluster') as "cluster",
subscriptionId,
resourceGroupName,
jobName
FROM azure.stream_analytics.streaming_jobs
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
