--- 
title: vw_hub_route_tables
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_hub_route_tables
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

Creates, updates, deletes, gets or lists a <code>vw_hub_route_tables</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_hub_route_tables</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_hub_route_tables" /></td></tr>
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
JSON_EXTRACT(properties, '$.routes') as "routes",
JSON_EXTRACT(properties, '$.labels') as "labels",
JSON_EXTRACT(properties, '$.associatedConnections') as "associated_connections",
JSON_EXTRACT(properties, '$.propagatingConnections') as "propagating_connections",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
virtualHubName,
routeTableName
FROM azure.network.hub_route_tables
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
json_extract_path_text(properties, '$.routes') as "routes",
json_extract_path_text(properties, '$.labels') as "labels",
json_extract_path_text(properties, '$.associatedConnections') as "associated_connections",
json_extract_path_text(properties, '$.propagatingConnections') as "propagating_connections",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
virtualHubName,
routeTableName
FROM azure.network.hub_route_tables
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND virtualHubName = 'replace-me';
```

</TabItem>
</Tabs>
