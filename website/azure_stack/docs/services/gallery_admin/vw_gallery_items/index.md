--- 
title: vw_gallery_items
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_gallery_items
  - gallery_admin
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

Creates, updates, deletes, gets or lists a <code>vw_gallery_items</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_gallery_items</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.gallery_admin.vw_gallery_items" /></td></tr>
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
location as location,
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.identity') as "identity",
JSON_EXTRACT(properties, '$.publisher') as "publisher",
JSON_EXTRACT(properties, '$.publisherDisplayName') as "publisher_display_name",
JSON_EXTRACT(properties, '$.itemName') as "item_name",
JSON_EXTRACT(properties, '$.itemDisplayName') as "item_display_name",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.summary') as "summary",
JSON_EXTRACT(properties, '$.longSummary') as "long_summary",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.uiDefinitionUri') as "ui_definition_uri",
JSON_EXTRACT(properties, '$.createdTime') as "created_time",
JSON_EXTRACT(properties, '$.changedTime') as "changed_time",
JSON_EXTRACT(properties, '$.marketingMaterial') as "marketing_material",
JSON_EXTRACT(properties, '$.itemType') as "item_type",
JSON_EXTRACT(properties, '$.categoryIds') as "category_ids",
JSON_EXTRACT(properties, '$.screenshotUris') as "screenshot_uris",
JSON_EXTRACT(properties, '$.links') as "links",
JSON_EXTRACT(properties, '$.filters') as "filters",
JSON_EXTRACT(properties, '$.iconFileUris') as "icon_file_uris",
JSON_EXTRACT(properties, '$.artifacts') as "artifacts",
JSON_EXTRACT(properties, '$.metadata') as "metadata",
JSON_EXTRACT(properties, '$.properties') as "properties",
JSON_EXTRACT(properties, '$.images') as "images",
JSON_EXTRACT(properties, '$.products') as "products",
JSON_EXTRACT(properties, '$.resourceGroupName') as "resource_group_name",
JSON_EXTRACT(properties, '$.definitionTemplates') as "definition_templates",
JSON_EXTRACT(properties, '$.additionalProperties') as "additional_properties",
subscriptionId,
galleryItemName
FROM azure_stack.gallery_admin.gallery_items
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
tags as tags,
json_extract_path_text(properties, '$.identity') as "identity",
json_extract_path_text(properties, '$.publisher') as "publisher",
json_extract_path_text(properties, '$.publisherDisplayName') as "publisher_display_name",
json_extract_path_text(properties, '$.itemName') as "item_name",
json_extract_path_text(properties, '$.itemDisplayName') as "item_display_name",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.summary') as "summary",
json_extract_path_text(properties, '$.longSummary') as "long_summary",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.uiDefinitionUri') as "ui_definition_uri",
json_extract_path_text(properties, '$.createdTime') as "created_time",
json_extract_path_text(properties, '$.changedTime') as "changed_time",
json_extract_path_text(properties, '$.marketingMaterial') as "marketing_material",
json_extract_path_text(properties, '$.itemType') as "item_type",
json_extract_path_text(properties, '$.categoryIds') as "category_ids",
json_extract_path_text(properties, '$.screenshotUris') as "screenshot_uris",
json_extract_path_text(properties, '$.links') as "links",
json_extract_path_text(properties, '$.filters') as "filters",
json_extract_path_text(properties, '$.iconFileUris') as "icon_file_uris",
json_extract_path_text(properties, '$.artifacts') as "artifacts",
json_extract_path_text(properties, '$.metadata') as "metadata",
json_extract_path_text(properties, '$.properties') as "properties",
json_extract_path_text(properties, '$.images') as "images",
json_extract_path_text(properties, '$.products') as "products",
json_extract_path_text(properties, '$.resourceGroupName') as "resource_group_name",
json_extract_path_text(properties, '$.definitionTemplates') as "definition_templates",
json_extract_path_text(properties, '$.additionalProperties') as "additional_properties",
subscriptionId,
galleryItemName
FROM azure_stack.gallery_admin.gallery_items
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
