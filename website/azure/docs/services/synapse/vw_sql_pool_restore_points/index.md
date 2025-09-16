--- 
title: vw_sql_pool_restore_points
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_sql_pool_restore_points
  - synapse
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

Creates, updates, deletes, gets or lists a <code>vw_sql_pool_restore_points</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_sql_pool_restore_points</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.synapse.vw_sql_pool_restore_points" /></td></tr>
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
JSON_EXTRACT(properties, '$.restorePointType') as "restore_point_type",
JSON_EXTRACT(properties, '$.earliestRestoreDate') as "earliest_restore_date",
JSON_EXTRACT(properties, '$.restorePointCreationDate') as "restore_point_creation_date",
JSON_EXTRACT(properties, '$.restorePointLabel') as "restore_point_label",
subscriptionId,
resourceGroupName,
workspaceName,
sqlPoolName,
restorePointName
FROM azure.synapse.sql_pool_restore_points
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND sqlPoolName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
json_extract_path_text(properties, '$.restorePointType') as "restore_point_type",
json_extract_path_text(properties, '$.earliestRestoreDate') as "earliest_restore_date",
json_extract_path_text(properties, '$.restorePointCreationDate') as "restore_point_creation_date",
json_extract_path_text(properties, '$.restorePointLabel') as "restore_point_label",
subscriptionId,
resourceGroupName,
workspaceName,
sqlPoolName,
restorePointName
FROM azure.synapse.sql_pool_restore_points
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND sqlPoolName = 'replace-me';
```

</TabItem>
</Tabs>
