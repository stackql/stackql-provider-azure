--- 
title: vw_top_query_statistics
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_top_query_statistics
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

Creates, updates, deletes, gets or lists a <code>vw_top_query_statistics</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_top_query_statistics</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.maria_db.vw_top_query_statistics" /></td></tr>
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
JSON_EXTRACT(properties, '$.queryId') as "query_id",
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.endTime') as "end_time",
JSON_EXTRACT(properties, '$.aggregationFunction') as "aggregation_function",
JSON_EXTRACT(properties, '$.databaseNames') as "database_names",
JSON_EXTRACT(properties, '$.queryExecutionCount') as "query_execution_count",
JSON_EXTRACT(properties, '$.metricName') as "metric_name",
JSON_EXTRACT(properties, '$.metricDisplayName') as "metric_display_name",
JSON_EXTRACT(properties, '$.metricValue') as "metric_value",
JSON_EXTRACT(properties, '$.metricValueUnit') as "metric_value_unit",
subscriptionId,
resourceGroupName,
serverName,
queryStatisticId
FROM azure.maria_db.top_query_statistics
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me' AND queryStatisticId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.queryId') as "query_id",
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.endTime') as "end_time",
json_extract_path_text(properties, '$.aggregationFunction') as "aggregation_function",
json_extract_path_text(properties, '$.databaseNames') as "database_names",
json_extract_path_text(properties, '$.queryExecutionCount') as "query_execution_count",
json_extract_path_text(properties, '$.metricName') as "metric_name",
json_extract_path_text(properties, '$.metricDisplayName') as "metric_display_name",
json_extract_path_text(properties, '$.metricValue') as "metric_value",
json_extract_path_text(properties, '$.metricValueUnit') as "metric_value_unit",
subscriptionId,
resourceGroupName,
serverName,
queryStatisticId
FROM azure.maria_db.top_query_statistics
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me' AND queryStatisticId = 'replace-me';
```

</TabItem>
</Tabs>
