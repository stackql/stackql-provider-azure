--- 
title: vw_virtual_hubs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_hubs
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_hubs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_hubs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_virtual_hubs" /></td></tr>
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
kind as kind,
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.virtualWan') as "virtual_wan",
JSON_EXTRACT(properties, '$.vpnGateway') as "vpn_gateway",
JSON_EXTRACT(properties, '$.p2SVpnGateway') as "p2_s_vpn_gateway",
JSON_EXTRACT(properties, '$.expressRouteGateway') as "express_route_gateway",
JSON_EXTRACT(properties, '$.azureFirewall') as "azure_firewall",
JSON_EXTRACT(properties, '$.securityPartnerProvider') as "security_partner_provider",
JSON_EXTRACT(properties, '$.addressPrefix') as "address_prefix",
JSON_EXTRACT(properties, '$.routeTable') as "route_table",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.securityProviderName') as "security_provider_name",
JSON_EXTRACT(properties, '$.virtualHubRouteTableV2s') as "virtual_hub_route_table_v2s",
JSON_EXTRACT(properties, '$.sku') as "sku",
JSON_EXTRACT(properties, '$.routingState') as "routing_state",
JSON_EXTRACT(properties, '$.bgpConnections') as "bgp_connections",
JSON_EXTRACT(properties, '$.ipConfigurations') as "ip_configurations",
JSON_EXTRACT(properties, '$.routeMaps') as "route_maps",
JSON_EXTRACT(properties, '$.virtualRouterAsn') as "virtual_router_asn",
JSON_EXTRACT(properties, '$.virtualRouterIps') as "virtual_router_ips",
JSON_EXTRACT(properties, '$.allowBranchToBranchTraffic') as "allow_branch_to_branch_traffic",
JSON_EXTRACT(properties, '$.preferredRoutingGateway') as "preferred_routing_gateway",
JSON_EXTRACT(properties, '$.hubRoutingPreference') as "hub_routing_preference",
JSON_EXTRACT(properties, '$.virtualRouterAutoScaleConfiguration') as "virtual_router_auto_scale_configuration",
subscriptionId,
resourceGroupName,
virtualHubName
FROM azure.network.virtual_hubs
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
kind as kind,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.virtualWan') as "virtual_wan",
json_extract_path_text(properties, '$.vpnGateway') as "vpn_gateway",
json_extract_path_text(properties, '$.p2SVpnGateway') as "p2_s_vpn_gateway",
json_extract_path_text(properties, '$.expressRouteGateway') as "express_route_gateway",
json_extract_path_text(properties, '$.azureFirewall') as "azure_firewall",
json_extract_path_text(properties, '$.securityPartnerProvider') as "security_partner_provider",
json_extract_path_text(properties, '$.addressPrefix') as "address_prefix",
json_extract_path_text(properties, '$.routeTable') as "route_table",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.securityProviderName') as "security_provider_name",
json_extract_path_text(properties, '$.virtualHubRouteTableV2s') as "virtual_hub_route_table_v2s",
json_extract_path_text(properties, '$.sku') as "sku",
json_extract_path_text(properties, '$.routingState') as "routing_state",
json_extract_path_text(properties, '$.bgpConnections') as "bgp_connections",
json_extract_path_text(properties, '$.ipConfigurations') as "ip_configurations",
json_extract_path_text(properties, '$.routeMaps') as "route_maps",
json_extract_path_text(properties, '$.virtualRouterAsn') as "virtual_router_asn",
json_extract_path_text(properties, '$.virtualRouterIps') as "virtual_router_ips",
json_extract_path_text(properties, '$.allowBranchToBranchTraffic') as "allow_branch_to_branch_traffic",
json_extract_path_text(properties, '$.preferredRoutingGateway') as "preferred_routing_gateway",
json_extract_path_text(properties, '$.hubRoutingPreference') as "hub_routing_preference",
json_extract_path_text(properties, '$.virtualRouterAutoScaleConfiguration') as "virtual_router_auto_scale_configuration",
subscriptionId,
resourceGroupName,
virtualHubName
FROM azure.network.virtual_hubs
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
