--- 
title: vw_community_galleries
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_community_galleries
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

Creates, updates, deletes, gets or lists a <code>vw_community_galleries</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_community_galleries</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.vw_community_galleries" /></td></tr>
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
JSON_EXTRACT(properties, '$.disclaimer') as "disclaimer",
JSON_EXTRACT(properties, '$.artifactTags') as "artifact_tags",
JSON_EXTRACT(properties, '$.communityMetadata') as "community_metadata",
subscriptionId,
location,
publicGalleryName
FROM azure.compute.community_galleries
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
json_extract_path_text(properties, '$.disclaimer') as "disclaimer",
json_extract_path_text(properties, '$.artifactTags') as "artifact_tags",
json_extract_path_text(properties, '$.communityMetadata') as "community_metadata",
subscriptionId,
location,
publicGalleryName
FROM azure.compute.community_galleries
WHERE subscriptionId = 'replace-me' AND location = 'replace-me' AND publicGalleryName = 'replace-me';
```

</TabItem>
</Tabs>
