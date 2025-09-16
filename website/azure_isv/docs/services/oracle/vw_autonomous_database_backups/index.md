--- 
title: vw_autonomous_database_backups
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_autonomous_database_backups
  - oracle
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_autonomous_database_backups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_autonomous_database_backups</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.oracle.vw_autonomous_database_backups" /></td></tr>
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
JSON_EXTRACT(properties, '$.autonomousDatabaseOcid') as "autonomous_database_ocid",
JSON_EXTRACT(properties, '$.databaseSizeInTbs') as "database_size_in_tbs",
JSON_EXTRACT(properties, '$.dbVersion') as "db_version",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.ocid') as "ocid",
JSON_EXTRACT(properties, '$.isAutomatic') as "is_automatic",
JSON_EXTRACT(properties, '$.isRestorable') as "is_restorable",
JSON_EXTRACT(properties, '$.lifecycleDetails') as "lifecycle_details",
JSON_EXTRACT(properties, '$.lifecycleState') as "lifecycle_state",
JSON_EXTRACT(properties, '$.retentionPeriodInDays') as "retention_period_in_days",
JSON_EXTRACT(properties, '$.sizeInTbs') as "size_in_tbs",
JSON_EXTRACT(properties, '$.timeAvailableTil') as "time_available_til",
JSON_EXTRACT(properties, '$.timeStarted') as "time_started",
JSON_EXTRACT(properties, '$.timeEnded') as "time_ended",
JSON_EXTRACT(properties, '$.backupType') as "backup_type",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
autonomousdatabasename,
adbbackupid
FROM azure_isv.oracle.autonomous_database_backups
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND autonomousdatabasename = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.autonomousDatabaseOcid') as "autonomous_database_ocid",
json_extract_path_text(properties, '$.databaseSizeInTbs') as "database_size_in_tbs",
json_extract_path_text(properties, '$.dbVersion') as "db_version",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.ocid') as "ocid",
json_extract_path_text(properties, '$.isAutomatic') as "is_automatic",
json_extract_path_text(properties, '$.isRestorable') as "is_restorable",
json_extract_path_text(properties, '$.lifecycleDetails') as "lifecycle_details",
json_extract_path_text(properties, '$.lifecycleState') as "lifecycle_state",
json_extract_path_text(properties, '$.retentionPeriodInDays') as "retention_period_in_days",
json_extract_path_text(properties, '$.sizeInTbs') as "size_in_tbs",
json_extract_path_text(properties, '$.timeAvailableTil') as "time_available_til",
json_extract_path_text(properties, '$.timeStarted') as "time_started",
json_extract_path_text(properties, '$.timeEnded') as "time_ended",
json_extract_path_text(properties, '$.backupType') as "backup_type",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
autonomousdatabasename,
adbbackupid
FROM azure_isv.oracle.autonomous_database_backups
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND autonomousdatabasename = 'replace-me';
```

</TabItem>
</Tabs>
