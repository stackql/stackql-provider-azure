--- 
title: vw_orders
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_orders
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

Creates, updates, deletes, gets or lists a <code>vw_orders</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_orders</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.edge_order.vw_orders" /></td></tr>
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
JSON_EXTRACT(properties, '$.orderItemIds') as "order_item_ids",
JSON_EXTRACT(properties, '$.currentStage') as "current_stage",
JSON_EXTRACT(properties, '$.orderStageHistory') as "order_stage_history",
JSON_EXTRACT(properties, '$.orderMode') as "order_mode",
subscriptionId,
resourceGroupName,
location,
orderName
FROM azure_extras.edge_order.orders
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.orderItemIds') as "order_item_ids",
json_extract_path_text(properties, '$.currentStage') as "current_stage",
json_extract_path_text(properties, '$.orderStageHistory') as "order_stage_history",
json_extract_path_text(properties, '$.orderMode') as "order_mode",
subscriptionId,
resourceGroupName,
location,
orderName
FROM azure_extras.edge_order.orders
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
