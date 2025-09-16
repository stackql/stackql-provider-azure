--- 
title: vw_data_transfer_jobs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_data_transfer_jobs
  - cosmos_db
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

Creates, updates, deletes, gets or lists a <code>vw_data_transfer_jobs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_data_transfer_jobs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cosmos_db.vw_data_transfer_jobs" /></td></tr>
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
id as id,
name as name,
type as type,
JSON_EXTRACT(properties, '$.jobName') as "job_name",
JSON_EXTRACT(properties, '$.source') as "source",
JSON_EXTRACT(properties, '$.destination') as "destination",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.processedCount') as "processed_count",
JSON_EXTRACT(properties, '$.totalCount') as "total_count",
JSON_EXTRACT(properties, '$.lastUpdatedUtcTime') as "last_updated_utc_time",
JSON_EXTRACT(properties, '$.workerCount') as "worker_count",
JSON_EXTRACT(properties, '$.error') as "error",
JSON_EXTRACT(properties, '$.duration') as "duration",
JSON_EXTRACT(properties, '$.mode') as "mode",
subscriptionId,
resourceGroupName,
accountName,
jobName
FROM azure.cosmos_db.data_transfer_jobs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.jobName') as "job_name",
json_extract_path_text(properties, '$.source') as "source",
json_extract_path_text(properties, '$.destination') as "destination",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.processedCount') as "processed_count",
json_extract_path_text(properties, '$.totalCount') as "total_count",
json_extract_path_text(properties, '$.lastUpdatedUtcTime') as "last_updated_utc_time",
json_extract_path_text(properties, '$.workerCount') as "worker_count",
json_extract_path_text(properties, '$.error') as "error",
json_extract_path_text(properties, '$.duration') as "duration",
json_extract_path_text(properties, '$.mode') as "mode",
subscriptionId,
resourceGroupName,
accountName,
jobName
FROM azure.cosmos_db.data_transfer_jobs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
