--- 
title: vw_backup_engines
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_backup_engines
  - recovery_services_backup
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

Creates, updates, deletes, gets or lists a <code>vw_backup_engines</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_backup_engines</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_backup.vw_backup_engines" /></td></tr>
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
JSON_EXTRACT(properties, '$.friendlyName') as "friendly_name",
JSON_EXTRACT(properties, '$.backupManagementType') as "backup_management_type",
JSON_EXTRACT(properties, '$.registrationStatus') as "registration_status",
JSON_EXTRACT(properties, '$.backupEngineState') as "backup_engine_state",
JSON_EXTRACT(properties, '$.healthStatus') as "health_status",
JSON_EXTRACT(properties, '$.backupEngineType') as "backup_engine_type",
JSON_EXTRACT(properties, '$.canReRegister') as "can_re_register",
JSON_EXTRACT(properties, '$.backupEngineId') as "backup_engine_id",
JSON_EXTRACT(properties, '$.dpmVersion') as "dpm_version",
JSON_EXTRACT(properties, '$.azureBackupAgentVersion') as "azure_backup_agent_version",
JSON_EXTRACT(properties, '$.isAzureBackupAgentUpgradeAvailable') as "is_azure_backup_agent_upgrade_available",
JSON_EXTRACT(properties, '$.isDpmUpgradeAvailable') as "is_dpm_upgrade_available",
JSON_EXTRACT(properties, '$.extendedInfo') as "extended_info",
subscriptionId,
resourceGroupName,
vaultName,
backupEngineName
FROM azure.recovery_services_backup.backup_engines
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vaultName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.friendlyName') as "friendly_name",
json_extract_path_text(properties, '$.backupManagementType') as "backup_management_type",
json_extract_path_text(properties, '$.registrationStatus') as "registration_status",
json_extract_path_text(properties, '$.backupEngineState') as "backup_engine_state",
json_extract_path_text(properties, '$.healthStatus') as "health_status",
json_extract_path_text(properties, '$.backupEngineType') as "backup_engine_type",
json_extract_path_text(properties, '$.canReRegister') as "can_re_register",
json_extract_path_text(properties, '$.backupEngineId') as "backup_engine_id",
json_extract_path_text(properties, '$.dpmVersion') as "dpm_version",
json_extract_path_text(properties, '$.azureBackupAgentVersion') as "azure_backup_agent_version",
json_extract_path_text(properties, '$.isAzureBackupAgentUpgradeAvailable') as "is_azure_backup_agent_upgrade_available",
json_extract_path_text(properties, '$.isDpmUpgradeAvailable') as "is_dpm_upgrade_available",
json_extract_path_text(properties, '$.extendedInfo') as "extended_info",
subscriptionId,
resourceGroupName,
vaultName,
backupEngineName
FROM azure.recovery_services_backup.backup_engines
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vaultName = 'replace-me';
```

</TabItem>
</Tabs>
