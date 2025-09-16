--- 
title: vw_watchlists
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_watchlists
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

Creates, updates, deletes, gets or lists a <code>vw_watchlists</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_watchlists</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sentinel.vw_watchlists" /></td></tr>
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
JSON_EXTRACT(properties, '$.watchlistId') as "watchlist_id",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.provider') as "provider",
JSON_EXTRACT(properties, '$.source') as "source",
JSON_EXTRACT(properties, '$.created') as "created",
JSON_EXTRACT(properties, '$.updated') as "updated",
JSON_EXTRACT(properties, '$.createdBy') as "created_by",
JSON_EXTRACT(properties, '$.updatedBy') as "updated_by",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.watchlistType') as "watchlist_type",
JSON_EXTRACT(properties, '$.watchlistAlias') as "watchlist_alias",
JSON_EXTRACT(properties, '$.isDeleted') as "is_deleted",
JSON_EXTRACT(properties, '$.labels') as "labels",
JSON_EXTRACT(properties, '$.defaultDuration') as "default_duration",
JSON_EXTRACT(properties, '$.tenantId') as "tenant_id",
JSON_EXTRACT(properties, '$.numberOfLinesToSkip') as "number_of_lines_to_skip",
JSON_EXTRACT(properties, '$.rawContent') as "raw_content",
JSON_EXTRACT(properties, '$.itemsSearchKey') as "items_search_key",
JSON_EXTRACT(properties, '$.contentType') as "content_type",
JSON_EXTRACT(properties, '$.uploadStatus') as "upload_status",
subscriptionId,
resourceGroupName,
workspaceName,
watchlistAlias
FROM azure.sentinel.watchlists
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
etag as etag,
json_extract_path_text(properties, '$.watchlistId') as "watchlist_id",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.provider') as "provider",
json_extract_path_text(properties, '$.source') as "source",
json_extract_path_text(properties, '$.created') as "created",
json_extract_path_text(properties, '$.updated') as "updated",
json_extract_path_text(properties, '$.createdBy') as "created_by",
json_extract_path_text(properties, '$.updatedBy') as "updated_by",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.watchlistType') as "watchlist_type",
json_extract_path_text(properties, '$.watchlistAlias') as "watchlist_alias",
json_extract_path_text(properties, '$.isDeleted') as "is_deleted",
json_extract_path_text(properties, '$.labels') as "labels",
json_extract_path_text(properties, '$.defaultDuration') as "default_duration",
json_extract_path_text(properties, '$.tenantId') as "tenant_id",
json_extract_path_text(properties, '$.numberOfLinesToSkip') as "number_of_lines_to_skip",
json_extract_path_text(properties, '$.rawContent') as "raw_content",
json_extract_path_text(properties, '$.itemsSearchKey') as "items_search_key",
json_extract_path_text(properties, '$.contentType') as "content_type",
json_extract_path_text(properties, '$.uploadStatus') as "upload_status",
subscriptionId,
resourceGroupName,
workspaceName,
watchlistAlias
FROM azure.sentinel.watchlists
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
