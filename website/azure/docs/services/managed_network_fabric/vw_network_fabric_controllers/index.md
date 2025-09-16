--- 
title: vw_network_fabric_controllers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_network_fabric_controllers
  - managed_network_fabric
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

Creates, updates, deletes, gets or lists a <code>vw_network_fabric_controllers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_network_fabric_controllers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_network_fabric.vw_network_fabric_controllers" /></td></tr>
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
location as location,
tags as tags,
JSON_EXTRACT(properties, '$.annotation') as "annotation",
JSON_EXTRACT(properties, '$.infrastructureExpressRouteConnections') as "infrastructure_express_route_connections",
JSON_EXTRACT(properties, '$.workloadExpressRouteConnections') as "workload_express_route_connections",
JSON_EXTRACT(properties, '$.infrastructureServices') as "infrastructure_services",
JSON_EXTRACT(properties, '$.workloadServices') as "workload_services",
JSON_EXTRACT(properties, '$.managedResourceGroupConfiguration') as "managed_resource_group_configuration",
JSON_EXTRACT(properties, '$.networkFabricIds') as "network_fabric_ids",
JSON_EXTRACT(properties, '$.workloadManagementNetwork') as "workload_management_network",
JSON_EXTRACT(properties, '$.isWorkloadManagementNetworkEnabled') as "is_workload_management_network_enabled",
JSON_EXTRACT(properties, '$.tenantInternetGatewayIds') as "tenant_internet_gateway_ids",
JSON_EXTRACT(properties, '$.ipv4AddressSpace') as "ipv4_address_space",
JSON_EXTRACT(properties, '$.ipv6AddressSpace') as "ipv6_address_space",
JSON_EXTRACT(properties, '$.nfcSku') as "nfc_sku",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
networkFabricControllerName
FROM azure.managed_network_fabric.network_fabric_controllers
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.annotation') as "annotation",
json_extract_path_text(properties, '$.infrastructureExpressRouteConnections') as "infrastructure_express_route_connections",
json_extract_path_text(properties, '$.workloadExpressRouteConnections') as "workload_express_route_connections",
json_extract_path_text(properties, '$.infrastructureServices') as "infrastructure_services",
json_extract_path_text(properties, '$.workloadServices') as "workload_services",
json_extract_path_text(properties, '$.managedResourceGroupConfiguration') as "managed_resource_group_configuration",
json_extract_path_text(properties, '$.networkFabricIds') as "network_fabric_ids",
json_extract_path_text(properties, '$.workloadManagementNetwork') as "workload_management_network",
json_extract_path_text(properties, '$.isWorkloadManagementNetworkEnabled') as "is_workload_management_network_enabled",
json_extract_path_text(properties, '$.tenantInternetGatewayIds') as "tenant_internet_gateway_ids",
json_extract_path_text(properties, '$.ipv4AddressSpace') as "ipv4_address_space",
json_extract_path_text(properties, '$.ipv6AddressSpace') as "ipv6_address_space",
json_extract_path_text(properties, '$.nfcSku') as "nfc_sku",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
networkFabricControllerName
FROM azure.managed_network_fabric.network_fabric_controllers
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
