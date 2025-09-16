--- 
title: vw_apply_updates_parents
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_apply_updates_parents
  - maintenance
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

Creates, updates, deletes, gets or lists a <code>vw_apply_updates_parents</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_apply_updates_parents</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.maintenance.vw_apply_updates_parents" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.resourceId') as "resource_id",
JSON_EXTRACT(properties, '$.lastUpdateTime') as "last_update_time",
subscriptionId,
resourceGroupName,
providerName,
resourceParentType,
resourceParentName,
resourceType,
resourceName,
applyUpdateName
FROM azure.maintenance.apply_updates_parents
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND providerName = 'replace-me' AND resourceParentType = 'replace-me' AND resourceParentName = 'replace-me' AND resourceType = 'replace-me' AND resourceName = 'replace-me' AND applyUpdateName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.resourceId') as "resource_id",
json_extract_path_text(properties, '$.lastUpdateTime') as "last_update_time",
subscriptionId,
resourceGroupName,
providerName,
resourceParentType,
resourceParentName,
resourceType,
resourceName,
applyUpdateName
FROM azure.maintenance.apply_updates_parents
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND providerName = 'replace-me' AND resourceParentType = 'replace-me' AND resourceParentName = 'replace-me' AND resourceType = 'replace-me' AND resourceName = 'replace-me' AND applyUpdateName = 'replace-me';
```

</TabItem>
</Tabs>
