--- 
title: vw_virtual_network_gateways
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_network_gateways
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_network_gateways</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_network_gateways</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_virtual_network_gateways" /></td></tr>
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
extendedLocation as extended_location,
etag as etag,
identity as identity,
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.autoScaleConfiguration') as "auto_scale_configuration",
JSON_EXTRACT(properties, '$.ipConfigurations') as "ip_configurations",
JSON_EXTRACT(properties, '$.gatewayType') as "gateway_type",
JSON_EXTRACT(properties, '$.vpnType') as "vpn_type",
JSON_EXTRACT(properties, '$.vpnGatewayGeneration') as "vpn_gateway_generation",
JSON_EXTRACT(properties, '$.enableBgp') as "enable_bgp",
JSON_EXTRACT(properties, '$.enablePrivateIpAddress') as "enable_private_ip_address",
JSON_EXTRACT(properties, '$.activeActive') as "active_active",
JSON_EXTRACT(properties, '$.disableIPSecReplayProtection') as "disable_ip_sec_replay_protection",
JSON_EXTRACT(properties, '$.gatewayDefaultSite') as "gateway_default_site",
JSON_EXTRACT(properties, '$.sku') as "sku",
JSON_EXTRACT(properties, '$.vpnClientConfiguration') as "vpn_client_configuration",
JSON_EXTRACT(properties, '$.virtualNetworkGatewayPolicyGroups') as "virtual_network_gateway_policy_groups",
JSON_EXTRACT(properties, '$.bgpSettings') as "bgp_settings",
JSON_EXTRACT(properties, '$.customRoutes') as "custom_routes",
JSON_EXTRACT(properties, '$.resourceGuid') as "resource_guid",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.enableDnsForwarding') as "enable_dns_forwarding",
JSON_EXTRACT(properties, '$.inboundDnsForwardingEndpoint') as "inbound_dns_forwarding_endpoint",
JSON_EXTRACT(properties, '$.vNetExtendedLocationResourceId') as "vnet_extended_location_resource_id",
JSON_EXTRACT(properties, '$.natRules') as "nat_rules",
JSON_EXTRACT(properties, '$.enableBgpRouteTranslationForNat') as "enable_bgp_route_translation_for_nat",
JSON_EXTRACT(properties, '$.allowVirtualWanTraffic') as "allow_virtual_wan_traffic",
JSON_EXTRACT(properties, '$.allowRemoteVnetTraffic') as "allow_remote_vnet_traffic",
JSON_EXTRACT(properties, '$.adminState') as "admin_state",
JSON_EXTRACT(properties, '$.resiliencyModel') as "resiliency_model",
subscriptionId,
resourceGroupName,
virtualNetworkGatewayName
FROM azure.network.virtual_network_gateways
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
extendedLocation as extended_location,
etag as etag,
identity as identity,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.autoScaleConfiguration') as "auto_scale_configuration",
json_extract_path_text(properties, '$.ipConfigurations') as "ip_configurations",
json_extract_path_text(properties, '$.gatewayType') as "gateway_type",
json_extract_path_text(properties, '$.vpnType') as "vpn_type",
json_extract_path_text(properties, '$.vpnGatewayGeneration') as "vpn_gateway_generation",
json_extract_path_text(properties, '$.enableBgp') as "enable_bgp",
json_extract_path_text(properties, '$.enablePrivateIpAddress') as "enable_private_ip_address",
json_extract_path_text(properties, '$.activeActive') as "active_active",
json_extract_path_text(properties, '$.disableIPSecReplayProtection') as "disable_ip_sec_replay_protection",
json_extract_path_text(properties, '$.gatewayDefaultSite') as "gateway_default_site",
json_extract_path_text(properties, '$.sku') as "sku",
json_extract_path_text(properties, '$.vpnClientConfiguration') as "vpn_client_configuration",
json_extract_path_text(properties, '$.virtualNetworkGatewayPolicyGroups') as "virtual_network_gateway_policy_groups",
json_extract_path_text(properties, '$.bgpSettings') as "bgp_settings",
json_extract_path_text(properties, '$.customRoutes') as "custom_routes",
json_extract_path_text(properties, '$.resourceGuid') as "resource_guid",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.enableDnsForwarding') as "enable_dns_forwarding",
json_extract_path_text(properties, '$.inboundDnsForwardingEndpoint') as "inbound_dns_forwarding_endpoint",
json_extract_path_text(properties, '$.vNetExtendedLocationResourceId') as "vnet_extended_location_resource_id",
json_extract_path_text(properties, '$.natRules') as "nat_rules",
json_extract_path_text(properties, '$.enableBgpRouteTranslationForNat') as "enable_bgp_route_translation_for_nat",
json_extract_path_text(properties, '$.allowVirtualWanTraffic') as "allow_virtual_wan_traffic",
json_extract_path_text(properties, '$.allowRemoteVnetTraffic') as "allow_remote_vnet_traffic",
json_extract_path_text(properties, '$.adminState') as "admin_state",
json_extract_path_text(properties, '$.resiliencyModel') as "resiliency_model",
subscriptionId,
resourceGroupName,
virtualNetworkGatewayName
FROM azure.network.virtual_network_gateways
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me';
```

</TabItem>
</Tabs>
