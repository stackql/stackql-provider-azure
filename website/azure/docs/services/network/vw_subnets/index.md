--- 
title: vw_subnets
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_subnets
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

Creates, updates, deletes, gets or lists a <code>vw_subnets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_subnets</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_subnets" /></td></tr>
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
JSON_EXTRACT(properties, '$.addressPrefix') as "address_prefix",
JSON_EXTRACT(properties, '$.addressPrefixes') as "address_prefixes",
JSON_EXTRACT(properties, '$.networkSecurityGroup') as "network_security_group",
JSON_EXTRACT(properties, '$.routeTable') as "route_table",
JSON_EXTRACT(properties, '$.natGateway') as "nat_gateway",
JSON_EXTRACT(properties, '$.serviceEndpoints') as "service_endpoints",
JSON_EXTRACT(properties, '$.serviceEndpointPolicies') as "service_endpoint_policies",
JSON_EXTRACT(properties, '$.privateEndpoints') as "private_endpoints",
JSON_EXTRACT(properties, '$.ipConfigurations') as "ip_configurations",
JSON_EXTRACT(properties, '$.ipConfigurationProfiles') as "ip_configuration_profiles",
JSON_EXTRACT(properties, '$.ipAllocations') as "ip_allocations",
JSON_EXTRACT(properties, '$.resourceNavigationLinks') as "resource_navigation_links",
JSON_EXTRACT(properties, '$.serviceAssociationLinks') as "service_association_links",
JSON_EXTRACT(properties, '$.delegations') as "delegations",
JSON_EXTRACT(properties, '$.purpose') as "purpose",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.privateEndpointNetworkPolicies') as "private_endpoint_network_policies",
JSON_EXTRACT(properties, '$.privateLinkServiceNetworkPolicies') as "private_link_service_network_policies",
JSON_EXTRACT(properties, '$.applicationGatewayIPConfigurations') as "application_gateway_ip_configurations",
JSON_EXTRACT(properties, '$.sharingScope') as "sharing_scope",
JSON_EXTRACT(properties, '$.defaultOutboundAccess') as "default_outbound_access",
subscriptionId,
resourceGroupName,
virtualNetworkName,
subnetName
FROM azure.network.subnets
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
json_extract_path_text(properties, '$.addressPrefix') as "address_prefix",
json_extract_path_text(properties, '$.addressPrefixes') as "address_prefixes",
json_extract_path_text(properties, '$.networkSecurityGroup') as "network_security_group",
json_extract_path_text(properties, '$.routeTable') as "route_table",
json_extract_path_text(properties, '$.natGateway') as "nat_gateway",
json_extract_path_text(properties, '$.serviceEndpoints') as "service_endpoints",
json_extract_path_text(properties, '$.serviceEndpointPolicies') as "service_endpoint_policies",
json_extract_path_text(properties, '$.privateEndpoints') as "private_endpoints",
json_extract_path_text(properties, '$.ipConfigurations') as "ip_configurations",
json_extract_path_text(properties, '$.ipConfigurationProfiles') as "ip_configuration_profiles",
json_extract_path_text(properties, '$.ipAllocations') as "ip_allocations",
json_extract_path_text(properties, '$.resourceNavigationLinks') as "resource_navigation_links",
json_extract_path_text(properties, '$.serviceAssociationLinks') as "service_association_links",
json_extract_path_text(properties, '$.delegations') as "delegations",
json_extract_path_text(properties, '$.purpose') as "purpose",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.privateEndpointNetworkPolicies') as "private_endpoint_network_policies",
json_extract_path_text(properties, '$.privateLinkServiceNetworkPolicies') as "private_link_service_network_policies",
json_extract_path_text(properties, '$.applicationGatewayIPConfigurations') as "application_gateway_ip_configurations",
json_extract_path_text(properties, '$.sharingScope') as "sharing_scope",
json_extract_path_text(properties, '$.defaultOutboundAccess') as "default_outbound_access",
subscriptionId,
resourceGroupName,
virtualNetworkName,
subnetName
FROM azure.network.subnets
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND virtualNetworkName = 'replace-me';
```

</TabItem>
</Tabs>
