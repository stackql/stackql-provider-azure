--- 
title: vw_product_packages
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_product_packages
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

Creates, updates, deletes, gets or lists a <code>vw_product_packages</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_product_packages</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sentinel.vw_product_packages" /></td></tr>
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
JSON_EXTRACT(properties, '$.contentProductId') as "content_product_id",
JSON_EXTRACT(properties, '$.contentKind') as "content_kind",
JSON_EXTRACT(properties, '$.contentSchemaVersion') as "content_schema_version",
JSON_EXTRACT(properties, '$.isNew') as "is_new",
JSON_EXTRACT(properties, '$.isPreview') as "is_preview",
JSON_EXTRACT(properties, '$.isFeatured') as "is_featured",
JSON_EXTRACT(properties, '$.isDeprecated') as "is_deprecated",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.publisherDisplayName') as "publisher_display_name",
JSON_EXTRACT(properties, '$.source') as "source",
JSON_EXTRACT(properties, '$.author') as "author",
JSON_EXTRACT(properties, '$.support') as "support",
JSON_EXTRACT(properties, '$.dependencies') as "dependencies",
JSON_EXTRACT(properties, '$.providers') as "providers",
JSON_EXTRACT(properties, '$.firstPublishDate') as "first_publish_date",
JSON_EXTRACT(properties, '$.lastPublishDate') as "last_publish_date",
JSON_EXTRACT(properties, '$.categories') as "categories",
JSON_EXTRACT(properties, '$.threatAnalysisTactics') as "threat_analysis_tactics",
JSON_EXTRACT(properties, '$.threatAnalysisTechniques') as "threat_analysis_techniques",
JSON_EXTRACT(properties, '$.icon') as "icon",
JSON_EXTRACT(properties, '$.installedVersion') as "installed_version",
JSON_EXTRACT(properties, '$.metadataResourceId') as "metadata_resource_id",
JSON_EXTRACT(properties, '$.packagedContent') as "packaged_content",
subscriptionId,
resourceGroupName,
workspaceName,
packageId
FROM azure.sentinel.product_packages
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
etag as etag,
json_extract_path_text(properties, '$.contentId') as "content_id",
json_extract_path_text(properties, '$.contentProductId') as "content_product_id",
json_extract_path_text(properties, '$.contentKind') as "content_kind",
json_extract_path_text(properties, '$.contentSchemaVersion') as "content_schema_version",
json_extract_path_text(properties, '$.isNew') as "is_new",
json_extract_path_text(properties, '$.isPreview') as "is_preview",
json_extract_path_text(properties, '$.isFeatured') as "is_featured",
json_extract_path_text(properties, '$.isDeprecated') as "is_deprecated",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.publisherDisplayName') as "publisher_display_name",
json_extract_path_text(properties, '$.source') as "source",
json_extract_path_text(properties, '$.author') as "author",
json_extract_path_text(properties, '$.support') as "support",
json_extract_path_text(properties, '$.dependencies') as "dependencies",
json_extract_path_text(properties, '$.providers') as "providers",
json_extract_path_text(properties, '$.firstPublishDate') as "first_publish_date",
json_extract_path_text(properties, '$.lastPublishDate') as "last_publish_date",
json_extract_path_text(properties, '$.categories') as "categories",
json_extract_path_text(properties, '$.threatAnalysisTactics') as "threat_analysis_tactics",
json_extract_path_text(properties, '$.threatAnalysisTechniques') as "threat_analysis_techniques",
json_extract_path_text(properties, '$.icon') as "icon",
json_extract_path_text(properties, '$.installedVersion') as "installed_version",
json_extract_path_text(properties, '$.metadataResourceId') as "metadata_resource_id",
json_extract_path_text(properties, '$.packagedContent') as "packaged_content",
subscriptionId,
resourceGroupName,
workspaceName,
packageId
FROM azure.sentinel.product_packages
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workspaceName = 'replace-me';
```

</TabItem>
</Tabs>
