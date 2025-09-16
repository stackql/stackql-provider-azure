--- 
title: vw_routes
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_routes
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

Creates, updates, deletes, gets or lists a <code>vw_routes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_routes</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_routes" /></td></tr>
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
JSON_EXTRACT(properties, '$.addressPrefix') as "address_prefix",
JSON_EXTRACT(properties, '$.nextHopType') as "next_hop_type",
JSON_EXTRACT(properties, '$.nextHopIpAddress') as "next_hop_ip_address",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.hasBgpOverride') as "has_bgp_override",
subscriptionId,
resourceGroupName,
routeTableName,
routeName
FROM azure.network.routes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND routeTableName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
type as type,
json_extract_path_text(properties, '$.addressPrefix') as "address_prefix",
json_extract_path_text(properties, '$.nextHopType') as "next_hop_type",
json_extract_path_text(properties, '$.nextHopIpAddress') as "next_hop_ip_address",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.hasBgpOverride') as "has_bgp_override",
subscriptionId,
resourceGroupName,
routeTableName,
routeName
FROM azure.network.routes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND routeTableName = 'replace-me';
```

</TabItem>
</Tabs>
