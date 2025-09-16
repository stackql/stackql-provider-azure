--- 
title: vw_gallery_application_versions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_gallery_application_versions
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

Creates, updates, deletes, gets or lists a <code>vw_gallery_application_versions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_gallery_application_versions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.vw_gallery_application_versions" /></td></tr>
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
JSON_EXTRACT(properties, '$.publishingProfile') as "publishing_profile",
JSON_EXTRACT(properties, '$.safetyProfile') as "safety_profile",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.replicationStatus') as "replication_status",
subscriptionId,
resourceGroupName,
galleryName,
galleryApplicationName,
galleryApplicationVersionName
FROM azure.compute.gallery_application_versions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND galleryName = 'replace-me' AND galleryApplicationName = 'replace-me';
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
json_extract_path_text(properties, '$.publishingProfile') as "publishing_profile",
json_extract_path_text(properties, '$.safetyProfile') as "safety_profile",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.replicationStatus') as "replication_status",
subscriptionId,
resourceGroupName,
galleryName,
galleryApplicationName,
galleryApplicationVersionName
FROM azure.compute.gallery_application_versions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND galleryName = 'replace-me' AND galleryApplicationName = 'replace-me';
```

</TabItem>
</Tabs>
