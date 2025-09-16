--- 
title: vw_resource_provider_states
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_resource_provider_states
  - network_admin
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_resource_provider_states</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_resource_provider_states</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.network_admin.vw_resource_provider_states" /></td></tr>
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
type as type,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.virtualNetworkHealth') as "virtual_network_health",
JSON_EXTRACT(properties, '$.loadBalancerMuxHealth') as "load_balancer_mux_health",
JSON_EXTRACT(properties, '$.virtualGatewayHealth') as "virtual_gateway_health",
JSON_EXTRACT(properties, '$.publicIpAddressUsage') as "public_ip_address_usage",
JSON_EXTRACT(properties, '$.backendIpUsage') as "backend_ip_usage",
JSON_EXTRACT(properties, '$.macAddressUsage') as "mac_address_usage",
subscriptionId
FROM azure_stack.network_admin.resource_provider_states
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.virtualNetworkHealth') as "virtual_network_health",
json_extract_path_text(properties, '$.loadBalancerMuxHealth') as "load_balancer_mux_health",
json_extract_path_text(properties, '$.virtualGatewayHealth') as "virtual_gateway_health",
json_extract_path_text(properties, '$.publicIpAddressUsage') as "public_ip_address_usage",
json_extract_path_text(properties, '$.backendIpUsage') as "backend_ip_usage",
json_extract_path_text(properties, '$.macAddressUsage') as "mac_address_usage",
subscriptionId
FROM azure_stack.network_admin.resource_provider_states
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
