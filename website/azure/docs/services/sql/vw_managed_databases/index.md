--- 
title: vw_managed_databases
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_managed_databases
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

Creates, updates, deletes, gets or lists a <code>vw_managed_databases</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_managed_databases</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_managed_databases" /></td></tr>
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
JSON_EXTRACT(properties, '$.collation') as "collation",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.creationDate') as "creation_date",
JSON_EXTRACT(properties, '$.earliestRestorePoint') as "earliest_restore_point",
JSON_EXTRACT(properties, '$.restorePointInTime') as "restore_point_in_time",
JSON_EXTRACT(properties, '$.defaultSecondaryLocation') as "default_secondary_location",
JSON_EXTRACT(properties, '$.catalogCollation') as "catalog_collation",
JSON_EXTRACT(properties, '$.createMode') as "create_mode",
JSON_EXTRACT(properties, '$.storageContainerUri') as "storage_container_uri",
JSON_EXTRACT(properties, '$.sourceDatabaseId') as "source_database_id",
JSON_EXTRACT(properties, '$.crossSubscriptionSourceDatabaseId') as "cross_subscription_source_database_id",
JSON_EXTRACT(properties, '$.restorableDroppedDatabaseId') as "restorable_dropped_database_id",
JSON_EXTRACT(properties, '$.crossSubscriptionRestorableDroppedDatabaseId') as "cross_subscription_restorable_dropped_database_id",
JSON_EXTRACT(properties, '$.storageContainerIdentity') as "storage_container_identity",
JSON_EXTRACT(properties, '$.storageContainerSasToken') as "storage_container_sas_token",
JSON_EXTRACT(properties, '$.failoverGroupId') as "failover_group_id",
JSON_EXTRACT(properties, '$.recoverableDatabaseId') as "recoverable_database_id",
JSON_EXTRACT(properties, '$.longTermRetentionBackupResourceId') as "long_term_retention_backup_resource_id",
JSON_EXTRACT(properties, '$.autoCompleteRestore') as "auto_complete_restore",
JSON_EXTRACT(properties, '$.lastBackupName') as "last_backup_name",
JSON_EXTRACT(properties, '$.crossSubscriptionTargetManagedInstanceId') as "cross_subscription_target_managed_instance_id",
JSON_EXTRACT(properties, '$.isLedgerOn') as "is_ledger_on",
subscriptionId,
resourceGroupName,
managedInstanceName,
databaseName
FROM azure.sql.managed_databases
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managedInstanceName = 'replace-me' AND databaseName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.collation') as "collation",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.creationDate') as "creation_date",
json_extract_path_text(properties, '$.earliestRestorePoint') as "earliest_restore_point",
json_extract_path_text(properties, '$.restorePointInTime') as "restore_point_in_time",
json_extract_path_text(properties, '$.defaultSecondaryLocation') as "default_secondary_location",
json_extract_path_text(properties, '$.catalogCollation') as "catalog_collation",
json_extract_path_text(properties, '$.createMode') as "create_mode",
json_extract_path_text(properties, '$.storageContainerUri') as "storage_container_uri",
json_extract_path_text(properties, '$.sourceDatabaseId') as "source_database_id",
json_extract_path_text(properties, '$.crossSubscriptionSourceDatabaseId') as "cross_subscription_source_database_id",
json_extract_path_text(properties, '$.restorableDroppedDatabaseId') as "restorable_dropped_database_id",
json_extract_path_text(properties, '$.crossSubscriptionRestorableDroppedDatabaseId') as "cross_subscription_restorable_dropped_database_id",
json_extract_path_text(properties, '$.storageContainerIdentity') as "storage_container_identity",
json_extract_path_text(properties, '$.storageContainerSasToken') as "storage_container_sas_token",
json_extract_path_text(properties, '$.failoverGroupId') as "failover_group_id",
json_extract_path_text(properties, '$.recoverableDatabaseId') as "recoverable_database_id",
json_extract_path_text(properties, '$.longTermRetentionBackupResourceId') as "long_term_retention_backup_resource_id",
json_extract_path_text(properties, '$.autoCompleteRestore') as "auto_complete_restore",
json_extract_path_text(properties, '$.lastBackupName') as "last_backup_name",
json_extract_path_text(properties, '$.crossSubscriptionTargetManagedInstanceId') as "cross_subscription_target_managed_instance_id",
json_extract_path_text(properties, '$.isLedgerOn') as "is_ledger_on",
subscriptionId,
resourceGroupName,
managedInstanceName,
databaseName
FROM azure.sql.managed_databases
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managedInstanceName = 'replace-me' AND databaseName = 'replace-me';
```

</TabItem>
</Tabs>
