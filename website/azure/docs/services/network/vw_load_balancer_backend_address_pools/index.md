--- 
title: vw_load_balancer_backend_address_pools
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_load_balancer_backend_address_pools
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

Creates, updates, deletes, gets or lists a <code>vw_load_balancer_backend_address_pools</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_load_balancer_backend_address_pools</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_load_balancer_backend_address_pools" /></td></tr>
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
JSON_EXTRACT(properties, '$.location') as "location",
JSON_EXTRACT(properties, '$.tunnelInterfaces') as "tunnel_interfaces",
JSON_EXTRACT(properties, '$.loadBalancerBackendAddresses') as "load_balancer_backend_addresses",
JSON_EXTRACT(properties, '$.backendIPConfigurations') as "backend_ip_configurations",
JSON_EXTRACT(properties, '$.loadBalancingRules') as "load_balancing_rules",
JSON_EXTRACT(properties, '$.outboundRule') as "outbound_rule",
JSON_EXTRACT(properties, '$.outboundRules') as "outbound_rules",
JSON_EXTRACT(properties, '$.inboundNatRules') as "inbound_nat_rules",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.drainPeriodInSeconds') as "drain_period_in_seconds",
JSON_EXTRACT(properties, '$.virtualNetwork') as "virtual_network",
JSON_EXTRACT(properties, '$.syncMode') as "sync_mode",
subscriptionId,
resourceGroupName,
loadBalancerName,
backendAddressPoolName
FROM azure.network.load_balancer_backend_address_pools
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND loadBalancerName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
type as type,
json_extract_path_text(properties, '$.location') as "location",
json_extract_path_text(properties, '$.tunnelInterfaces') as "tunnel_interfaces",
json_extract_path_text(properties, '$.loadBalancerBackendAddresses') as "load_balancer_backend_addresses",
json_extract_path_text(properties, '$.backendIPConfigurations') as "backend_ip_configurations",
json_extract_path_text(properties, '$.loadBalancingRules') as "load_balancing_rules",
json_extract_path_text(properties, '$.outboundRule') as "outbound_rule",
json_extract_path_text(properties, '$.outboundRules') as "outbound_rules",
json_extract_path_text(properties, '$.inboundNatRules') as "inbound_nat_rules",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.drainPeriodInSeconds') as "drain_period_in_seconds",
json_extract_path_text(properties, '$.virtualNetwork') as "virtual_network",
json_extract_path_text(properties, '$.syncMode') as "sync_mode",
subscriptionId,
resourceGroupName,
loadBalancerName,
backendAddressPoolName
FROM azure.network.load_balancer_backend_address_pools
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND loadBalancerName = 'replace-me';
```

</TabItem>
</Tabs>
