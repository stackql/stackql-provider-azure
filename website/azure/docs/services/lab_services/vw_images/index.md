--- 
title: vw_images
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_images
  - lab_services
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.lab_services.vw_images" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.enabledState') as "enabled_state",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.iconUrl') as "icon_url",
JSON_EXTRACT(properties, '$.author') as "author",
JSON_EXTRACT(properties, '$.osType') as "os_type",
JSON_EXTRACT(properties, '$.plan') as "plan",
JSON_EXTRACT(properties, '$.termsStatus') as "terms_status",
JSON_EXTRACT(properties, '$.offer') as "offer",
JSON_EXTRACT(properties, '$.publisher') as "publisher",
JSON_EXTRACT(properties, '$.sku') as "sku",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.sharedGalleryId') as "shared_gallery_id",
JSON_EXTRACT(properties, '$.availableRegions') as "available_regions",
JSON_EXTRACT(properties, '$.osState') as "os_state",
subscriptionId,
resourceGroupName,
labPlanName,
imageName
FROM azure.lab_services.images
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND labPlanName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.enabledState') as "enabled_state",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.iconUrl') as "icon_url",
json_extract_path_text(properties, '$.author') as "author",
json_extract_path_text(properties, '$.osType') as "os_type",
json_extract_path_text(properties, '$.plan') as "plan",
json_extract_path_text(properties, '$.termsStatus') as "terms_status",
json_extract_path_text(properties, '$.offer') as "offer",
json_extract_path_text(properties, '$.publisher') as "publisher",
json_extract_path_text(properties, '$.sku') as "sku",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.sharedGalleryId') as "shared_gallery_id",
json_extract_path_text(properties, '$.availableRegions') as "available_regions",
json_extract_path_text(properties, '$.osState') as "os_state",
subscriptionId,
resourceGroupName,
labPlanName,
imageName
FROM azure.lab_services.images
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND labPlanName = 'replace-me';
```

</TabItem>
</Tabs>
