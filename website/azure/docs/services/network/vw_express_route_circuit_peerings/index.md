--- 
title: vw_express_route_circuit_peerings
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_express_route_circuit_peerings
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

Creates, updates, deletes, gets or lists a <code>vw_express_route_circuit_peerings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_express_route_circuit_peerings</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_express_route_circuit_peerings" /></td></tr>
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
JSON_EXTRACT(properties, '$.peeringType') as "peering_type",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.azureASN') as "azure_asn",
JSON_EXTRACT(properties, '$.peerASN') as "peer_asn",
JSON_EXTRACT(properties, '$.primaryPeerAddressPrefix') as "primary_peer_address_prefix",
JSON_EXTRACT(properties, '$.secondaryPeerAddressPrefix') as "secondary_peer_address_prefix",
JSON_EXTRACT(properties, '$.primaryAzurePort') as "primary_azure_port",
JSON_EXTRACT(properties, '$.secondaryAzurePort') as "secondary_azure_port",
JSON_EXTRACT(properties, '$.sharedKey') as "shared_key",
JSON_EXTRACT(properties, '$.vlanId') as "vlan_id",
JSON_EXTRACT(properties, '$.microsoftPeeringConfig') as "microsoft_peering_config",
JSON_EXTRACT(properties, '$.stats') as "stats",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.gatewayManagerEtag') as "gateway_manager_etag",
JSON_EXTRACT(properties, '$.lastModifiedBy') as "last_modified_by",
JSON_EXTRACT(properties, '$.routeFilter') as "route_filter",
JSON_EXTRACT(properties, '$.ipv6PeeringConfig') as "ipv6_peering_config",
JSON_EXTRACT(properties, '$.expressRouteConnection') as "express_route_connection",
JSON_EXTRACT(properties, '$.connections') as "connections",
JSON_EXTRACT(properties, '$.peeredConnections') as "peered_connections",
subscriptionId,
resourceGroupName,
circuitName,
peeringName
FROM azure.network.express_route_circuit_peerings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND circuitName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
type as type,
json_extract_path_text(properties, '$.peeringType') as "peering_type",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.azureASN') as "azure_asn",
json_extract_path_text(properties, '$.peerASN') as "peer_asn",
json_extract_path_text(properties, '$.primaryPeerAddressPrefix') as "primary_peer_address_prefix",
json_extract_path_text(properties, '$.secondaryPeerAddressPrefix') as "secondary_peer_address_prefix",
json_extract_path_text(properties, '$.primaryAzurePort') as "primary_azure_port",
json_extract_path_text(properties, '$.secondaryAzurePort') as "secondary_azure_port",
json_extract_path_text(properties, '$.sharedKey') as "shared_key",
json_extract_path_text(properties, '$.vlanId') as "vlan_id",
json_extract_path_text(properties, '$.microsoftPeeringConfig') as "microsoft_peering_config",
json_extract_path_text(properties, '$.stats') as "stats",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.gatewayManagerEtag') as "gateway_manager_etag",
json_extract_path_text(properties, '$.lastModifiedBy') as "last_modified_by",
json_extract_path_text(properties, '$.routeFilter') as "route_filter",
json_extract_path_text(properties, '$.ipv6PeeringConfig') as "ipv6_peering_config",
json_extract_path_text(properties, '$.expressRouteConnection') as "express_route_connection",
json_extract_path_text(properties, '$.connections') as "connections",
json_extract_path_text(properties, '$.peeredConnections') as "peered_connections",
subscriptionId,
resourceGroupName,
circuitName,
peeringName
FROM azure.network.express_route_circuit_peerings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND circuitName = 'replace-me';
```

</TabItem>
</Tabs>
