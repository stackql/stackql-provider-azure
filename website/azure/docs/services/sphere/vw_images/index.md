--- 
title: vw_images
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_images
  - sphere
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

Creates, updates, deletes, gets or lists a <code>vw_images</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_images</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sphere.vw_images" /></td></tr>
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
JSON_EXTRACT(properties, '$.image') as "image",
JSON_EXTRACT(properties, '$.imageId') as "image_id",
JSON_EXTRACT(properties, '$.imageName') as "image_name",
JSON_EXTRACT(properties, '$.regionalDataBoundary') as "regional_data_boundary",
JSON_EXTRACT(properties, '$.uri') as "uri",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.componentId') as "component_id",
JSON_EXTRACT(properties, '$.imageType') as "image_type",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
catalogName,
imageName
FROM azure.sphere.images
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND catalogName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.image') as "image",
json_extract_path_text(properties, '$.imageId') as "image_id",
json_extract_path_text(properties, '$.imageName') as "image_name",
json_extract_path_text(properties, '$.regionalDataBoundary') as "regional_data_boundary",
json_extract_path_text(properties, '$.uri') as "uri",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.componentId') as "component_id",
json_extract_path_text(properties, '$.imageType') as "image_type",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
catalogName,
imageName
FROM azure.sphere.images
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND catalogName = 'replace-me';
```

</TabItem>
</Tabs>
