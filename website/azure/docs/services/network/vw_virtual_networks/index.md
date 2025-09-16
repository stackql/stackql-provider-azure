--- 
title: vw_virtual_networks
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_networks
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_networks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_networks</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_virtual_networks" /></td></tr>
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
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.addressSpace') as "address_space",
JSON_EXTRACT(properties, '$.dhcpOptions') as "dhcp_options",
JSON_EXTRACT(properties, '$.flowTimeoutInMinutes') as "flow_timeout_in_minutes",
JSON_EXTRACT(properties, '$.subnets') as "subnets",
JSON_EXTRACT(properties, '$.virtualNetworkPeerings') as "virtual_network_peerings",
JSON_EXTRACT(properties, '$.resourceGuid') as "resource_guid",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.enableDdosProtection') as "enable_ddos_protection",
JSON_EXTRACT(properties, '$.enableVmProtection') as "enable_vm_protection",
JSON_EXTRACT(properties, '$.ddosProtectionPlan') as "ddos_protection_plan",
JSON_EXTRACT(properties, '$.bgpCommunities') as "bgp_communities",
JSON_EXTRACT(properties, '$.encryption') as "encryption",
JSON_EXTRACT(properties, '$.ipAllocations') as "ip_allocations",
JSON_EXTRACT(properties, '$.flowLogs') as "flow_logs",
JSON_EXTRACT(properties, '$.privateEndpointVNetPolicies') as "private_endpoint_v_net_policies",
subscriptionId,
resourceGroupName,
virtualNetworkName
FROM azure.network.virtual_networks
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
extendedLocation as extended_location,
etag as etag,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.addressSpace') as "address_space",
json_extract_path_text(properties, '$.dhcpOptions') as "dhcp_options",
json_extract_path_text(properties, '$.flowTimeoutInMinutes') as "flow_timeout_in_minutes",
json_extract_path_text(properties, '$.subnets') as "subnets",
json_extract_path_text(properties, '$.virtualNetworkPeerings') as "virtual_network_peerings",
json_extract_path_text(properties, '$.resourceGuid') as "resource_guid",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.enableDdosProtection') as "enable_ddos_protection",
json_extract_path_text(properties, '$.enableVmProtection') as "enable_vm_protection",
json_extract_path_text(properties, '$.ddosProtectionPlan') as "ddos_protection_plan",
json_extract_path_text(properties, '$.bgpCommunities') as "bgp_communities",
json_extract_path_text(properties, '$.encryption') as "encryption",
json_extract_path_text(properties, '$.ipAllocations') as "ip_allocations",
json_extract_path_text(properties, '$.flowLogs') as "flow_logs",
json_extract_path_text(properties, '$.privateEndpointVNetPolicies') as "private_endpoint_v_net_policies",
subscriptionId,
resourceGroupName,
virtualNetworkName
FROM azure.network.virtual_networks
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
