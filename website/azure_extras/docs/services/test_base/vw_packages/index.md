--- 
title: vw_packages
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_packages
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

Creates, updates, deletes, gets or lists a <code>vw_packages</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_packages</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.test_base.vw_packages" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.applicationName') as "application_name",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.draftPackageId') as "draft_package_id",
JSON_EXTRACT(properties, '$.packageStatus') as "package_status",
JSON_EXTRACT(properties, '$.isEnabled') as "is_enabled",
JSON_EXTRACT(properties, '$.blobPath') as "blob_path",
JSON_EXTRACT(properties, '$.validationResults') as "validation_results",
JSON_EXTRACT(properties, '$.testTypes') as "test_types",
JSON_EXTRACT(properties, '$.targetOSList') as "target_os_list",
JSON_EXTRACT(properties, '$.inplaceUpgradeOSPair') as "inplace_upgrade_os_pair",
JSON_EXTRACT(properties, '$.lastModifiedTime') as "last_modified_time",
JSON_EXTRACT(properties, '$.flightingRing') as "flighting_ring",
JSON_EXTRACT(properties, '$.firstPartyApps') as "first_party_apps",
JSON_EXTRACT(properties, '$.galleryApps') as "gallery_apps",
JSON_EXTRACT(properties, '$.tests') as "tests",
JSON_EXTRACT(properties, '$.intuneEnrollmentMetadata') as "intune_enrollment_metadata",
subscriptionId,
resourceGroupName,
testBaseAccountName,
packageName
FROM azure_extras.test_base.packages
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND testBaseAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.applicationName') as "application_name",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.draftPackageId') as "draft_package_id",
json_extract_path_text(properties, '$.packageStatus') as "package_status",
json_extract_path_text(properties, '$.isEnabled') as "is_enabled",
json_extract_path_text(properties, '$.blobPath') as "blob_path",
json_extract_path_text(properties, '$.validationResults') as "validation_results",
json_extract_path_text(properties, '$.testTypes') as "test_types",
json_extract_path_text(properties, '$.targetOSList') as "target_os_list",
json_extract_path_text(properties, '$.inplaceUpgradeOSPair') as "inplace_upgrade_os_pair",
json_extract_path_text(properties, '$.lastModifiedTime') as "last_modified_time",
json_extract_path_text(properties, '$.flightingRing') as "flighting_ring",
json_extract_path_text(properties, '$.firstPartyApps') as "first_party_apps",
json_extract_path_text(properties, '$.galleryApps') as "gallery_apps",
json_extract_path_text(properties, '$.tests') as "tests",
json_extract_path_text(properties, '$.intuneEnrollmentMetadata') as "intune_enrollment_metadata",
subscriptionId,
resourceGroupName,
testBaseAccountName,
packageName
FROM azure_extras.test_base.packages
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND testBaseAccountName = 'replace-me';
```

</TabItem>
</Tabs>
