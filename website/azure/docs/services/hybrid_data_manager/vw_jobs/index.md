--- 
title: vw_jobs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_jobs
  - hybrid_data_manager
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

Creates, updates, deletes, gets or lists a <code>vw_jobs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_jobs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hybrid_data_manager.vw_jobs" /></td></tr>
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
status as status,
startTime as start_time,
endTime as end_time,
error as error,
JSON_EXTRACT(properties, '$.isCancellable') as "is_cancellable",
JSON_EXTRACT(properties, '$.bytesProcessed') as "bytes_processed",
JSON_EXTRACT(properties, '$.itemsProcessed') as "items_processed",
JSON_EXTRACT(properties, '$.totalBytesToProcess') as "total_bytes_to_process",
JSON_EXTRACT(properties, '$.totalItemsToProcess') as "total_items_to_process",
JSON_EXTRACT(properties, '$.details') as "details",
JSON_EXTRACT(properties, '$.dataSourceName') as "data_source_name",
JSON_EXTRACT(properties, '$.dataSinkName') as "data_sink_name",
subscriptionId,
resourceGroupName,
dataManagerName,
dataServiceName,
jobDefinitionName,
jobId
FROM azure.hybrid_data_manager.jobs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND dataManagerName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
status as status,
startTime as start_time,
endTime as end_time,
error as error,
json_extract_path_text(properties, '$.isCancellable') as "is_cancellable",
json_extract_path_text(properties, '$.bytesProcessed') as "bytes_processed",
json_extract_path_text(properties, '$.itemsProcessed') as "items_processed",
json_extract_path_text(properties, '$.totalBytesToProcess') as "total_bytes_to_process",
json_extract_path_text(properties, '$.totalItemsToProcess') as "total_items_to_process",
json_extract_path_text(properties, '$.details') as "details",
json_extract_path_text(properties, '$.dataSourceName') as "data_source_name",
json_extract_path_text(properties, '$.dataSinkName') as "data_sink_name",
subscriptionId,
resourceGroupName,
dataManagerName,
dataServiceName,
jobDefinitionName,
jobId
FROM azure.hybrid_data_manager.jobs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND dataManagerName = 'replace-me';
```

</TabItem>
</Tabs>
