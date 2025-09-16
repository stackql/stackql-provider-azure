--- 
title: vw_private_store_collections
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_private_store_collections
  - marketplace
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

Creates, updates, deletes, gets or lists a <code>vw_private_store_collections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_private_store_collections</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.marketplace.vw_private_store_collections" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.collectionId') as "collection_id",
JSON_EXTRACT(properties, '$.collectionName') as "collection_name",
JSON_EXTRACT(properties, '$.claim') as "claim",
JSON_EXTRACT(properties, '$.allSubscriptions') as "all_subscriptions",
JSON_EXTRACT(properties, '$.approveAllItems') as "approve_all_items",
JSON_EXTRACT(properties, '$.approveAllItemsModifiedAt') as "approve_all_items_modified_at",
JSON_EXTRACT(properties, '$.subscriptionsList') as "subscriptions_list",
JSON_EXTRACT(properties, '$.enabled') as "enabled",
JSON_EXTRACT(properties, '$.numberOfOffers') as "number_of_offers",
JSON_EXTRACT(properties, '$.appliedRules') as "applied_rules",
privateStoreId,
collectionId
FROM azure_extras.marketplace.private_store_collections
WHERE privateStoreId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.collectionId') as "collection_id",
json_extract_path_text(properties, '$.collectionName') as "collection_name",
json_extract_path_text(properties, '$.claim') as "claim",
json_extract_path_text(properties, '$.allSubscriptions') as "all_subscriptions",
json_extract_path_text(properties, '$.approveAllItems') as "approve_all_items",
json_extract_path_text(properties, '$.approveAllItemsModifiedAt') as "approve_all_items_modified_at",
json_extract_path_text(properties, '$.subscriptionsList') as "subscriptions_list",
json_extract_path_text(properties, '$.enabled') as "enabled",
json_extract_path_text(properties, '$.numberOfOffers') as "number_of_offers",
json_extract_path_text(properties, '$.appliedRules') as "applied_rules",
privateStoreId,
collectionId
FROM azure_extras.marketplace.private_store_collections
WHERE privateStoreId = 'replace-me';
```

</TabItem>
</Tabs>
