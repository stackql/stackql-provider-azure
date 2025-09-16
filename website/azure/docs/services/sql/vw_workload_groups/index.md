--- 
title: vw_workload_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_workload_groups
  - sql
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

Creates, updates, deletes, gets or lists a <code>vw_workload_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_workload_groups</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_workload_groups" /></td></tr>
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
JSON_EXTRACT(properties, '$.minResourcePercent') as "min_resource_percent",
JSON_EXTRACT(properties, '$.maxResourcePercent') as "max_resource_percent",
JSON_EXTRACT(properties, '$.minResourcePercentPerRequest') as "min_resource_percent_per_request",
JSON_EXTRACT(properties, '$.maxResourcePercentPerRequest') as "max_resource_percent_per_request",
JSON_EXTRACT(properties, '$.importance') as "importance",
JSON_EXTRACT(properties, '$.queryExecutionTimeout') as "query_execution_timeout",
subscriptionId,
resourceGroupName,
serverName,
databaseName,
workloadGroupName
FROM azure.sql.workload_groups
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me' AND databaseName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.minResourcePercent') as "min_resource_percent",
json_extract_path_text(properties, '$.maxResourcePercent') as "max_resource_percent",
json_extract_path_text(properties, '$.minResourcePercentPerRequest') as "min_resource_percent_per_request",
json_extract_path_text(properties, '$.maxResourcePercentPerRequest') as "max_resource_percent_per_request",
json_extract_path_text(properties, '$.importance') as "importance",
json_extract_path_text(properties, '$.queryExecutionTimeout') as "query_execution_timeout",
subscriptionId,
resourceGroupName,
serverName,
databaseName,
workloadGroupName
FROM azure.sql.workload_groups
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me' AND databaseName = 'replace-me';
```

</TabItem>
</Tabs>
