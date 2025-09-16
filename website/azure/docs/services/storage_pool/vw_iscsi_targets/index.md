--- 
title: vw_iscsi_targets
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_iscsi_targets
  - storage_pool
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

Creates, updates, deletes, gets or lists a <code>vw_iscsi_targets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_iscsi_targets</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage_pool.vw_iscsi_targets" /></td></tr>
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
systemData as system_data,
managedBy as managed_by,
managedByExtended as managed_by_extended,
JSON_EXTRACT(properties, '$.aclMode') as "acl_mode",
JSON_EXTRACT(properties, '$.staticAcls') as "static_acls",
JSON_EXTRACT(properties, '$.luns') as "luns",
JSON_EXTRACT(properties, '$.targetIqn') as "target_iqn",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.endpoints') as "endpoints",
JSON_EXTRACT(properties, '$.port') as "port",
JSON_EXTRACT(properties, '$.sessions') as "sessions",
subscriptionId,
resourceGroupName,
diskPoolName,
iscsiTargetName
FROM azure.storage_pool.iscsi_targets
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND diskPoolName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
managedBy as managed_by,
managedByExtended as managed_by_extended,
json_extract_path_text(properties, '$.aclMode') as "acl_mode",
json_extract_path_text(properties, '$.staticAcls') as "static_acls",
json_extract_path_text(properties, '$.luns') as "luns",
json_extract_path_text(properties, '$.targetIqn') as "target_iqn",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.endpoints') as "endpoints",
json_extract_path_text(properties, '$.port') as "port",
json_extract_path_text(properties, '$.sessions') as "sessions",
subscriptionId,
resourceGroupName,
diskPoolName,
iscsiTargetName
FROM azure.storage_pool.iscsi_targets
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND diskPoolName = 'replace-me';
```

</TabItem>
</Tabs>
