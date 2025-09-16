--- 
title: vw_images
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_images
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

Creates, updates, deletes, gets or lists a <code>vw_images</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_images</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_center.vw_images" /></td></tr>
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
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.publisher') as "publisher",
JSON_EXTRACT(properties, '$.offer') as "offer",
JSON_EXTRACT(properties, '$.sku') as "sku",
JSON_EXTRACT(properties, '$.recommendedMachineConfiguration') as "recommended_machine_configuration",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.hibernateSupport') as "hibernate_support",
subscriptionId,
resourceGroupName,
devCenterName,
galleryName,
imageName,
projectName
FROM azure.dev_center.images
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND projectName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.publisher') as "publisher",
json_extract_path_text(properties, '$.offer') as "offer",
json_extract_path_text(properties, '$.sku') as "sku",
json_extract_path_text(properties, '$.recommendedMachineConfiguration') as "recommended_machine_configuration",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.hibernateSupport') as "hibernate_support",
subscriptionId,
resourceGroupName,
devCenterName,
galleryName,
imageName,
projectName
FROM azure.dev_center.images
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND projectName = 'replace-me';
```

</TabItem>
</Tabs>
