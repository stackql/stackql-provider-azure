--- 
title: vw_sql_pool_maintenance_windows
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_sql_pool_maintenance_windows
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

Creates, updates, deletes, gets or lists a <code>vw_sql_pool_maintenance_windows</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_sql_pool_maintenance_windows</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.synapse.vw_sql_pool_maintenance_windows" /></td></tr>
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
JSON_EXTRACT(properties, '$.timeRanges') as "time_ranges",
subscriptionId,
resourceGroupName,
workspaceName,
sqlPoolName,
maintenanceWindowName
FROM azure.synapse.sql_pool_maintenance_windows
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND sqlPoolName = 'replace-me' AND maintenanceWindowName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.timeRanges') as "time_ranges",
subscriptionId,
resourceGroupName,
workspaceName,
sqlPoolName,
maintenanceWindowName
FROM azure.synapse.sql_pool_maintenance_windows
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND sqlPoolName = 'replace-me' AND maintenanceWindowName = 'replace-me';
```

</TabItem>
</Tabs>
