--- 
title: vw_gallery_images
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_gallery_images
  - azure_stack_hci
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

Creates, updates, deletes, gets or lists a <code>vw_gallery_images</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_gallery_images</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.azure_stack_hci.vw_gallery_images" /></td></tr>
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
location as location,
extendedLocation as extended_location,
tags as tags,
JSON_EXTRACT(properties, '$.containerId') as "container_id",
JSON_EXTRACT(properties, '$.imagePath') as "image_path",
JSON_EXTRACT(properties, '$.osType') as "os_type",
JSON_EXTRACT(properties, '$.cloudInitDataSource') as "cloud_init_data_source",
JSON_EXTRACT(properties, '$.hyperVGeneration') as "hyper_v_generation",
JSON_EXTRACT(properties, '$.identifier') as "identifier",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.status') as "status",
subscriptionId,
resourceGroupName,
galleryImageName
FROM azure_stack.azure_stack_hci.gallery_images
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
extendedLocation as extended_location,
tags as tags,
json_extract_path_text(properties, '$.containerId') as "container_id",
json_extract_path_text(properties, '$.imagePath') as "image_path",
json_extract_path_text(properties, '$.osType') as "os_type",
json_extract_path_text(properties, '$.cloudInitDataSource') as "cloud_init_data_source",
json_extract_path_text(properties, '$.hyperVGeneration') as "hyper_v_generation",
json_extract_path_text(properties, '$.identifier') as "identifier",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.status') as "status",
subscriptionId,
resourceGroupName,
galleryImageName
FROM azure_stack.azure_stack_hci.gallery_images
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
