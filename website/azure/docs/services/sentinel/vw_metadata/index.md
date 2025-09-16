--- 
title: vw_metadata
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_metadata
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

Creates, updates, deletes, gets or lists a <code>vw_metadata</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_metadata</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sentinel.vw_metadata" /></td></tr>
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
JSON_EXTRACT(properties, '$.contentId') as "content_id",
JSON_EXTRACT(properties, '$.parentId') as "parent_id",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.kind') as "kind",
JSON_EXTRACT(properties, '$.source') as "source",
JSON_EXTRACT(properties, '$.author') as "author",
JSON_EXTRACT(properties, '$.support') as "support",
JSON_EXTRACT(properties, '$.dependencies') as "dependencies",
JSON_EXTRACT(properties, '$.categories') as "categories",
JSON_EXTRACT(properties, '$.providers') as "providers",
JSON_EXTRACT(properties, '$.firstPublishDate') as "first_publish_date",
JSON_EXTRACT(properties, '$.lastPublishDate') as "last_publish_date",
JSON_EXTRACT(properties, '$.customVersion') as "custom_version",
JSON_EXTRACT(properties, '$.contentSchemaVersion') as "content_schema_version",
JSON_EXTRACT(properties, '$.icon') as "icon",
JSON_EXTRACT(properties, '$.threatAnalysisTactics') as "threat_analysis_tactics",
JSON_EXTRACT(properties, '$.threatAnalysisTechniques') as "threat_analysis_techniques",
JSON_EXTRACT(properties, '$.previewImages') as "preview_images",
JSON_EXTRACT(properties, '$.previewImagesDark') as "preview_images_dark",
subscriptionId,
resourceGroupName,
workspaceName,
metadataName
FROM azure.sentinel.metadata
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
etag as etag,
json_extract_path_text(properties, '$.contentId') as "content_id",
json_extract_path_text(properties, '$.parentId') as "parent_id",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.kind') as "kind",
json_extract_path_text(properties, '$.source') as "source",
json_extract_path_text(properties, '$.author') as "author",
json_extract_path_text(properties, '$.support') as "support",
json_extract_path_text(properties, '$.dependencies') as "dependencies",
json_extract_path_text(properties, '$.categories') as "categories",
json_extract_path_text(properties, '$.providers') as "providers",
json_extract_path_text(properties, '$.firstPublishDate') as "first_publish_date",
json_extract_path_text(properties, '$.lastPublishDate') as "last_publish_date",
json_extract_path_text(properties, '$.customVersion') as "custom_version",
json_extract_path_text(properties, '$.contentSchemaVersion') as "content_schema_version",
json_extract_path_text(properties, '$.icon') as "icon",
json_extract_path_text(properties, '$.threatAnalysisTactics') as "threat_analysis_tactics",
json_extract_path_text(properties, '$.threatAnalysisTechniques') as "threat_analysis_techniques",
json_extract_path_text(properties, '$.previewImages') as "preview_images",
json_extract_path_text(properties, '$.previewImagesDark') as "preview_images_dark",
subscriptionId,
resourceGroupName,
workspaceName,
metadataName
FROM azure.sentinel.metadata
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
