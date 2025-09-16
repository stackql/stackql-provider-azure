--- 
title: vw_virtual_routers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_routers
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_routers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_routers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_virtual_routers" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.virtualRouterAsn') as "virtual_router_asn",
JSON_EXTRACT(properties, '$.virtualRouterIps') as "virtual_router_ips",
JSON_EXTRACT(properties, '$.hostedSubnet') as "hosted_subnet",
JSON_EXTRACT(properties, '$.hostedGateway') as "hosted_gateway",
JSON_EXTRACT(properties, '$.peerings') as "peerings",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
virtualRouterName
FROM azure.network.virtual_routers
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.virtualRouterAsn') as "virtual_router_asn",
json_extract_path_text(properties, '$.virtualRouterIps') as "virtual_router_ips",
json_extract_path_text(properties, '$.hostedSubnet') as "hosted_subnet",
json_extract_path_text(properties, '$.hostedGateway') as "hosted_gateway",
json_extract_path_text(properties, '$.peerings') as "peerings",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
virtualRouterName
FROM azure.network.virtual_routers
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
