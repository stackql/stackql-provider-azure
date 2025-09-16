--- 
title: vw_web_app_extended_machines_controllers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_web_app_extended_machines_controllers
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

Creates, updates, deletes, gets or lists a <code>vw_web_app_extended_machines_controllers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_web_app_extended_machines_controllers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.migrate.vw_web_app_extended_machines_controllers" /></td></tr>
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
JSON_EXTRACT(properties, '$.isDeleted') as "is_deleted",
JSON_EXTRACT(properties, '$.createdTimestamp') as "created_timestamp",
JSON_EXTRACT(properties, '$.updatedTimestamp') as "updated_timestamp",
JSON_EXTRACT(properties, '$.errors') as "errors",
JSON_EXTRACT(properties, '$.hostName') as "host_name",
JSON_EXTRACT(properties, '$.machineDisplayName') as "machine_display_name",
JSON_EXTRACT(properties, '$.machineId') as "machine_id",
JSON_EXTRACT(properties, '$.runAsAccountId') as "run_as_account_id",
JSON_EXTRACT(properties, '$.hydratedRunAsAccountId') as "hydrated_run_as_account_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
siteName,
webAppSiteName,
extendedMachineName
FROM azure.migrate.web_app_extended_machines_controllers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND siteName = 'replace-me' AND webAppSiteName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.isDeleted') as "is_deleted",
json_extract_path_text(properties, '$.createdTimestamp') as "created_timestamp",
json_extract_path_text(properties, '$.updatedTimestamp') as "updated_timestamp",
json_extract_path_text(properties, '$.errors') as "errors",
json_extract_path_text(properties, '$.hostName') as "host_name",
json_extract_path_text(properties, '$.machineDisplayName') as "machine_display_name",
json_extract_path_text(properties, '$.machineId') as "machine_id",
json_extract_path_text(properties, '$.runAsAccountId') as "run_as_account_id",
json_extract_path_text(properties, '$.hydratedRunAsAccountId') as "hydrated_run_as_account_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
siteName,
webAppSiteName,
extendedMachineName
FROM azure.migrate.web_app_extended_machines_controllers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND siteName = 'replace-me' AND webAppSiteName = 'replace-me';
```

</TabItem>
</Tabs>
