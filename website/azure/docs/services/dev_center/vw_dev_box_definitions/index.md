--- 
title: vw_dev_box_definitions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_dev_box_definitions
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

Creates, updates, deletes, gets or lists a <code>vw_dev_box_definitions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_dev_box_definitions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_center.vw_dev_box_definitions" /></td></tr>
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
tags as tags,
JSON_EXTRACT(properties, '$.imageReference') as "image_reference",
JSON_EXTRACT(properties, '$.sku') as "sku",
JSON_EXTRACT(properties, '$.osStorageType') as "os_storage_type",
JSON_EXTRACT(properties, '$.hibernateSupport') as "hibernate_support",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.imageValidationStatus') as "image_validation_status",
JSON_EXTRACT(properties, '$.imageValidationErrorDetails') as "image_validation_error_details",
JSON_EXTRACT(properties, '$.validationStatus') as "validation_status",
JSON_EXTRACT(properties, '$.activeImageReference') as "active_image_reference",
subscriptionId,
resourceGroupName,
devCenterName,
devBoxDefinitionName,
projectName
FROM azure.dev_center.dev_box_definitions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND projectName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.imageReference') as "image_reference",
json_extract_path_text(properties, '$.sku') as "sku",
json_extract_path_text(properties, '$.osStorageType') as "os_storage_type",
json_extract_path_text(properties, '$.hibernateSupport') as "hibernate_support",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.imageValidationStatus') as "image_validation_status",
json_extract_path_text(properties, '$.imageValidationErrorDetails') as "image_validation_error_details",
json_extract_path_text(properties, '$.validationStatus') as "validation_status",
json_extract_path_text(properties, '$.activeImageReference') as "active_image_reference",
subscriptionId,
resourceGroupName,
devCenterName,
devBoxDefinitionName,
projectName
FROM azure.dev_center.dev_box_definitions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND projectName = 'replace-me';
```

</TabItem>
</Tabs>
