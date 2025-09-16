--- 
title: vw_virtual_router_peerings
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_router_peerings
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_router_peerings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_router_peerings</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_virtual_router_peerings" /></td></tr>
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
JSON_EXTRACT(properties, '$.peerAsn') as "peer_asn",
JSON_EXTRACT(properties, '$.peerIp') as "peer_ip",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
virtualRouterName,
peeringName
FROM azure.network.virtual_router_peerings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND virtualRouterName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
type as type,
json_extract_path_text(properties, '$.peerAsn') as "peer_asn",
json_extract_path_text(properties, '$.peerIp') as "peer_ip",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
virtualRouterName,
peeringName
FROM azure.network.virtual_router_peerings
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND virtualRouterName = 'replace-me';
```

</TabItem>
</Tabs>
