--- 
title: vw_peer_express_route_circuit_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_peer_express_route_circuit_connections
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

Creates, updates, deletes, gets or lists a <code>vw_peer_express_route_circuit_connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_peer_express_route_circuit_connections</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_peer_express_route_circuit_connections" /></td></tr>
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
JSON_EXTRACT(properties, '$.expressRouteCircuitPeering') as "express_route_circuit_peering",
JSON_EXTRACT(properties, '$.peerExpressRouteCircuitPeering') as "peer_express_route_circuit_peering",
JSON_EXTRACT(properties, '$.addressPrefix') as "address_prefix",
JSON_EXTRACT(properties, '$.circuitConnectionStatus') as "circuit_connection_status",
JSON_EXTRACT(properties, '$.connectionName') as "connection_name",
JSON_EXTRACT(properties, '$.authResourceGuid') as "auth_resource_guid",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
circuitName,
peeringName,
connectionName
FROM azure.network.peer_express_route_circuit_connections
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND circuitName = 'replace-me' AND peeringName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
type as type,
json_extract_path_text(properties, '$.expressRouteCircuitPeering') as "express_route_circuit_peering",
json_extract_path_text(properties, '$.peerExpressRouteCircuitPeering') as "peer_express_route_circuit_peering",
json_extract_path_text(properties, '$.addressPrefix') as "address_prefix",
json_extract_path_text(properties, '$.circuitConnectionStatus') as "circuit_connection_status",
json_extract_path_text(properties, '$.connectionName') as "connection_name",
json_extract_path_text(properties, '$.authResourceGuid') as "auth_resource_guid",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
circuitName,
peeringName,
connectionName
FROM azure.network.peer_express_route_circuit_connections
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND circuitName = 'replace-me' AND peeringName = 'replace-me';
```

</TabItem>
</Tabs>
