--- 
title: vw_express_route_port_authorizations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_express_route_port_authorizations
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

Creates, updates, deletes, gets or lists a <code>vw_express_route_port_authorizations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_express_route_port_authorizations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_express_route_port_authorizations" /></td></tr>
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
JSON_EXTRACT(properties, '$.authorizationKey') as "authorization_key",
JSON_EXTRACT(properties, '$.authorizationUseStatus') as "authorization_use_status",
JSON_EXTRACT(properties, '$.circuitResourceUri') as "circuit_resource_uri",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
expressRoutePortName,
authorizationName
FROM azure.network.express_route_port_authorizations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND expressRoutePortName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
type as type,
json_extract_path_text(properties, '$.authorizationKey') as "authorization_key",
json_extract_path_text(properties, '$.authorizationUseStatus') as "authorization_use_status",
json_extract_path_text(properties, '$.circuitResourceUri') as "circuit_resource_uri",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
expressRoutePortName,
authorizationName
FROM azure.network.express_route_port_authorizations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND expressRoutePortName = 'replace-me';
```

</TabItem>
</Tabs>
