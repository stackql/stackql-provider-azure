--- 
title: vw_community_gallery_images
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_community_gallery_images
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

Creates, updates, deletes, gets or lists a <code>vw_community_gallery_images</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_community_gallery_images</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.vw_community_gallery_images" /></td></tr>
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
JSON_EXTRACT(properties, '$.osType') as "os_type",
JSON_EXTRACT(properties, '$.osState') as "os_state",
JSON_EXTRACT(properties, '$.endOfLifeDate') as "end_of_life_date",
JSON_EXTRACT(properties, '$.identifier') as "identifier",
JSON_EXTRACT(properties, '$.recommended') as "recommended",
JSON_EXTRACT(properties, '$.disallowed') as "disallowed",
JSON_EXTRACT(properties, '$.hyperVGeneration') as "hyper_v_generation",
JSON_EXTRACT(properties, '$.features') as "features",
JSON_EXTRACT(properties, '$.purchasePlan') as "purchase_plan",
JSON_EXTRACT(properties, '$.architecture') as "architecture",
JSON_EXTRACT(properties, '$.privacyStatementUri') as "privacy_statement_uri",
JSON_EXTRACT(properties, '$.eula') as "eula",
JSON_EXTRACT(properties, '$.disclaimer') as "disclaimer",
JSON_EXTRACT(properties, '$.artifactTags') as "artifact_tags",
subscriptionId,
location,
publicGalleryName,
galleryImageName
FROM azure.compute.community_gallery_images
WHERE subscriptionId = 'replace-me' AND location = 'replace-me' AND publicGalleryName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
name as name,
location as location,
type as type,
identifier as identifier,
json_extract_path_text(properties, '$.osType') as "os_type",
json_extract_path_text(properties, '$.osState') as "os_state",
json_extract_path_text(properties, '$.endOfLifeDate') as "end_of_life_date",
json_extract_path_text(properties, '$.identifier') as "identifier",
json_extract_path_text(properties, '$.recommended') as "recommended",
json_extract_path_text(properties, '$.disallowed') as "disallowed",
json_extract_path_text(properties, '$.hyperVGeneration') as "hyper_v_generation",
json_extract_path_text(properties, '$.features') as "features",
json_extract_path_text(properties, '$.purchasePlan') as "purchase_plan",
json_extract_path_text(properties, '$.architecture') as "architecture",
json_extract_path_text(properties, '$.privacyStatementUri') as "privacy_statement_uri",
json_extract_path_text(properties, '$.eula') as "eula",
json_extract_path_text(properties, '$.disclaimer') as "disclaimer",
json_extract_path_text(properties, '$.artifactTags') as "artifact_tags",
subscriptionId,
location,
publicGalleryName,
galleryImageName
FROM azure.compute.community_gallery_images
WHERE subscriptionId = 'replace-me' AND location = 'replace-me' AND publicGalleryName = 'replace-me';
```

</TabItem>
</Tabs>
