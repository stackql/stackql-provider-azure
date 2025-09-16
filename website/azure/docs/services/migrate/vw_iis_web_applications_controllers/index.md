--- 
title: vw_iis_web_applications_controllers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_iis_web_applications_controllers
  - migrate
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

Creates, updates, deletes, gets or lists a <code>vw_iis_web_applications_controllers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_iis_web_applications_controllers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.migrate.vw_iis_web_applications_controllers" /></td></tr>
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
JSON_EXTRACT(properties, '$.applications') as "applications",
JSON_EXTRACT(properties, '$.virtualApplications') as "virtual_applications",
JSON_EXTRACT(properties, '$.webServerId') as "web_server_id",
JSON_EXTRACT(properties, '$.webServerName') as "web_server_name",
JSON_EXTRACT(properties, '$.machineArmIds') as "machine_arm_ids",
JSON_EXTRACT(properties, '$.virtualPath') as "virtual_path",
JSON_EXTRACT(properties, '$.physicalPath') as "physical_path",
JSON_EXTRACT(properties, '$.bindings') as "bindings",
JSON_EXTRACT(properties, '$.frameworks') as "frameworks",
JSON_EXTRACT(properties, '$.configurations') as "configurations",
JSON_EXTRACT(properties, '$.directories') as "directories",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.tags') as "tags",
JSON_EXTRACT(properties, '$.staticFolders') as "static_folders",
JSON_EXTRACT(properties, '$.machineDisplayName') as "machine_display_name",
JSON_EXTRACT(properties, '$.isDeleted') as "is_deleted",
JSON_EXTRACT(properties, '$.createdTimestamp') as "created_timestamp",
JSON_EXTRACT(properties, '$.updatedTimestamp') as "updated_timestamp",
JSON_EXTRACT(properties, '$.serverType') as "server_type",
JSON_EXTRACT(properties, '$.errors') as "errors",
JSON_EXTRACT(properties, '$.applianceNames') as "appliance_names",
JSON_EXTRACT(properties, '$.hasErrors') as "has_errors",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
siteName,
webAppSiteName,
webApplicationName
FROM azure.migrate.iis_web_applications_controllers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND siteName = 'replace-me' AND webAppSiteName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.applications') as "applications",
json_extract_path_text(properties, '$.virtualApplications') as "virtual_applications",
json_extract_path_text(properties, '$.webServerId') as "web_server_id",
json_extract_path_text(properties, '$.webServerName') as "web_server_name",
json_extract_path_text(properties, '$.machineArmIds') as "machine_arm_ids",
json_extract_path_text(properties, '$.virtualPath') as "virtual_path",
json_extract_path_text(properties, '$.physicalPath') as "physical_path",
json_extract_path_text(properties, '$.bindings') as "bindings",
json_extract_path_text(properties, '$.frameworks') as "frameworks",
json_extract_path_text(properties, '$.configurations') as "configurations",
json_extract_path_text(properties, '$.directories') as "directories",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.tags') as "tags",
json_extract_path_text(properties, '$.staticFolders') as "static_folders",
json_extract_path_text(properties, '$.machineDisplayName') as "machine_display_name",
json_extract_path_text(properties, '$.isDeleted') as "is_deleted",
json_extract_path_text(properties, '$.createdTimestamp') as "created_timestamp",
json_extract_path_text(properties, '$.updatedTimestamp') as "updated_timestamp",
json_extract_path_text(properties, '$.serverType') as "server_type",
json_extract_path_text(properties, '$.errors') as "errors",
json_extract_path_text(properties, '$.applianceNames') as "appliance_names",
json_extract_path_text(properties, '$.hasErrors') as "has_errors",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
siteName,
webAppSiteName,
webApplicationName
FROM azure.migrate.iis_web_applications_controllers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND siteName = 'replace-me' AND webAppSiteName = 'replace-me';
```

</TabItem>
</Tabs>
