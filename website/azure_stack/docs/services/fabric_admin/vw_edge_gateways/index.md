--- 
title: vw_edge_gateways
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_edge_gateways
  - fabric_admin
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

Creates, updates, deletes, gets or lists a <code>vw_edge_gateways</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_edge_gateways</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.fabric_admin.vw_edge_gateways" /></td></tr>
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
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.totalCapacity') as "total_capacity",
JSON_EXTRACT(properties, '$.availableCapacity') as "available_capacity",
JSON_EXTRACT(properties, '$.numberOfConnections') as "number_of_connections",
subscriptionId,
resourceGroupName,
location,
edgeGateway
FROM azure_stack.fabric_admin.edge_gateways
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND location = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.totalCapacity') as "total_capacity",
json_extract_path_text(properties, '$.availableCapacity') as "available_capacity",
json_extract_path_text(properties, '$.numberOfConnections') as "number_of_connections",
subscriptionId,
resourceGroupName,
location,
edgeGateway
FROM azure_stack.fabric_admin.edge_gateways
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND location = 'replace-me';
```

</TabItem>
</Tabs>
