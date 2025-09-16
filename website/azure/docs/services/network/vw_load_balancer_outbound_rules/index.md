--- 
title: vw_load_balancer_outbound_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_load_balancer_outbound_rules
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

Creates, updates, deletes, gets or lists a <code>vw_load_balancer_outbound_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_load_balancer_outbound_rules</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_load_balancer_outbound_rules" /></td></tr>
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
JSON_EXTRACT(properties, '$.allocatedOutboundPorts') as "allocated_outbound_ports",
JSON_EXTRACT(properties, '$.frontendIPConfigurations') as "frontend_ip_configurations",
JSON_EXTRACT(properties, '$.backendAddressPool') as "backend_address_pool",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.protocol') as "protocol",
JSON_EXTRACT(properties, '$.enableTcpReset') as "enable_tcp_reset",
JSON_EXTRACT(properties, '$.idleTimeoutInMinutes') as "idle_timeout_in_minutes",
subscriptionId,
resourceGroupName,
loadBalancerName,
outboundRuleName
FROM azure.network.load_balancer_outbound_rules
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
json_extract_path_text(properties, '$.allocatedOutboundPorts') as "allocated_outbound_ports",
json_extract_path_text(properties, '$.frontendIPConfigurations') as "frontend_ip_configurations",
json_extract_path_text(properties, '$.backendAddressPool') as "backend_address_pool",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.protocol') as "protocol",
json_extract_path_text(properties, '$.enableTcpReset') as "enable_tcp_reset",
json_extract_path_text(properties, '$.idleTimeoutInMinutes') as "idle_timeout_in_minutes",
subscriptionId,
resourceGroupName,
loadBalancerName,
outboundRuleName
FROM azure.network.load_balancer_outbound_rules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND loadBalancerName = 'replace-me';
```

</TabItem>
</Tabs>
