--- 
title: vw_bookmarks
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_bookmarks
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

Creates, updates, deletes, gets or lists a <code>vw_bookmarks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_bookmarks</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sentinel.vw_bookmarks" /></td></tr>
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
JSON_EXTRACT(properties, '$.created') as "created",
JSON_EXTRACT(properties, '$.createdBy') as "created_by",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.labels') as "labels",
JSON_EXTRACT(properties, '$.notes') as "notes",
JSON_EXTRACT(properties, '$.query') as "query",
JSON_EXTRACT(properties, '$.queryResult') as "query_result",
JSON_EXTRACT(properties, '$.updated') as "updated",
JSON_EXTRACT(properties, '$.updatedBy') as "updated_by",
JSON_EXTRACT(properties, '$.eventTime') as "event_time",
JSON_EXTRACT(properties, '$.queryStartTime') as "query_start_time",
JSON_EXTRACT(properties, '$.queryEndTime') as "query_end_time",
JSON_EXTRACT(properties, '$.incidentInfo') as "incident_info",
subscriptionId,
resourceGroupName,
workspaceName,
bookmarkId
FROM azure.sentinel.bookmarks
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
etag as etag,
json_extract_path_text(properties, '$.created') as "created",
json_extract_path_text(properties, '$.createdBy') as "created_by",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.labels') as "labels",
json_extract_path_text(properties, '$.notes') as "notes",
json_extract_path_text(properties, '$.query') as "query",
json_extract_path_text(properties, '$.queryResult') as "query_result",
json_extract_path_text(properties, '$.updated') as "updated",
json_extract_path_text(properties, '$.updatedBy') as "updated_by",
json_extract_path_text(properties, '$.eventTime') as "event_time",
json_extract_path_text(properties, '$.queryStartTime') as "query_start_time",
json_extract_path_text(properties, '$.queryEndTime') as "query_end_time",
json_extract_path_text(properties, '$.incidentInfo') as "incident_info",
subscriptionId,
resourceGroupName,
workspaceName,
bookmarkId
FROM azure.sentinel.bookmarks
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
