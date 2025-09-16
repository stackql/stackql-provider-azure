--- 
title: vw_route_maps
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_route_maps
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

Creates, updates, deletes, gets or lists a <code>vw_route_maps</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_route_maps</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_route_maps" /></td></tr>
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
JSON_EXTRACT(properties, '$.associatedInboundConnections') as "associated_inbound_connections",
JSON_EXTRACT(properties, '$.associatedOutboundConnections') as "associated_outbound_connections",
JSON_EXTRACT(properties, '$.rules') as "rules",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
virtualHubName,
routeMapName
FROM azure.network.route_maps
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND virtualHubName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
type as type,
json_extract_path_text(properties, '$.associatedInboundConnections') as "associated_inbound_connections",
json_extract_path_text(properties, '$.associatedOutboundConnections') as "associated_outbound_connections",
json_extract_path_text(properties, '$.rules') as "rules",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
virtualHubName,
routeMapName
FROM azure.network.route_maps
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND virtualHubName = 'replace-me';
```

</TabItem>
</Tabs>
