--- 
title: vw_videos
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_videos
  - video_analyzer
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

Creates, updates, deletes, gets or lists a <code>vw_videos</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_videos</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.video_analyzer.vw_videos" /></td></tr>
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
JSON_EXTRACT(properties, '$.title') as "title",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.type') as "type",
JSON_EXTRACT(properties, '$.flags') as "flags",
JSON_EXTRACT(properties, '$.contentUrls') as "content_urls",
JSON_EXTRACT(properties, '$.mediaInfo') as "media_info",
JSON_EXTRACT(properties, '$.archival') as "archival",
subscriptionId,
resourceGroupName,
accountName,
videoName
FROM azure.video_analyzer.videos
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.title') as "title",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.type') as "type",
json_extract_path_text(properties, '$.flags') as "flags",
json_extract_path_text(properties, '$.contentUrls') as "content_urls",
json_extract_path_text(properties, '$.mediaInfo') as "media_info",
json_extract_path_text(properties, '$.archival') as "archival",
subscriptionId,
resourceGroupName,
accountName,
videoName
FROM azure.video_analyzer.videos
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
