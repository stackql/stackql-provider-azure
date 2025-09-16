--- 
title: vw_watchlist_items
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_watchlist_items
  - sentinel
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

Creates, updates, deletes, gets or lists a <code>vw_watchlist_items</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_watchlist_items</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sentinel.vw_watchlist_items" /></td></tr>
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
etag as etag,
JSON_EXTRACT(properties, '$.watchlistItemType') as "watchlist_item_type",
JSON_EXTRACT(properties, '$.watchlistItemId') as "watchlist_item_id",
JSON_EXTRACT(properties, '$.tenantId') as "tenant_id",
JSON_EXTRACT(properties, '$.isDeleted') as "is_deleted",
JSON_EXTRACT(properties, '$.created') as "created",
JSON_EXTRACT(properties, '$.updated') as "updated",
JSON_EXTRACT(properties, '$.createdBy') as "created_by",
JSON_EXTRACT(properties, '$.updatedBy') as "updated_by",
JSON_EXTRACT(properties, '$.itemsKeyValue') as "items_key_value",
JSON_EXTRACT(properties, '$.entityMapping') as "entity_mapping",
subscriptionId,
resourceGroupName,
workspaceName,
watchlistAlias,
watchlistItemId
FROM azure.sentinel.watchlist_items
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND watchlistAlias = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
etag as etag,
json_extract_path_text(properties, '$.watchlistItemType') as "watchlist_item_type",
json_extract_path_text(properties, '$.watchlistItemId') as "watchlist_item_id",
json_extract_path_text(properties, '$.tenantId') as "tenant_id",
json_extract_path_text(properties, '$.isDeleted') as "is_deleted",
json_extract_path_text(properties, '$.created') as "created",
json_extract_path_text(properties, '$.updated') as "updated",
json_extract_path_text(properties, '$.createdBy') as "created_by",
json_extract_path_text(properties, '$.updatedBy') as "updated_by",
json_extract_path_text(properties, '$.itemsKeyValue') as "items_key_value",
json_extract_path_text(properties, '$.entityMapping') as "entity_mapping",
subscriptionId,
resourceGroupName,
workspaceName,
watchlistAlias,
watchlistItemId
FROM azure.sentinel.watchlist_items
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me' AND watchlistAlias = 'replace-me';
```

</TabItem>
</Tabs>
