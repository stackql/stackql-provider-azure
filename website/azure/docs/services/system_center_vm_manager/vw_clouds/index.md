--- 
title: vw_clouds
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_clouds
  - system_center_vm_manager
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

Creates, updates, deletes, gets or lists a <code>vw_clouds</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_clouds</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.system_center_vm_manager.vw_clouds" /></td></tr>
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
extendedLocation as extended_location,
tags as tags,
JSON_EXTRACT(properties, '$.inventoryItemId') as "inventory_item_id",
JSON_EXTRACT(properties, '$.uuid') as "uuid",
JSON_EXTRACT(properties, '$.vmmServerId') as "vmm_server_id",
JSON_EXTRACT(properties, '$.cloudName') as "cloud_name",
JSON_EXTRACT(properties, '$.cloudCapacity') as "cloud_capacity",
JSON_EXTRACT(properties, '$.storageQoSPolicies') as "storage_qo_s_policies",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
cloudResourceName
FROM azure.system_center_vm_manager.clouds
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
extendedLocation as extended_location,
tags as tags,
json_extract_path_text(properties, '$.inventoryItemId') as "inventory_item_id",
json_extract_path_text(properties, '$.uuid') as "uuid",
json_extract_path_text(properties, '$.vmmServerId') as "vmm_server_id",
json_extract_path_text(properties, '$.cloudName') as "cloud_name",
json_extract_path_text(properties, '$.cloudCapacity') as "cloud_capacity",
json_extract_path_text(properties, '$.storageQoSPolicies') as "storage_qo_s_policies",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
cloudResourceName
FROM azure.system_center_vm_manager.clouds
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
