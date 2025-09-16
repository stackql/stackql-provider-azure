--- 
title: vw_database_migrations_sql_mis
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_database_migrations_sql_mis
  - data_migration
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

Creates, updates, deletes, gets or lists a <code>vw_database_migrations_sql_mis</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_database_migrations_sql_mis</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_migration.vw_database_migrations_sql_mis" /></td></tr>
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
JSON_EXTRACT(properties, '$.sourceSqlConnection') as "source_sql_connection",
JSON_EXTRACT(properties, '$.sourceDatabaseName') as "source_database_name",
JSON_EXTRACT(properties, '$.sourceServerName') as "source_server_name",
JSON_EXTRACT(properties, '$.targetDatabaseCollation') as "target_database_collation",
JSON_EXTRACT(properties, '$.migrationStatusDetails') as "migration_status_details",
JSON_EXTRACT(properties, '$.backupConfiguration') as "backup_configuration",
JSON_EXTRACT(properties, '$.offlineConfiguration') as "offline_configuration",
subscriptionId,
resourceGroupName,
managedInstanceName,
targetDbName
FROM azure.data_migration.database_migrations_sql_mis
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managedInstanceName = 'replace-me' AND targetDbName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.sourceSqlConnection') as "source_sql_connection",
json_extract_path_text(properties, '$.sourceDatabaseName') as "source_database_name",
json_extract_path_text(properties, '$.sourceServerName') as "source_server_name",
json_extract_path_text(properties, '$.targetDatabaseCollation') as "target_database_collation",
json_extract_path_text(properties, '$.migrationStatusDetails') as "migration_status_details",
json_extract_path_text(properties, '$.backupConfiguration') as "backup_configuration",
json_extract_path_text(properties, '$.offlineConfiguration') as "offline_configuration",
subscriptionId,
resourceGroupName,
managedInstanceName,
targetDbName
FROM azure.data_migration.database_migrations_sql_mis
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managedInstanceName = 'replace-me' AND targetDbName = 'replace-me';
```

</TabItem>
</Tabs>
