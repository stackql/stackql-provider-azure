--- 
title: vw_workload_classifiers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_workload_classifiers
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

Creates, updates, deletes, gets or lists a <code>vw_workload_classifiers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_workload_classifiers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_workload_classifiers" /></td></tr>
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
JSON_EXTRACT(properties, '$.memberName') as "member_name",
JSON_EXTRACT(properties, '$.label') as "label",
JSON_EXTRACT(properties, '$.context') as "context",
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.endTime') as "end_time",
JSON_EXTRACT(properties, '$.importance') as "importance",
subscriptionId,
resourceGroupName,
serverName,
databaseName,
workloadGroupName,
workloadClassifierName
FROM azure.sql.workload_classifiers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me' AND databaseName = 'replace-me' AND workloadGroupName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.memberName') as "member_name",
json_extract_path_text(properties, '$.label') as "label",
json_extract_path_text(properties, '$.context') as "context",
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.endTime') as "end_time",
json_extract_path_text(properties, '$.importance') as "importance",
subscriptionId,
resourceGroupName,
serverName,
databaseName,
workloadGroupName,
workloadClassifierName
FROM azure.sql.workload_classifiers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me' AND databaseName = 'replace-me' AND workloadGroupName = 'replace-me';
```

</TabItem>
</Tabs>
