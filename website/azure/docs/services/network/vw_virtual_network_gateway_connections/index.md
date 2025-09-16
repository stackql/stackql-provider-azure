--- 
title: vw_virtual_network_gateway_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_network_gateway_connections
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_network_gateway_connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_network_gateway_connections</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_virtual_network_gateway_connections" /></td></tr>
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
JSON_EXTRACT(properties, '$.authorizationKey') as "authorization_key",
JSON_EXTRACT(properties, '$.virtualNetworkGateway1') as "virtual_network_gateway1",
JSON_EXTRACT(properties, '$.virtualNetworkGateway2') as "virtual_network_gateway2",
JSON_EXTRACT(properties, '$.localNetworkGateway2') as "local_network_gateway2",
JSON_EXTRACT(properties, '$.ingressNatRules') as "ingress_nat_rules",
JSON_EXTRACT(properties, '$.egressNatRules') as "egress_nat_rules",
JSON_EXTRACT(properties, '$.connectionType') as "connection_type",
JSON_EXTRACT(properties, '$.connectionProtocol') as "connection_protocol",
JSON_EXTRACT(properties, '$.routingWeight') as "routing_weight",
JSON_EXTRACT(properties, '$.dpdTimeoutSeconds') as "dpd_timeout_seconds",
JSON_EXTRACT(properties, '$.connectionMode') as "connection_mode",
JSON_EXTRACT(properties, '$.sharedKey') as "shared_key",
JSON_EXTRACT(properties, '$.connectionStatus') as "connection_status",
JSON_EXTRACT(properties, '$.tunnelConnectionStatus') as "tunnel_connection_status",
JSON_EXTRACT(properties, '$.egressBytesTransferred') as "egress_bytes_transferred",
JSON_EXTRACT(properties, '$.ingressBytesTransferred') as "ingress_bytes_transferred",
JSON_EXTRACT(properties, '$.peer') as "peer",
JSON_EXTRACT(properties, '$.enableBgp') as "enable_bgp",
JSON_EXTRACT(properties, '$.gatewayCustomBgpIpAddresses') as "gateway_custom_bgp_ip_addresses",
JSON_EXTRACT(properties, '$.useLocalAzureIpAddress') as "use_local_azure_ip_address",
JSON_EXTRACT(properties, '$.usePolicyBasedTrafficSelectors') as "use_policy_based_traffic_selectors",
JSON_EXTRACT(properties, '$.ipsecPolicies') as "ipsec_policies",
JSON_EXTRACT(properties, '$.trafficSelectorPolicies') as "traffic_selector_policies",
JSON_EXTRACT(properties, '$.resourceGuid') as "resource_guid",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.expressRouteGatewayBypass') as "express_route_gateway_bypass",
JSON_EXTRACT(properties, '$.enablePrivateLinkFastPath') as "enable_private_link_fast_path",
subscriptionId,
resourceGroupName,
virtualNetworkGatewayConnectionName
FROM azure.network.virtual_network_gateway_connections
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me';
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
json_extract_path_text(properties, '$.authorizationKey') as "authorization_key",
json_extract_path_text(properties, '$.virtualNetworkGateway1') as "virtual_network_gateway1",
json_extract_path_text(properties, '$.virtualNetworkGateway2') as "virtual_network_gateway2",
json_extract_path_text(properties, '$.localNetworkGateway2') as "local_network_gateway2",
json_extract_path_text(properties, '$.ingressNatRules') as "ingress_nat_rules",
json_extract_path_text(properties, '$.egressNatRules') as "egress_nat_rules",
json_extract_path_text(properties, '$.connectionType') as "connection_type",
json_extract_path_text(properties, '$.connectionProtocol') as "connection_protocol",
json_extract_path_text(properties, '$.routingWeight') as "routing_weight",
json_extract_path_text(properties, '$.dpdTimeoutSeconds') as "dpd_timeout_seconds",
json_extract_path_text(properties, '$.connectionMode') as "connection_mode",
json_extract_path_text(properties, '$.sharedKey') as "shared_key",
json_extract_path_text(properties, '$.connectionStatus') as "connection_status",
json_extract_path_text(properties, '$.tunnelConnectionStatus') as "tunnel_connection_status",
json_extract_path_text(properties, '$.egressBytesTransferred') as "egress_bytes_transferred",
json_extract_path_text(properties, '$.ingressBytesTransferred') as "ingress_bytes_transferred",
json_extract_path_text(properties, '$.peer') as "peer",
json_extract_path_text(properties, '$.enableBgp') as "enable_bgp",
json_extract_path_text(properties, '$.gatewayCustomBgpIpAddresses') as "gateway_custom_bgp_ip_addresses",
json_extract_path_text(properties, '$.useLocalAzureIpAddress') as "use_local_azure_ip_address",
json_extract_path_text(properties, '$.usePolicyBasedTrafficSelectors') as "use_policy_based_traffic_selectors",
json_extract_path_text(properties, '$.ipsecPolicies') as "ipsec_policies",
json_extract_path_text(properties, '$.trafficSelectorPolicies') as "traffic_selector_policies",
json_extract_path_text(properties, '$.resourceGuid') as "resource_guid",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.expressRouteGatewayBypass') as "express_route_gateway_bypass",
json_extract_path_text(properties, '$.enablePrivateLinkFastPath') as "enable_private_link_fast_path",
subscriptionId,
resourceGroupName,
virtualNetworkGatewayConnectionName
FROM azure.network.virtual_network_gateway_connections
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me';
```

</TabItem>
</Tabs>
