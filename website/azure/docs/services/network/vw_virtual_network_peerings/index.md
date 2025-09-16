--- 
title: vw_virtual_network_peerings
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_network_peerings
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_network_peerings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_network_peerings</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_virtual_network_peerings" /></td></tr>
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
JSON_EXTRACT(properties, '$.allowVirtualNetworkAccess') as "allow_virtual_network_access",
JSON_EXTRACT(properties, '$.allowForwardedTraffic') as "allow_forwarded_traffic",
JSON_EXTRACT(properties, '$.allowGatewayTransit') as "allow_gateway_transit",
JSON_EXTRACT(properties, '$.useRemoteGateways') as "use_remote_gateways",
JSON_EXTRACT(properties, '$.remoteVirtualNetwork') as "remote_virtual_network",
JSON_EXTRACT(properties, '$.localAddressSpace') as "local_address_space",
JSON_EXTRACT(properties, '$.localVirtualNetworkAddressSpace') as "local_virtual_network_address_space",
JSON_EXTRACT(properties, '$.remoteAddressSpace') as "remote_address_space",
JSON_EXTRACT(properties, '$.remoteVirtualNetworkAddressSpace') as "remote_virtual_network_address_space",
JSON_EXTRACT(properties, '$.remoteBgpCommunities') as "remote_bgp_communities",
JSON_EXTRACT(properties, '$.remoteVirtualNetworkEncryption') as "remote_virtual_network_encryption",
JSON_EXTRACT(properties, '$.peeringState') as "peering_state",
JSON_EXTRACT(properties, '$.peeringSyncLevel') as "peering_sync_level",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.doNotVerifyRemoteGateways') as "do_not_verify_remote_gateways",
JSON_EXTRACT(properties, '$.resourceGuid') as "resource_guid",
JSON_EXTRACT(properties, '$.peerCompleteVnets') as "peer_complete_vnets",
JSON_EXTRACT(properties, '$.enableOnlyIPv6Peering') as "enable_only_ipv6_peering",
JSON_EXTRACT(properties, '$.localSubnetNames') as "local_subnet_names",
JSON_EXTRACT(properties, '$.remoteSubnetNames') as "remote_subnet_names",
subscriptionId,
resourceGroupName,
virtualNetworkName,
virtualNetworkPeeringName
FROM azure.network.virtual_network_peerings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND virtualNetworkName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
type as type,
json_extract_path_text(properties, '$.allowVirtualNetworkAccess') as "allow_virtual_network_access",
json_extract_path_text(properties, '$.allowForwardedTraffic') as "allow_forwarded_traffic",
json_extract_path_text(properties, '$.allowGatewayTransit') as "allow_gateway_transit",
json_extract_path_text(properties, '$.useRemoteGateways') as "use_remote_gateways",
json_extract_path_text(properties, '$.remoteVirtualNetwork') as "remote_virtual_network",
json_extract_path_text(properties, '$.localAddressSpace') as "local_address_space",
json_extract_path_text(properties, '$.localVirtualNetworkAddressSpace') as "local_virtual_network_address_space",
json_extract_path_text(properties, '$.remoteAddressSpace') as "remote_address_space",
json_extract_path_text(properties, '$.remoteVirtualNetworkAddressSpace') as "remote_virtual_network_address_space",
json_extract_path_text(properties, '$.remoteBgpCommunities') as "remote_bgp_communities",
json_extract_path_text(properties, '$.remoteVirtualNetworkEncryption') as "remote_virtual_network_encryption",
json_extract_path_text(properties, '$.peeringState') as "peering_state",
json_extract_path_text(properties, '$.peeringSyncLevel') as "peering_sync_level",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.doNotVerifyRemoteGateways') as "do_not_verify_remote_gateways",
json_extract_path_text(properties, '$.resourceGuid') as "resource_guid",
json_extract_path_text(properties, '$.peerCompleteVnets') as "peer_complete_vnets",
json_extract_path_text(properties, '$.enableOnlyIPv6Peering') as "enable_only_ipv6_peering",
json_extract_path_text(properties, '$.localSubnetNames') as "local_subnet_names",
json_extract_path_text(properties, '$.remoteSubnetNames') as "remote_subnet_names",
subscriptionId,
resourceGroupName,
virtualNetworkName,
virtualNetworkPeeringName
FROM azure.network.virtual_network_peerings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND virtualNetworkName = 'replace-me';
```

</TabItem>
</Tabs>
