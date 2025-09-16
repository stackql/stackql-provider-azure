--- 
title: vw_databases
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_databases
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

Creates, updates, deletes, gets or lists a <code>vw_databases</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_databases</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_databases" /></td></tr>
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
sku as sku,
kind as kind,
managedBy as managed_by,
identity as identity,
JSON_EXTRACT(properties, '$.createMode') as "create_mode",
JSON_EXTRACT(properties, '$.collation') as "collation",
JSON_EXTRACT(properties, '$.maxSizeBytes') as "max_size_bytes",
JSON_EXTRACT(properties, '$.sampleName') as "sample_name",
JSON_EXTRACT(properties, '$.elasticPoolId') as "elastic_pool_id",
JSON_EXTRACT(properties, '$.sourceDatabaseId') as "source_database_id",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.databaseId') as "database_id",
JSON_EXTRACT(properties, '$.creationDate') as "creation_date",
JSON_EXTRACT(properties, '$.currentServiceObjectiveName') as "current_service_objective_name",
JSON_EXTRACT(properties, '$.requestedServiceObjectiveName') as "requested_service_objective_name",
JSON_EXTRACT(properties, '$.defaultSecondaryLocation') as "default_secondary_location",
JSON_EXTRACT(properties, '$.failoverGroupId') as "failover_group_id",
JSON_EXTRACT(properties, '$.restorePointInTime') as "restore_point_in_time",
JSON_EXTRACT(properties, '$.sourceDatabaseDeletionDate') as "source_database_deletion_date",
JSON_EXTRACT(properties, '$.recoveryServicesRecoveryPointId') as "recovery_services_recovery_point_id",
JSON_EXTRACT(properties, '$.longTermRetentionBackupResourceId') as "long_term_retention_backup_resource_id",
JSON_EXTRACT(properties, '$.recoverableDatabaseId') as "recoverable_database_id",
JSON_EXTRACT(properties, '$.restorableDroppedDatabaseId') as "restorable_dropped_database_id",
JSON_EXTRACT(properties, '$.catalogCollation') as "catalog_collation",
JSON_EXTRACT(properties, '$.zoneRedundant') as "zone_redundant",
JSON_EXTRACT(properties, '$.licenseType') as "license_type",
JSON_EXTRACT(properties, '$.maxLogSizeBytes') as "max_log_size_bytes",
JSON_EXTRACT(properties, '$.earliestRestoreDate') as "earliest_restore_date",
JSON_EXTRACT(properties, '$.readScale') as "read_scale",
JSON_EXTRACT(properties, '$.highAvailabilityReplicaCount') as "high_availability_replica_count",
JSON_EXTRACT(properties, '$.secondaryType') as "secondary_type",
JSON_EXTRACT(properties, '$.currentSku') as "current_sku",
JSON_EXTRACT(properties, '$.autoPauseDelay') as "auto_pause_delay",
JSON_EXTRACT(properties, '$.currentBackupStorageRedundancy') as "current_backup_storage_redundancy",
JSON_EXTRACT(properties, '$.requestedBackupStorageRedundancy') as "requested_backup_storage_redundancy",
JSON_EXTRACT(properties, '$.minCapacity') as "min_capacity",
JSON_EXTRACT(properties, '$.pausedDate') as "paused_date",
JSON_EXTRACT(properties, '$.resumedDate') as "resumed_date",
JSON_EXTRACT(properties, '$.maintenanceConfigurationId') as "maintenance_configuration_id",
JSON_EXTRACT(properties, '$.isLedgerOn') as "is_ledger_on",
JSON_EXTRACT(properties, '$.isInfraEncryptionEnabled') as "is_infra_encryption_enabled",
JSON_EXTRACT(properties, '$.federatedClientId') as "federated_client_id",
JSON_EXTRACT(properties, '$.keys') as "keys",
JSON_EXTRACT(properties, '$.encryptionProtector') as "encryption_protector",
JSON_EXTRACT(properties, '$.preferredEnclaveType') as "preferred_enclave_type",
JSON_EXTRACT(properties, '$.useFreeLimit') as "use_free_limit",
JSON_EXTRACT(properties, '$.freeLimitExhaustionBehavior') as "free_limit_exhaustion_behavior",
JSON_EXTRACT(properties, '$.sourceResourceId') as "source_resource_id",
JSON_EXTRACT(properties, '$.manualCutover') as "manual_cutover",
JSON_EXTRACT(properties, '$.performCutover') as "perform_cutover",
JSON_EXTRACT(properties, '$.availabilityZone') as "availability_zone",
JSON_EXTRACT(properties, '$.encryptionProtectorAutoRotation') as "encryption_protector_auto_rotation",
subscriptionId,
resourceGroupName,
serverName,
databaseName
FROM azure.sql.databases
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
sku as sku,
kind as kind,
managedBy as managed_by,
identity as identity,
json_extract_path_text(properties, '$.createMode') as "create_mode",
json_extract_path_text(properties, '$.collation') as "collation",
json_extract_path_text(properties, '$.maxSizeBytes') as "max_size_bytes",
json_extract_path_text(properties, '$.sampleName') as "sample_name",
json_extract_path_text(properties, '$.elasticPoolId') as "elastic_pool_id",
json_extract_path_text(properties, '$.sourceDatabaseId') as "source_database_id",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.databaseId') as "database_id",
json_extract_path_text(properties, '$.creationDate') as "creation_date",
json_extract_path_text(properties, '$.currentServiceObjectiveName') as "current_service_objective_name",
json_extract_path_text(properties, '$.requestedServiceObjectiveName') as "requested_service_objective_name",
json_extract_path_text(properties, '$.defaultSecondaryLocation') as "default_secondary_location",
json_extract_path_text(properties, '$.failoverGroupId') as "failover_group_id",
json_extract_path_text(properties, '$.restorePointInTime') as "restore_point_in_time",
json_extract_path_text(properties, '$.sourceDatabaseDeletionDate') as "source_database_deletion_date",
json_extract_path_text(properties, '$.recoveryServicesRecoveryPointId') as "recovery_services_recovery_point_id",
json_extract_path_text(properties, '$.longTermRetentionBackupResourceId') as "long_term_retention_backup_resource_id",
json_extract_path_text(properties, '$.recoverableDatabaseId') as "recoverable_database_id",
json_extract_path_text(properties, '$.restorableDroppedDatabaseId') as "restorable_dropped_database_id",
json_extract_path_text(properties, '$.catalogCollation') as "catalog_collation",
json_extract_path_text(properties, '$.zoneRedundant') as "zone_redundant",
json_extract_path_text(properties, '$.licenseType') as "license_type",
json_extract_path_text(properties, '$.maxLogSizeBytes') as "max_log_size_bytes",
json_extract_path_text(properties, '$.earliestRestoreDate') as "earliest_restore_date",
json_extract_path_text(properties, '$.readScale') as "read_scale",
json_extract_path_text(properties, '$.highAvailabilityReplicaCount') as "high_availability_replica_count",
json_extract_path_text(properties, '$.secondaryType') as "secondary_type",
json_extract_path_text(properties, '$.currentSku') as "current_sku",
json_extract_path_text(properties, '$.autoPauseDelay') as "auto_pause_delay",
json_extract_path_text(properties, '$.currentBackupStorageRedundancy') as "current_backup_storage_redundancy",
json_extract_path_text(properties, '$.requestedBackupStorageRedundancy') as "requested_backup_storage_redundancy",
json_extract_path_text(properties, '$.minCapacity') as "min_capacity",
json_extract_path_text(properties, '$.pausedDate') as "paused_date",
json_extract_path_text(properties, '$.resumedDate') as "resumed_date",
json_extract_path_text(properties, '$.maintenanceConfigurationId') as "maintenance_configuration_id",
json_extract_path_text(properties, '$.isLedgerOn') as "is_ledger_on",
json_extract_path_text(properties, '$.isInfraEncryptionEnabled') as "is_infra_encryption_enabled",
json_extract_path_text(properties, '$.federatedClientId') as "federated_client_id",
json_extract_path_text(properties, '$.keys') as "keys",
json_extract_path_text(properties, '$.encryptionProtector') as "encryption_protector",
json_extract_path_text(properties, '$.preferredEnclaveType') as "preferred_enclave_type",
json_extract_path_text(properties, '$.useFreeLimit') as "use_free_limit",
json_extract_path_text(properties, '$.freeLimitExhaustionBehavior') as "free_limit_exhaustion_behavior",
json_extract_path_text(properties, '$.sourceResourceId') as "source_resource_id",
json_extract_path_text(properties, '$.manualCutover') as "manual_cutover",
json_extract_path_text(properties, '$.performCutover') as "perform_cutover",
json_extract_path_text(properties, '$.availabilityZone') as "availability_zone",
json_extract_path_text(properties, '$.encryptionProtectorAutoRotation') as "encryption_protector_auto_rotation",
subscriptionId,
resourceGroupName,
serverName,
databaseName
FROM azure.sql.databases
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
</Tabs>
