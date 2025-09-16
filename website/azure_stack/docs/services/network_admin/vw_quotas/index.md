--- 
title: vw_quotas
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_quotas
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

Creates, updates, deletes, gets or lists a <code>vw_quotas</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_quotas</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.network_admin.vw_quotas" /></td></tr>
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
JSON_EXTRACT(properties, '$.maxPublicIpsPerSubscription') as "max_public_ips_per_subscription",
JSON_EXTRACT(properties, '$.maxVnetsPerSubscription') as "max_vnets_per_subscription",
JSON_EXTRACT(properties, '$.maxVirtualNetworkGatewaysPerSubscription') as "max_virtual_network_gateways_per_subscription",
JSON_EXTRACT(properties, '$.maxVirtualNetworkGatewayConnectionsPerSubscription') as "max_virtual_network_gateway_connections_per_subscription",
JSON_EXTRACT(properties, '$.maxLoadBalancersPerSubscription') as "max_load_balancers_per_subscription",
JSON_EXTRACT(properties, '$.maxNicsPerSubscription') as "max_nics_per_subscription",
JSON_EXTRACT(properties, '$.maxSecurityGroupsPerSubscription') as "max_security_groups_per_subscription",
JSON_EXTRACT(properties, '$.migrationPhase') as "migration_phase",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
location,
resourceName
FROM azure_stack.network_admin.quotas
WHERE subscriptionId = 'replace-me' AND location = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.maxPublicIpsPerSubscription') as "max_public_ips_per_subscription",
json_extract_path_text(properties, '$.maxVnetsPerSubscription') as "max_vnets_per_subscription",
json_extract_path_text(properties, '$.maxVirtualNetworkGatewaysPerSubscription') as "max_virtual_network_gateways_per_subscription",
json_extract_path_text(properties, '$.maxVirtualNetworkGatewayConnectionsPerSubscription') as "max_virtual_network_gateway_connections_per_subscription",
json_extract_path_text(properties, '$.maxLoadBalancersPerSubscription') as "max_load_balancers_per_subscription",
json_extract_path_text(properties, '$.maxNicsPerSubscription') as "max_nics_per_subscription",
json_extract_path_text(properties, '$.maxSecurityGroupsPerSubscription') as "max_security_groups_per_subscription",
json_extract_path_text(properties, '$.migrationPhase') as "migration_phase",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
location,
resourceName
FROM azure_stack.network_admin.quotas
WHERE subscriptionId = 'replace-me' AND location = 'replace-me';
```

</TabItem>
</Tabs>
