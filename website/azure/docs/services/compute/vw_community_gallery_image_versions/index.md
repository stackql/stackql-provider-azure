--- 
title: vw_community_gallery_image_versions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_community_gallery_image_versions
  - compute
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

Creates, updates, deletes, gets or lists a <code>vw_community_gallery_image_versions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_community_gallery_image_versions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.vw_community_gallery_image_versions" /></td></tr>
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
name as name,
location as location,
type as type,
identifier as identifier,
JSON_EXTRACT(properties, '$.publishedDate') as "published_date",
JSON_EXTRACT(properties, '$.endOfLifeDate') as "end_of_life_date",
JSON_EXTRACT(properties, '$.excludeFromLatest') as "exclude_from_latest",
JSON_EXTRACT(properties, '$.storageProfile') as "storage_profile",
JSON_EXTRACT(properties, '$.disclaimer') as "disclaimer",
JSON_EXTRACT(properties, '$.artifactTags') as "artifact_tags",
subscriptionId,
location,
publicGalleryName,
galleryImageName,
galleryImageVersionName
FROM azure.compute.community_gallery_image_versions
WHERE subscriptionId = 'replace-me' AND location = 'replace-me' AND publicGalleryName = 'replace-me' AND galleryImageName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
name as name,
location as location,
type as type,
identifier as identifier,
json_extract_path_text(properties, '$.publishedDate') as "published_date",
json_extract_path_text(properties, '$.endOfLifeDate') as "end_of_life_date",
json_extract_path_text(properties, '$.excludeFromLatest') as "exclude_from_latest",
json_extract_path_text(properties, '$.storageProfile') as "storage_profile",
json_extract_path_text(properties, '$.disclaimer') as "disclaimer",
json_extract_path_text(properties, '$.artifactTags') as "artifact_tags",
subscriptionId,
location,
publicGalleryName,
galleryImageName,
galleryImageVersionName
FROM azure.compute.community_gallery_image_versions
WHERE subscriptionId = 'replace-me' AND location = 'replace-me' AND publicGalleryName = 'replace-me' AND galleryImageName = 'replace-me';
```

</TabItem>
</Tabs>
