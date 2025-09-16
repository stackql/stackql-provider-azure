--- 
title: vw_vpn_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_vpn_connections
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

Creates, updates, deletes, gets or lists a <code>vw_vpn_connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_vpn_connections</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_vpn_connections" /></td></tr>
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
JSON_EXTRACT(properties, '$.remoteVpnSite') as "remote_vpn_site",
JSON_EXTRACT(properties, '$.routingWeight') as "routing_weight",
JSON_EXTRACT(properties, '$.dpdTimeoutSeconds') as "dpd_timeout_seconds",
JSON_EXTRACT(properties, '$.connectionStatus') as "connection_status",
JSON_EXTRACT(properties, '$.vpnConnectionProtocolType') as "vpn_connection_protocol_type",
JSON_EXTRACT(properties, '$.ingressBytesTransferred') as "ingress_bytes_transferred",
JSON_EXTRACT(properties, '$.egressBytesTransferred') as "egress_bytes_transferred",
JSON_EXTRACT(properties, '$.connectionBandwidth') as "connection_bandwidth",
JSON_EXTRACT(properties, '$.sharedKey') as "shared_key",
JSON_EXTRACT(properties, '$.enableBgp') as "enable_bgp",
JSON_EXTRACT(properties, '$.usePolicyBasedTrafficSelectors') as "use_policy_based_traffic_selectors",
JSON_EXTRACT(properties, '$.ipsecPolicies') as "ipsec_policies",
JSON_EXTRACT(properties, '$.trafficSelectorPolicies') as "traffic_selector_policies",
JSON_EXTRACT(properties, '$.enableRateLimiting') as "enable_rate_limiting",
JSON_EXTRACT(properties, '$.enableInternetSecurity') as "enable_internet_security",
JSON_EXTRACT(properties, '$.useLocalAzureIpAddress') as "use_local_azure_ip_address",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.vpnLinkConnections') as "vpn_link_connections",
JSON_EXTRACT(properties, '$.routingConfiguration') as "routing_configuration",
subscriptionId,
resourceGroupName,
gatewayName,
connectionName
FROM azure.network.vpn_connections
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND gatewayName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
json_extract_path_text(properties, '$.remoteVpnSite') as "remote_vpn_site",
json_extract_path_text(properties, '$.routingWeight') as "routing_weight",
json_extract_path_text(properties, '$.dpdTimeoutSeconds') as "dpd_timeout_seconds",
json_extract_path_text(properties, '$.connectionStatus') as "connection_status",
json_extract_path_text(properties, '$.vpnConnectionProtocolType') as "vpn_connection_protocol_type",
json_extract_path_text(properties, '$.ingressBytesTransferred') as "ingress_bytes_transferred",
json_extract_path_text(properties, '$.egressBytesTransferred') as "egress_bytes_transferred",
json_extract_path_text(properties, '$.connectionBandwidth') as "connection_bandwidth",
json_extract_path_text(properties, '$.sharedKey') as "shared_key",
json_extract_path_text(properties, '$.enableBgp') as "enable_bgp",
json_extract_path_text(properties, '$.usePolicyBasedTrafficSelectors') as "use_policy_based_traffic_selectors",
json_extract_path_text(properties, '$.ipsecPolicies') as "ipsec_policies",
json_extract_path_text(properties, '$.trafficSelectorPolicies') as "traffic_selector_policies",
json_extract_path_text(properties, '$.enableRateLimiting') as "enable_rate_limiting",
json_extract_path_text(properties, '$.enableInternetSecurity') as "enable_internet_security",
json_extract_path_text(properties, '$.useLocalAzureIpAddress') as "use_local_azure_ip_address",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.vpnLinkConnections') as "vpn_link_connections",
json_extract_path_text(properties, '$.routingConfiguration') as "routing_configuration",
subscriptionId,
resourceGroupName,
gatewayName,
connectionName
FROM azure.network.vpn_connections
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND gatewayName = 'replace-me';
```

</TabItem>
</Tabs>
