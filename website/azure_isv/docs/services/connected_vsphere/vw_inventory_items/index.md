--- 
title: vw_inventory_items
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_inventory_items
  - connected_vsphere
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_inventory_items</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_inventory_items</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.connected_vsphere.vw_inventory_items" /></td></tr>
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
kind as kind,
JSON_EXTRACT(properties, '$.inventoryType') as "inventory_type",
JSON_EXTRACT(properties, '$.managedResourceId') as "managed_resource_id",
JSON_EXTRACT(properties, '$.moRefId') as "mo_ref_id",
JSON_EXTRACT(properties, '$.moName') as "mo_name",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
vcenterName,
inventoryItemName
FROM azure_isv.connected_vsphere.inventory_items
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vcenterName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
kind as kind,
json_extract_path_text(properties, '$.inventoryType') as "inventory_type",
json_extract_path_text(properties, '$.managedResourceId') as "managed_resource_id",
json_extract_path_text(properties, '$.moRefId') as "mo_ref_id",
json_extract_path_text(properties, '$.moName') as "mo_name",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
vcenterName,
inventoryItemName
FROM azure_isv.connected_vsphere.inventory_items
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vcenterName = 'replace-me';
```

</TabItem>
</Tabs>
