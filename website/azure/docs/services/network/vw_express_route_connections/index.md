--- 
title: vw_express_route_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_express_route_connections
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

Creates, updates, deletes, gets or lists a <code>vw_express_route_connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_express_route_connections</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_express_route_connections" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.expressRouteCircuitPeering') as "express_route_circuit_peering",
JSON_EXTRACT(properties, '$.authorizationKey') as "authorization_key",
JSON_EXTRACT(properties, '$.routingWeight') as "routing_weight",
JSON_EXTRACT(properties, '$.enableInternetSecurity') as "enable_internet_security",
JSON_EXTRACT(properties, '$.expressRouteGatewayBypass') as "express_route_gateway_bypass",
JSON_EXTRACT(properties, '$.enablePrivateLinkFastPath') as "enable_private_link_fast_path",
JSON_EXTRACT(properties, '$.routingConfiguration') as "routing_configuration",
subscriptionId,
resourceGroupName,
expressRouteGatewayName,
connectionName
FROM azure.network.express_route_connections
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND expressRouteGatewayName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.expressRouteCircuitPeering') as "express_route_circuit_peering",
json_extract_path_text(properties, '$.authorizationKey') as "authorization_key",
json_extract_path_text(properties, '$.routingWeight') as "routing_weight",
json_extract_path_text(properties, '$.enableInternetSecurity') as "enable_internet_security",
json_extract_path_text(properties, '$.expressRouteGatewayBypass') as "express_route_gateway_bypass",
json_extract_path_text(properties, '$.enablePrivateLinkFastPath') as "enable_private_link_fast_path",
json_extract_path_text(properties, '$.routingConfiguration') as "routing_configuration",
subscriptionId,
resourceGroupName,
expressRouteGatewayName,
connectionName
FROM azure.network.express_route_connections
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND expressRouteGatewayName = 'replace-me';
```

</TabItem>
</Tabs>
