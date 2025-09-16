--- 
title: vw_wait_statistics
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_wait_statistics
  - maria_db
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

Creates, updates, deletes, gets or lists a <code>vw_wait_statistics</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_wait_statistics</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.maria_db.vw_wait_statistics" /></td></tr>
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
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.endTime') as "end_time",
JSON_EXTRACT(properties, '$.eventName') as "event_name",
JSON_EXTRACT(properties, '$.eventTypeName') as "event_type_name",
JSON_EXTRACT(properties, '$.queryId') as "query_id",
JSON_EXTRACT(properties, '$.databaseName') as "database_name",
JSON_EXTRACT(properties, '$.userId') as "user_id",
JSON_EXTRACT(properties, '$.count') as "count",
JSON_EXTRACT(properties, '$.totalTimeInMs') as "total_time_in_ms",
subscriptionId,
resourceGroupName,
serverName,
waitStatisticsId
FROM azure.maria_db.wait_statistics
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me' AND waitStatisticsId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.endTime') as "end_time",
json_extract_path_text(properties, '$.eventName') as "event_name",
json_extract_path_text(properties, '$.eventTypeName') as "event_type_name",
json_extract_path_text(properties, '$.queryId') as "query_id",
json_extract_path_text(properties, '$.databaseName') as "database_name",
json_extract_path_text(properties, '$.userId') as "user_id",
json_extract_path_text(properties, '$.count') as "count",
json_extract_path_text(properties, '$.totalTimeInMs') as "total_time_in_ms",
subscriptionId,
resourceGroupName,
serverName,
waitStatisticsId
FROM azure.maria_db.wait_statistics
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me' AND waitStatisticsId = 'replace-me';
```

</TabItem>
</Tabs>
