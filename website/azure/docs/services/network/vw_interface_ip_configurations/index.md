--- 
title: vw_interface_ip_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_interface_ip_configurations
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

Creates, updates, deletes, gets or lists a <code>vw_interface_ip_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_interface_ip_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_interface_ip_configurations" /></td></tr>
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
JSON_EXTRACT(properties, '$.gatewayLoadBalancer') as "gateway_load_balancer",
JSON_EXTRACT(properties, '$.virtualNetworkTaps') as "virtual_network_taps",
JSON_EXTRACT(properties, '$.applicationGatewayBackendAddressPools') as "application_gateway_backend_address_pools",
JSON_EXTRACT(properties, '$.loadBalancerBackendAddressPools') as "load_balancer_backend_address_pools",
JSON_EXTRACT(properties, '$.loadBalancerInboundNatRules') as "load_balancer_inbound_nat_rules",
JSON_EXTRACT(properties, '$.privateIPAddress') as "private_ip_address",
JSON_EXTRACT(properties, '$.privateIPAddressPrefixLength') as "private_ip_address_prefix_length",
JSON_EXTRACT(properties, '$.privateIPAllocationMethod') as "private_ip_allocation_method",
JSON_EXTRACT(properties, '$.privateIPAddressVersion') as "private_ip_address_version",
JSON_EXTRACT(properties, '$.subnet') as "subnet",
JSON_EXTRACT(properties, '$.primary') as "primary",
JSON_EXTRACT(properties, '$.publicIPAddress') as "public_ip_address",
JSON_EXTRACT(properties, '$.applicationSecurityGroups') as "application_security_groups",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.privateLinkConnectionProperties') as "private_link_connection_properties",
subscriptionId,
resourceGroupName,
networkInterfaceName,
ipConfigurationName
FROM azure.network.interface_ip_configurations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND networkInterfaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
type as type,
json_extract_path_text(properties, '$.gatewayLoadBalancer') as "gateway_load_balancer",
json_extract_path_text(properties, '$.virtualNetworkTaps') as "virtual_network_taps",
json_extract_path_text(properties, '$.applicationGatewayBackendAddressPools') as "application_gateway_backend_address_pools",
json_extract_path_text(properties, '$.loadBalancerBackendAddressPools') as "load_balancer_backend_address_pools",
json_extract_path_text(properties, '$.loadBalancerInboundNatRules') as "load_balancer_inbound_nat_rules",
json_extract_path_text(properties, '$.privateIPAddress') as "private_ip_address",
json_extract_path_text(properties, '$.privateIPAddressPrefixLength') as "private_ip_address_prefix_length",
json_extract_path_text(properties, '$.privateIPAllocationMethod') as "private_ip_allocation_method",
json_extract_path_text(properties, '$.privateIPAddressVersion') as "private_ip_address_version",
json_extract_path_text(properties, '$.subnet') as "subnet",
json_extract_path_text(properties, '$.primary') as "primary",
json_extract_path_text(properties, '$.publicIPAddress') as "public_ip_address",
json_extract_path_text(properties, '$.applicationSecurityGroups') as "application_security_groups",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.privateLinkConnectionProperties') as "private_link_connection_properties",
subscriptionId,
resourceGroupName,
networkInterfaceName,
ipConfigurationName
FROM azure.network.interface_ip_configurations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND networkInterfaceName = 'replace-me';
```

</TabItem>
</Tabs>
