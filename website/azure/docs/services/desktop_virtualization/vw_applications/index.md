--- 
title: vw_applications
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_applications
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

Creates, updates, deletes, gets or lists a <code>vw_applications</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_applications</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.desktop_virtualization.vw_applications" /></td></tr>
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
JSON_EXTRACT(properties, '$.objectId') as "object_id",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.friendlyName') as "friendly_name",
JSON_EXTRACT(properties, '$.filePath') as "file_path",
JSON_EXTRACT(properties, '$.msixPackageFamilyName') as "msix_package_family_name",
JSON_EXTRACT(properties, '$.msixPackageApplicationId') as "msix_package_application_id",
JSON_EXTRACT(properties, '$.applicationType') as "application_type",
JSON_EXTRACT(properties, '$.commandLineSetting') as "command_line_setting",
JSON_EXTRACT(properties, '$.commandLineArguments') as "command_line_arguments",
JSON_EXTRACT(properties, '$.showInPortal') as "show_in_portal",
JSON_EXTRACT(properties, '$.iconPath') as "icon_path",
JSON_EXTRACT(properties, '$.iconIndex') as "icon_index",
JSON_EXTRACT(properties, '$.iconHash') as "icon_hash",
JSON_EXTRACT(properties, '$.iconContent') as "icon_content",
subscriptionId,
resourceGroupName,
applicationGroupName,
applicationName
FROM azure.desktop_virtualization.applications
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND applicationGroupName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.objectId') as "object_id",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.friendlyName') as "friendly_name",
json_extract_path_text(properties, '$.filePath') as "file_path",
json_extract_path_text(properties, '$.msixPackageFamilyName') as "msix_package_family_name",
json_extract_path_text(properties, '$.msixPackageApplicationId') as "msix_package_application_id",
json_extract_path_text(properties, '$.applicationType') as "application_type",
json_extract_path_text(properties, '$.commandLineSetting') as "command_line_setting",
json_extract_path_text(properties, '$.commandLineArguments') as "command_line_arguments",
json_extract_path_text(properties, '$.showInPortal') as "show_in_portal",
json_extract_path_text(properties, '$.iconPath') as "icon_path",
json_extract_path_text(properties, '$.iconIndex') as "icon_index",
json_extract_path_text(properties, '$.iconHash') as "icon_hash",
json_extract_path_text(properties, '$.iconContent') as "icon_content",
subscriptionId,
resourceGroupName,
applicationGroupName,
applicationName
FROM azure.desktop_virtualization.applications
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND applicationGroupName = 'replace-me';
```

</TabItem>
</Tabs>
