--- 
title: vw_load_balancer_load_balancing_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_load_balancer_load_balancing_rules
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

Creates, updates, deletes, gets or lists a <code>vw_load_balancer_load_balancing_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_load_balancer_load_balancing_rules</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_load_balancer_load_balancing_rules" /></td></tr>
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
JSON_EXTRACT(properties, '$.frontendIPConfiguration') as "frontend_ip_configuration",
JSON_EXTRACT(properties, '$.backendAddressPool') as "backend_address_pool",
JSON_EXTRACT(properties, '$.backendAddressPools') as "backend_address_pools",
JSON_EXTRACT(properties, '$.probe') as "probe",
JSON_EXTRACT(properties, '$.protocol') as "protocol",
JSON_EXTRACT(properties, '$.loadDistribution') as "load_distribution",
JSON_EXTRACT(properties, '$.frontendPort') as "frontend_port",
JSON_EXTRACT(properties, '$.backendPort') as "backend_port",
JSON_EXTRACT(properties, '$.idleTimeoutInMinutes') as "idle_timeout_in_minutes",
JSON_EXTRACT(properties, '$.enableFloatingIP') as "enable_floating_ip",
JSON_EXTRACT(properties, '$.enableTcpReset') as "enable_tcp_reset",
JSON_EXTRACT(properties, '$.disableOutboundSnat') as "disable_outbound_snat",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
loadBalancerName,
loadBalancingRuleName
FROM azure.network.load_balancer_load_balancing_rules
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
json_extract_path_text(properties, '$.frontendIPConfiguration') as "frontend_ip_configuration",
json_extract_path_text(properties, '$.backendAddressPool') as "backend_address_pool",
json_extract_path_text(properties, '$.backendAddressPools') as "backend_address_pools",
json_extract_path_text(properties, '$.probe') as "probe",
json_extract_path_text(properties, '$.protocol') as "protocol",
json_extract_path_text(properties, '$.loadDistribution') as "load_distribution",
json_extract_path_text(properties, '$.frontendPort') as "frontend_port",
json_extract_path_text(properties, '$.backendPort') as "backend_port",
json_extract_path_text(properties, '$.idleTimeoutInMinutes') as "idle_timeout_in_minutes",
json_extract_path_text(properties, '$.enableFloatingIP') as "enable_floating_ip",
json_extract_path_text(properties, '$.enableTcpReset') as "enable_tcp_reset",
json_extract_path_text(properties, '$.disableOutboundSnat') as "disable_outbound_snat",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
loadBalancerName,
loadBalancingRuleName
FROM azure.network.load_balancer_load_balancing_rules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND loadBalancerName = 'replace-me';
```

</TabItem>
</Tabs>
