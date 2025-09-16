--- 
title: vw_msix_packages
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_msix_packages
  - desktop_virtualization
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

Creates, updates, deletes, gets or lists a <code>vw_msix_packages</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_msix_packages</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.desktop_virtualization.vw_msix_packages" /></td></tr>
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
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.imagePath') as "image_path",
JSON_EXTRACT(properties, '$.packageName') as "package_name",
JSON_EXTRACT(properties, '$.packageFamilyName') as "package_family_name",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.packageRelativePath') as "package_relative_path",
JSON_EXTRACT(properties, '$.isRegularRegistration') as "is_regular_registration",
JSON_EXTRACT(properties, '$.isActive') as "is_active",
JSON_EXTRACT(properties, '$.packageDependencies') as "package_dependencies",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.lastUpdated') as "last_updated",
JSON_EXTRACT(properties, '$.packageApplications') as "package_applications",
subscriptionId,
resourceGroupName,
hostPoolName,
msixPackageFullName
FROM azure.desktop_virtualization.msix_packages
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND hostPoolName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.imagePath') as "image_path",
json_extract_path_text(properties, '$.packageName') as "package_name",
json_extract_path_text(properties, '$.packageFamilyName') as "package_family_name",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.packageRelativePath') as "package_relative_path",
json_extract_path_text(properties, '$.isRegularRegistration') as "is_regular_registration",
json_extract_path_text(properties, '$.isActive') as "is_active",
json_extract_path_text(properties, '$.packageDependencies') as "package_dependencies",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.lastUpdated') as "last_updated",
json_extract_path_text(properties, '$.packageApplications') as "package_applications",
subscriptionId,
resourceGroupName,
hostPoolName,
msixPackageFullName
FROM azure.desktop_virtualization.msix_packages
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND hostPoolName = 'replace-me';
```

</TabItem>
</Tabs>
