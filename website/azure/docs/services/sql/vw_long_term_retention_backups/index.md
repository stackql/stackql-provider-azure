--- 
title: vw_long_term_retention_backups
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_long_term_retention_backups
  - sql
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

Creates, updates, deletes, gets or lists a <code>vw_long_term_retention_backups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_long_term_retention_backups</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_long_term_retention_backups" /></td></tr>
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
JSON_EXTRACT(properties, '$.serverName') as "server_name",
JSON_EXTRACT(properties, '$.serverCreateTime') as "server_create_time",
JSON_EXTRACT(properties, '$.databaseName') as "database_name",
JSON_EXTRACT(properties, '$.databaseDeletionTime') as "database_deletion_time",
JSON_EXTRACT(properties, '$.backupTime') as "backup_time",
JSON_EXTRACT(properties, '$.backupExpirationTime') as "backup_expiration_time",
JSON_EXTRACT(properties, '$.backupStorageRedundancy') as "backup_storage_redundancy",
JSON_EXTRACT(properties, '$.requestedBackupStorageRedundancy') as "requested_backup_storage_redundancy",
JSON_EXTRACT(properties, '$.isBackupImmutable') as "is_backup_immutable",
JSON_EXTRACT(properties, '$.backupStorageAccessTier') as "backup_storage_access_tier",
subscriptionId,
resourceGroupName,
locationName,
longTermRetentionServerName,
longTermRetentionDatabaseName,
backupName
FROM azure.sql.long_term_retention_backups
WHERE subscriptionId = 'replace-me' AND locationName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.serverName') as "server_name",
json_extract_path_text(properties, '$.serverCreateTime') as "server_create_time",
json_extract_path_text(properties, '$.databaseName') as "database_name",
json_extract_path_text(properties, '$.databaseDeletionTime') as "database_deletion_time",
json_extract_path_text(properties, '$.backupTime') as "backup_time",
json_extract_path_text(properties, '$.backupExpirationTime') as "backup_expiration_time",
json_extract_path_text(properties, '$.backupStorageRedundancy') as "backup_storage_redundancy",
json_extract_path_text(properties, '$.requestedBackupStorageRedundancy') as "requested_backup_storage_redundancy",
json_extract_path_text(properties, '$.isBackupImmutable') as "is_backup_immutable",
json_extract_path_text(properties, '$.backupStorageAccessTier') as "backup_storage_access_tier",
subscriptionId,
resourceGroupName,
locationName,
longTermRetentionServerName,
longTermRetentionDatabaseName,
backupName
FROM azure.sql.long_term_retention_backups
WHERE subscriptionId = 'replace-me' AND locationName = 'replace-me';
```

</TabItem>
</Tabs>
