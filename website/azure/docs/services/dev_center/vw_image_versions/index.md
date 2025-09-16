--- 
title: vw_image_versions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_image_versions
  - dev_center
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

Creates, updates, deletes, gets or lists a <code>vw_image_versions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_image_versions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_center.vw_image_versions" /></td></tr>
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
JSON_EXTRACT(properties, '$.name') as "name",
JSON_EXTRACT(properties, '$.publishedDate') as "published_date",
JSON_EXTRACT(properties, '$.excludeFromLatest') as "exclude_from_latest",
JSON_EXTRACT(properties, '$.osDiskImageSizeInGb') as "os_disk_image_size_in_gb",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
devCenterName,
galleryName,
imageName,
versionName,
projectName
FROM azure.dev_center.image_versions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND projectName = 'replace-me' AND imageName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.name') as "name",
json_extract_path_text(properties, '$.publishedDate') as "published_date",
json_extract_path_text(properties, '$.excludeFromLatest') as "exclude_from_latest",
json_extract_path_text(properties, '$.osDiskImageSizeInGb') as "os_disk_image_size_in_gb",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
devCenterName,
galleryName,
imageName,
versionName,
projectName
FROM azure.dev_center.image_versions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND projectName = 'replace-me' AND imageName = 'replace-me';
```

</TabItem>
</Tabs>
