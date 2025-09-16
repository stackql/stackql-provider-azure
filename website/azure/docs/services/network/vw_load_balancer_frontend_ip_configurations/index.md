--- 
title: vw_load_balancer_frontend_ip_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_load_balancer_frontend_ip_configurations
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

Creates, updates, deletes, gets or lists a <code>vw_load_balancer_frontend_ip_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_load_balancer_frontend_ip_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_load_balancer_frontend_ip_configurations" /></td></tr>
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
zones as zones,
JSON_EXTRACT(properties, '$.inboundNatRules') as "inbound_nat_rules",
JSON_EXTRACT(properties, '$.inboundNatPools') as "inbound_nat_pools",
JSON_EXTRACT(properties, '$.outboundRules') as "outbound_rules",
JSON_EXTRACT(properties, '$.loadBalancingRules') as "load_balancing_rules",
JSON_EXTRACT(properties, '$.privateIPAddress') as "private_ip_address",
JSON_EXTRACT(properties, '$.privateIPAllocationMethod') as "private_ip_allocation_method",
JSON_EXTRACT(properties, '$.privateIPAddressVersion') as "private_ip_address_version",
JSON_EXTRACT(properties, '$.subnet') as "subnet",
JSON_EXTRACT(properties, '$.publicIPAddress') as "public_ip_address",
JSON_EXTRACT(properties, '$.publicIPPrefix') as "public_ip_prefix",
JSON_EXTRACT(properties, '$.gatewayLoadBalancer') as "gateway_load_balancer",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
loadBalancerName,
frontendIPConfigurationName
FROM azure.network.load_balancer_frontend_ip_configurations
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
zones as zones,
json_extract_path_text(properties, '$.inboundNatRules') as "inbound_nat_rules",
json_extract_path_text(properties, '$.inboundNatPools') as "inbound_nat_pools",
json_extract_path_text(properties, '$.outboundRules') as "outbound_rules",
json_extract_path_text(properties, '$.loadBalancingRules') as "load_balancing_rules",
json_extract_path_text(properties, '$.privateIPAddress') as "private_ip_address",
json_extract_path_text(properties, '$.privateIPAllocationMethod') as "private_ip_allocation_method",
json_extract_path_text(properties, '$.privateIPAddressVersion') as "private_ip_address_version",
json_extract_path_text(properties, '$.subnet') as "subnet",
json_extract_path_text(properties, '$.publicIPAddress') as "public_ip_address",
json_extract_path_text(properties, '$.publicIPPrefix') as "public_ip_prefix",
json_extract_path_text(properties, '$.gatewayLoadBalancer') as "gateway_load_balancer",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
loadBalancerName,
frontendIPConfigurationName
FROM azure.network.load_balancer_frontend_ip_configurations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND loadBalancerName = 'replace-me';
```

</TabItem>
</Tabs>
