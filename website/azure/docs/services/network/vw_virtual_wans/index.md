--- 
title: vw_virtual_wans
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_wans
  - network
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_wans</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_wans</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_virtual_wans" /></td></tr>
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
etag as etag,
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.disableVpnEncryption') as "disable_vpn_encryption",
JSON_EXTRACT(properties, '$.virtualHubs') as "virtual_hubs",
JSON_EXTRACT(properties, '$.vpnSites') as "vpn_sites",
JSON_EXTRACT(properties, '$.allowBranchToBranchTraffic') as "allow_branch_to_branch_traffic",
JSON_EXTRACT(properties, '$.allowVnetToVnetTraffic') as "allow_vnet_to_vnet_traffic",
JSON_EXTRACT(properties, '$.office365LocalBreakoutCategory') as "office365_local_breakout_category",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.type') as "type",
subscriptionId,
resourceGroupName,
VirtualWANName
FROM azure.network.virtual_wans
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.disableVpnEncryption') as "disable_vpn_encryption",
json_extract_path_text(properties, '$.virtualHubs') as "virtual_hubs",
json_extract_path_text(properties, '$.vpnSites') as "vpn_sites",
json_extract_path_text(properties, '$.allowBranchToBranchTraffic') as "allow_branch_to_branch_traffic",
json_extract_path_text(properties, '$.allowVnetToVnetTraffic') as "allow_vnet_to_vnet_traffic",
json_extract_path_text(properties, '$.office365LocalBreakoutCategory') as "office365_local_breakout_category",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.type') as "type",
subscriptionId,
resourceGroupName,
VirtualWANName
FROM azure.network.virtual_wans
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
