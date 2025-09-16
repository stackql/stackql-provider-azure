--- 
title: vw_vnet_peerings
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_vnet_peerings
  - databricks
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

Creates, updates, deletes, gets or lists a <code>vw_vnet_peerings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_vnet_peerings</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.databricks.vw_vnet_peerings" /></td></tr>
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
JSON_EXTRACT(properties, '$.allowVirtualNetworkAccess') as "allow_virtual_network_access",
JSON_EXTRACT(properties, '$.allowForwardedTraffic') as "allow_forwarded_traffic",
JSON_EXTRACT(properties, '$.allowGatewayTransit') as "allow_gateway_transit",
JSON_EXTRACT(properties, '$.useRemoteGateways') as "use_remote_gateways",
JSON_EXTRACT(properties, '$.databricksVirtualNetwork') as "databricks_virtual_network",
JSON_EXTRACT(properties, '$.databricksAddressSpace') as "databricks_address_space",
JSON_EXTRACT(properties, '$.remoteVirtualNetwork') as "remote_virtual_network",
JSON_EXTRACT(properties, '$.remoteAddressSpace') as "remote_address_space",
JSON_EXTRACT(properties, '$.peeringState') as "peering_state",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
workspaceName,
peeringName
FROM azure_isv.databricks.vnet_peerings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.allowVirtualNetworkAccess') as "allow_virtual_network_access",
json_extract_path_text(properties, '$.allowForwardedTraffic') as "allow_forwarded_traffic",
json_extract_path_text(properties, '$.allowGatewayTransit') as "allow_gateway_transit",
json_extract_path_text(properties, '$.useRemoteGateways') as "use_remote_gateways",
json_extract_path_text(properties, '$.databricksVirtualNetwork') as "databricks_virtual_network",
json_extract_path_text(properties, '$.databricksAddressSpace') as "databricks_address_space",
json_extract_path_text(properties, '$.remoteVirtualNetwork') as "remote_virtual_network",
json_extract_path_text(properties, '$.remoteAddressSpace') as "remote_address_space",
json_extract_path_text(properties, '$.peeringState') as "peering_state",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
workspaceName,
peeringName
FROM azure_isv.databricks.vnet_peerings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
