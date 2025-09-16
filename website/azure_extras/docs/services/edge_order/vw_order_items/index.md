--- 
title: vw_order_items
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_order_items
  - edge_order
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_order_items</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_order_items</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.edge_order.vw_order_items" /></td></tr>
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
location as location,
tags as tags,
identity as identity,
JSON_EXTRACT(properties, '$.orderItemDetails') as "order_item_details",
JSON_EXTRACT(properties, '$.addressDetails') as "address_details",
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.orderId') as "order_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
orderItemName
FROM azure_extras.edge_order.order_items
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
identity as identity,
json_extract_path_text(properties, '$.orderItemDetails') as "order_item_details",
json_extract_path_text(properties, '$.addressDetails') as "address_details",
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.orderId') as "order_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
orderItemName
FROM azure_extras.edge_order.order_items
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
