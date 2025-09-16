--- 
title: vw_custom_images
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_custom_images
  - test_base
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_custom_images</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_custom_images</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.test_base.vw_custom_images" /></td></tr>
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
JSON_EXTRACT(properties, '$.vhdId') as "vhd_id",
JSON_EXTRACT(properties, '$.definitionName') as "definition_name",
JSON_EXTRACT(properties, '$.versionName') as "version_name",
JSON_EXTRACT(properties, '$.source') as "source",
JSON_EXTRACT(properties, '$.product') as "product",
JSON_EXTRACT(properties, '$.release') as "release",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.creationTime') as "creation_time",
JSON_EXTRACT(properties, '$.validationResults') as "validation_results",
JSON_EXTRACT(properties, '$.osDiskImageSizeInGB') as "os_disk_image_size_in_gb",
JSON_EXTRACT(properties, '$.releaseVersionDate') as "release_version_date",
JSON_EXTRACT(properties, '$.vhdFileName') as "vhd_file_name",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
testBaseAccountName,
customImageName
FROM azure_extras.test_base.custom_images
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND testBaseAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.vhdId') as "vhd_id",
json_extract_path_text(properties, '$.definitionName') as "definition_name",
json_extract_path_text(properties, '$.versionName') as "version_name",
json_extract_path_text(properties, '$.source') as "source",
json_extract_path_text(properties, '$.product') as "product",
json_extract_path_text(properties, '$.release') as "release",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.creationTime') as "creation_time",
json_extract_path_text(properties, '$.validationResults') as "validation_results",
json_extract_path_text(properties, '$.osDiskImageSizeInGB') as "os_disk_image_size_in_gb",
json_extract_path_text(properties, '$.releaseVersionDate') as "release_version_date",
json_extract_path_text(properties, '$.vhdFileName') as "vhd_file_name",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
testBaseAccountName,
customImageName
FROM azure_extras.test_base.custom_images
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND testBaseAccountName = 'replace-me';
```

</TabItem>
</Tabs>
