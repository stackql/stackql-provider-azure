--- 
title: vw_application_definitions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_application_definitions
  - managed_applications
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

Creates, updates, deletes, gets or lists a <code>vw_application_definitions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_application_definitions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_applications.vw_application_definitions" /></td></tr>
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
managedBy as managed_by,
sku as sku,
JSON_EXTRACT(properties, '$.lockLevel') as "lock_level",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.isEnabled') as "is_enabled",
JSON_EXTRACT(properties, '$.authorizations') as "authorizations",
JSON_EXTRACT(properties, '$.artifacts') as "artifacts",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.packageFileUri') as "package_file_uri",
JSON_EXTRACT(properties, '$.storageAccountId') as "storage_account_id",
JSON_EXTRACT(properties, '$.mainTemplate') as "main_template",
JSON_EXTRACT(properties, '$.createUiDefinition') as "create_ui_definition",
JSON_EXTRACT(properties, '$.notificationPolicy') as "notification_policy",
JSON_EXTRACT(properties, '$.lockingPolicy') as "locking_policy",
JSON_EXTRACT(properties, '$.deploymentPolicy') as "deployment_policy",
JSON_EXTRACT(properties, '$.managementPolicy') as "management_policy",
JSON_EXTRACT(properties, '$.policies') as "policies",
subscriptionId,
resourceGroupName,
applicationDefinitionName
FROM azure.managed_applications.application_definitions
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
managedBy as managed_by,
sku as sku,
json_extract_path_text(properties, '$.lockLevel') as "lock_level",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.isEnabled') as "is_enabled",
json_extract_path_text(properties, '$.authorizations') as "authorizations",
json_extract_path_text(properties, '$.artifacts') as "artifacts",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.packageFileUri') as "package_file_uri",
json_extract_path_text(properties, '$.storageAccountId') as "storage_account_id",
json_extract_path_text(properties, '$.mainTemplate') as "main_template",
json_extract_path_text(properties, '$.createUiDefinition') as "create_ui_definition",
json_extract_path_text(properties, '$.notificationPolicy') as "notification_policy",
json_extract_path_text(properties, '$.lockingPolicy') as "locking_policy",
json_extract_path_text(properties, '$.deploymentPolicy') as "deployment_policy",
json_extract_path_text(properties, '$.managementPolicy') as "management_policy",
json_extract_path_text(properties, '$.policies') as "policies",
subscriptionId,
resourceGroupName,
applicationDefinitionName
FROM azure.managed_applications.application_definitions
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
