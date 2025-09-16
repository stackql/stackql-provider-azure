--- 
title: vw_sql_server_databases
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_sql_server_databases
  - azure_arc_data
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

Creates, updates, deletes, gets or lists a <code>vw_sql_server_databases</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_sql_server_databases</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.azure_arc_data.vw_sql_server_databases" /></td></tr>
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
JSON_EXTRACT(properties, '$.collationName') as "collation_name",
JSON_EXTRACT(properties, '$.databaseCreationDate') as "database_creation_date",
JSON_EXTRACT(properties, '$.compatibilityLevel') as "compatibility_level",
JSON_EXTRACT(properties, '$.sizeMB') as "size_mb",
JSON_EXTRACT(properties, '$.spaceAvailableMB') as "space_available_mb",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.isReadOnly') as "is_read_only",
JSON_EXTRACT(properties, '$.recoveryMode') as "recovery_mode",
JSON_EXTRACT(properties, '$.databaseOptions') as "database_options",
JSON_EXTRACT(properties, '$.backupInformation') as "backup_information",
JSON_EXTRACT(properties, '$.backupPolicy') as "backup_policy",
JSON_EXTRACT(properties, '$.earliestRestoreDate') as "earliest_restore_date",
JSON_EXTRACT(properties, '$.createMode') as "create_mode",
JSON_EXTRACT(properties, '$.sourceDatabaseId') as "source_database_id",
JSON_EXTRACT(properties, '$.restorePointInTime') as "restore_point_in_time",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.lastDatabaseUploadTime') as "last_database_upload_time",
subscriptionId,
resourceGroupName,
sqlServerInstanceName,
databaseName
FROM azure.azure_arc_data.sql_server_databases
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND sqlServerInstanceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.collationName') as "collation_name",
json_extract_path_text(properties, '$.databaseCreationDate') as "database_creation_date",
json_extract_path_text(properties, '$.compatibilityLevel') as "compatibility_level",
json_extract_path_text(properties, '$.sizeMB') as "size_mb",
json_extract_path_text(properties, '$.spaceAvailableMB') as "space_available_mb",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.isReadOnly') as "is_read_only",
json_extract_path_text(properties, '$.recoveryMode') as "recovery_mode",
json_extract_path_text(properties, '$.databaseOptions') as "database_options",
json_extract_path_text(properties, '$.backupInformation') as "backup_information",
json_extract_path_text(properties, '$.backupPolicy') as "backup_policy",
json_extract_path_text(properties, '$.earliestRestoreDate') as "earliest_restore_date",
json_extract_path_text(properties, '$.createMode') as "create_mode",
json_extract_path_text(properties, '$.sourceDatabaseId') as "source_database_id",
json_extract_path_text(properties, '$.restorePointInTime') as "restore_point_in_time",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.lastDatabaseUploadTime') as "last_database_upload_time",
subscriptionId,
resourceGroupName,
sqlServerInstanceName,
databaseName
FROM azure.azure_arc_data.sql_server_databases
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND sqlServerInstanceName = 'replace-me';
```

</TabItem>
</Tabs>
