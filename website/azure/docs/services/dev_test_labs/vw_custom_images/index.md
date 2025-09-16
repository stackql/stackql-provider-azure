--- 
title: vw_custom_images
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_custom_images
  - dev_test_labs
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

Creates, updates, deletes, gets or lists a <code>vw_custom_images</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_custom_images</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_test_labs.vw_custom_images" /></td></tr>
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
JSON_EXTRACT(properties, '$.vm') as "vm",
JSON_EXTRACT(properties, '$.vhd') as "vhd",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.author') as "author",
JSON_EXTRACT(properties, '$.creationDate') as "creation_date",
JSON_EXTRACT(properties, '$.managedImageId') as "managed_image_id",
JSON_EXTRACT(properties, '$.managedSnapshotId') as "managed_snapshot_id",
JSON_EXTRACT(properties, '$.dataDiskStorageInfo') as "data_disk_storage_info",
JSON_EXTRACT(properties, '$.customImagePlan') as "custom_image_plan",
JSON_EXTRACT(properties, '$.isPlanAuthorized') as "is_plan_authorized",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.uniqueIdentifier') as "unique_identifier",
subscriptionId,
resourceGroupName,
labName,
name
FROM azure.dev_test_labs.custom_images
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND labName = 'replace-me';
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
json_extract_path_text(properties, '$.vm') as "vm",
json_extract_path_text(properties, '$.vhd') as "vhd",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.author') as "author",
json_extract_path_text(properties, '$.creationDate') as "creation_date",
json_extract_path_text(properties, '$.managedImageId') as "managed_image_id",
json_extract_path_text(properties, '$.managedSnapshotId') as "managed_snapshot_id",
json_extract_path_text(properties, '$.dataDiskStorageInfo') as "data_disk_storage_info",
json_extract_path_text(properties, '$.customImagePlan') as "custom_image_plan",
json_extract_path_text(properties, '$.isPlanAuthorized') as "is_plan_authorized",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.uniqueIdentifier') as "unique_identifier",
subscriptionId,
resourceGroupName,
labName,
name
FROM azure.dev_test_labs.custom_images
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND labName = 'replace-me';
```

</TabItem>
</Tabs>
