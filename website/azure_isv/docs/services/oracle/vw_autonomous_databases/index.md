--- 
title: vw_autonomous_databases
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_autonomous_databases
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

Creates, updates, deletes, gets or lists a <code>vw_autonomous_databases</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_autonomous_databases</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.oracle.vw_autonomous_databases" /></td></tr>
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
JSON_EXTRACT(properties, '$.adminPassword') as "admin_password",
JSON_EXTRACT(properties, '$.dataBaseType') as "data_base_type",
JSON_EXTRACT(properties, '$.autonomousMaintenanceScheduleType') as "autonomous_maintenance_schedule_type",
JSON_EXTRACT(properties, '$.characterSet') as "character_set",
JSON_EXTRACT(properties, '$.computeCount') as "compute_count",
JSON_EXTRACT(properties, '$.computeModel') as "compute_model",
JSON_EXTRACT(properties, '$.cpuCoreCount') as "cpu_core_count",
JSON_EXTRACT(properties, '$.customerContacts') as "customer_contacts",
JSON_EXTRACT(properties, '$.dataStorageSizeInTbs') as "data_storage_size_in_tbs",
JSON_EXTRACT(properties, '$.dataStorageSizeInGbs') as "data_storage_size_in_gbs",
JSON_EXTRACT(properties, '$.dbVersion') as "db_version",
JSON_EXTRACT(properties, '$.dbWorkload') as "db_workload",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.isAutoScalingEnabled') as "is_auto_scaling_enabled",
JSON_EXTRACT(properties, '$.isAutoScalingForStorageEnabled') as "is_auto_scaling_for_storage_enabled",
JSON_EXTRACT(properties, '$.peerDbIds') as "peer_db_ids",
JSON_EXTRACT(properties, '$.peerDbId') as "peer_db_id",
JSON_EXTRACT(properties, '$.isLocalDataGuardEnabled') as "is_local_data_guard_enabled",
JSON_EXTRACT(properties, '$.isRemoteDataGuardEnabled') as "is_remote_data_guard_enabled",
JSON_EXTRACT(properties, '$.localDisasterRecoveryType') as "local_disaster_recovery_type",
JSON_EXTRACT(properties, '$.localStandbyDb') as "local_standby_db",
JSON_EXTRACT(properties, '$.failedDataRecoveryInSeconds') as "failed_data_recovery_in_seconds",
JSON_EXTRACT(properties, '$.isMtlsConnectionRequired') as "is_mtls_connection_required",
JSON_EXTRACT(properties, '$.isPreviewVersionWithServiceTermsAccepted') as "is_preview_version_with_service_terms_accepted",
JSON_EXTRACT(properties, '$.licenseModel') as "license_model",
JSON_EXTRACT(properties, '$.ncharacterSet') as "ncharacter_set",
JSON_EXTRACT(properties, '$.lifecycleDetails') as "lifecycle_details",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.lifecycleState') as "lifecycle_state",
JSON_EXTRACT(properties, '$.scheduledOperations') as "scheduled_operations",
JSON_EXTRACT(properties, '$.privateEndpointIp') as "private_endpoint_ip",
JSON_EXTRACT(properties, '$.privateEndpointLabel') as "private_endpoint_label",
JSON_EXTRACT(properties, '$.ociUrl') as "oci_url",
JSON_EXTRACT(properties, '$.subnetId') as "subnet_id",
JSON_EXTRACT(properties, '$.vnetId') as "vnet_id",
JSON_EXTRACT(properties, '$.timeCreated') as "time_created",
JSON_EXTRACT(properties, '$.timeMaintenanceBegin') as "time_maintenance_begin",
JSON_EXTRACT(properties, '$.timeMaintenanceEnd') as "time_maintenance_end",
JSON_EXTRACT(properties, '$.actualUsedDataStorageSizeInTbs') as "actual_used_data_storage_size_in_tbs",
JSON_EXTRACT(properties, '$.allocatedStorageSizeInTbs') as "allocated_storage_size_in_tbs",
JSON_EXTRACT(properties, '$.apexDetails') as "apex_details",
JSON_EXTRACT(properties, '$.availableUpgradeVersions') as "available_upgrade_versions",
JSON_EXTRACT(properties, '$.connectionStrings') as "connection_strings",
JSON_EXTRACT(properties, '$.connectionUrls') as "connection_urls",
JSON_EXTRACT(properties, '$.dataSafeStatus') as "data_safe_status",
JSON_EXTRACT(properties, '$.databaseEdition') as "database_edition",
JSON_EXTRACT(properties, '$.autonomousDatabaseId') as "autonomous_database_id",
JSON_EXTRACT(properties, '$.inMemoryAreaInGbs') as "in_memory_area_in_gbs",
JSON_EXTRACT(properties, '$.nextLongTermBackupTimeStamp') as "next_long_term_backup_time_stamp",
JSON_EXTRACT(properties, '$.longTermBackupSchedule') as "long_term_backup_schedule",
JSON_EXTRACT(properties, '$.isPreview') as "is_preview",
JSON_EXTRACT(properties, '$.localAdgAutoFailoverMaxDataLossLimit') as "local_adg_auto_failover_max_data_loss_limit",
JSON_EXTRACT(properties, '$.memoryPerOracleComputeUnitInGbs') as "memory_per_oracle_compute_unit_in_gbs",
JSON_EXTRACT(properties, '$.openMode') as "open_mode",
JSON_EXTRACT(properties, '$.operationsInsightsStatus') as "operations_insights_status",
JSON_EXTRACT(properties, '$.permissionLevel') as "permission_level",
JSON_EXTRACT(properties, '$.privateEndpoint') as "private_endpoint",
JSON_EXTRACT(properties, '$.provisionableCpus') as "provisionable_cpus",
JSON_EXTRACT(properties, '$.role') as "role",
JSON_EXTRACT(properties, '$.serviceConsoleUrl') as "service_console_url",
JSON_EXTRACT(properties, '$.sqlWebDeveloperUrl') as "sql_web_developer_url",
JSON_EXTRACT(properties, '$.supportedRegionsToCloneTo') as "supported_regions_to_clone_to",
JSON_EXTRACT(properties, '$.timeDataGuardRoleChanged') as "time_data_guard_role_changed",
JSON_EXTRACT(properties, '$.timeDeletionOfFreeAutonomousDatabase') as "time_deletion_of_free_autonomous_database",
JSON_EXTRACT(properties, '$.timeLocalDataGuardEnabled') as "time_local_data_guard_enabled",
JSON_EXTRACT(properties, '$.timeOfLastFailover') as "time_of_last_failover",
JSON_EXTRACT(properties, '$.timeOfLastRefresh') as "time_of_last_refresh",
JSON_EXTRACT(properties, '$.timeOfLastRefreshPoint') as "time_of_last_refresh_point",
JSON_EXTRACT(properties, '$.timeOfLastSwitchover') as "time_of_last_switchover",
JSON_EXTRACT(properties, '$.timeReclamationOfFreeAutonomousDatabase') as "time_reclamation_of_free_autonomous_database",
JSON_EXTRACT(properties, '$.usedDataStorageSizeInGbs') as "used_data_storage_size_in_gbs",
JSON_EXTRACT(properties, '$.usedDataStorageSizeInTbs') as "used_data_storage_size_in_tbs",
JSON_EXTRACT(properties, '$.ocid') as "ocid",
JSON_EXTRACT(properties, '$.backupRetentionPeriodInDays') as "backup_retention_period_in_days",
JSON_EXTRACT(properties, '$.whitelistedIps') as "whitelisted_ips",
subscriptionId,
resourceGroupName,
autonomousdatabasename
FROM azure_isv.oracle.autonomous_databases
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.adminPassword') as "admin_password",
json_extract_path_text(properties, '$.dataBaseType') as "data_base_type",
json_extract_path_text(properties, '$.autonomousMaintenanceScheduleType') as "autonomous_maintenance_schedule_type",
json_extract_path_text(properties, '$.characterSet') as "character_set",
json_extract_path_text(properties, '$.computeCount') as "compute_count",
json_extract_path_text(properties, '$.computeModel') as "compute_model",
json_extract_path_text(properties, '$.cpuCoreCount') as "cpu_core_count",
json_extract_path_text(properties, '$.customerContacts') as "customer_contacts",
json_extract_path_text(properties, '$.dataStorageSizeInTbs') as "data_storage_size_in_tbs",
json_extract_path_text(properties, '$.dataStorageSizeInGbs') as "data_storage_size_in_gbs",
json_extract_path_text(properties, '$.dbVersion') as "db_version",
json_extract_path_text(properties, '$.dbWorkload') as "db_workload",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.isAutoScalingEnabled') as "is_auto_scaling_enabled",
json_extract_path_text(properties, '$.isAutoScalingForStorageEnabled') as "is_auto_scaling_for_storage_enabled",
json_extract_path_text(properties, '$.peerDbIds') as "peer_db_ids",
json_extract_path_text(properties, '$.peerDbId') as "peer_db_id",
json_extract_path_text(properties, '$.isLocalDataGuardEnabled') as "is_local_data_guard_enabled",
json_extract_path_text(properties, '$.isRemoteDataGuardEnabled') as "is_remote_data_guard_enabled",
json_extract_path_text(properties, '$.localDisasterRecoveryType') as "local_disaster_recovery_type",
json_extract_path_text(properties, '$.localStandbyDb') as "local_standby_db",
json_extract_path_text(properties, '$.failedDataRecoveryInSeconds') as "failed_data_recovery_in_seconds",
json_extract_path_text(properties, '$.isMtlsConnectionRequired') as "is_mtls_connection_required",
json_extract_path_text(properties, '$.isPreviewVersionWithServiceTermsAccepted') as "is_preview_version_with_service_terms_accepted",
json_extract_path_text(properties, '$.licenseModel') as "license_model",
json_extract_path_text(properties, '$.ncharacterSet') as "ncharacter_set",
json_extract_path_text(properties, '$.lifecycleDetails') as "lifecycle_details",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.lifecycleState') as "lifecycle_state",
json_extract_path_text(properties, '$.scheduledOperations') as "scheduled_operations",
json_extract_path_text(properties, '$.privateEndpointIp') as "private_endpoint_ip",
json_extract_path_text(properties, '$.privateEndpointLabel') as "private_endpoint_label",
json_extract_path_text(properties, '$.ociUrl') as "oci_url",
json_extract_path_text(properties, '$.subnetId') as "subnet_id",
json_extract_path_text(properties, '$.vnetId') as "vnet_id",
json_extract_path_text(properties, '$.timeCreated') as "time_created",
json_extract_path_text(properties, '$.timeMaintenanceBegin') as "time_maintenance_begin",
json_extract_path_text(properties, '$.timeMaintenanceEnd') as "time_maintenance_end",
json_extract_path_text(properties, '$.actualUsedDataStorageSizeInTbs') as "actual_used_data_storage_size_in_tbs",
json_extract_path_text(properties, '$.allocatedStorageSizeInTbs') as "allocated_storage_size_in_tbs",
json_extract_path_text(properties, '$.apexDetails') as "apex_details",
json_extract_path_text(properties, '$.availableUpgradeVersions') as "available_upgrade_versions",
json_extract_path_text(properties, '$.connectionStrings') as "connection_strings",
json_extract_path_text(properties, '$.connectionUrls') as "connection_urls",
json_extract_path_text(properties, '$.dataSafeStatus') as "data_safe_status",
json_extract_path_text(properties, '$.databaseEdition') as "database_edition",
json_extract_path_text(properties, '$.autonomousDatabaseId') as "autonomous_database_id",
json_extract_path_text(properties, '$.inMemoryAreaInGbs') as "in_memory_area_in_gbs",
json_extract_path_text(properties, '$.nextLongTermBackupTimeStamp') as "next_long_term_backup_time_stamp",
json_extract_path_text(properties, '$.longTermBackupSchedule') as "long_term_backup_schedule",
json_extract_path_text(properties, '$.isPreview') as "is_preview",
json_extract_path_text(properties, '$.localAdgAutoFailoverMaxDataLossLimit') as "local_adg_auto_failover_max_data_loss_limit",
json_extract_path_text(properties, '$.memoryPerOracleComputeUnitInGbs') as "memory_per_oracle_compute_unit_in_gbs",
json_extract_path_text(properties, '$.openMode') as "open_mode",
json_extract_path_text(properties, '$.operationsInsightsStatus') as "operations_insights_status",
json_extract_path_text(properties, '$.permissionLevel') as "permission_level",
json_extract_path_text(properties, '$.privateEndpoint') as "private_endpoint",
json_extract_path_text(properties, '$.provisionableCpus') as "provisionable_cpus",
json_extract_path_text(properties, '$.role') as "role",
json_extract_path_text(properties, '$.serviceConsoleUrl') as "service_console_url",
json_extract_path_text(properties, '$.sqlWebDeveloperUrl') as "sql_web_developer_url",
json_extract_path_text(properties, '$.supportedRegionsToCloneTo') as "supported_regions_to_clone_to",
json_extract_path_text(properties, '$.timeDataGuardRoleChanged') as "time_data_guard_role_changed",
json_extract_path_text(properties, '$.timeDeletionOfFreeAutonomousDatabase') as "time_deletion_of_free_autonomous_database",
json_extract_path_text(properties, '$.timeLocalDataGuardEnabled') as "time_local_data_guard_enabled",
json_extract_path_text(properties, '$.timeOfLastFailover') as "time_of_last_failover",
json_extract_path_text(properties, '$.timeOfLastRefresh') as "time_of_last_refresh",
json_extract_path_text(properties, '$.timeOfLastRefreshPoint') as "time_of_last_refresh_point",
json_extract_path_text(properties, '$.timeOfLastSwitchover') as "time_of_last_switchover",
json_extract_path_text(properties, '$.timeReclamationOfFreeAutonomousDatabase') as "time_reclamation_of_free_autonomous_database",
json_extract_path_text(properties, '$.usedDataStorageSizeInGbs') as "used_data_storage_size_in_gbs",
json_extract_path_text(properties, '$.usedDataStorageSizeInTbs') as "used_data_storage_size_in_tbs",
json_extract_path_text(properties, '$.ocid') as "ocid",
json_extract_path_text(properties, '$.backupRetentionPeriodInDays') as "backup_retention_period_in_days",
json_extract_path_text(properties, '$.whitelistedIps') as "whitelisted_ips",
subscriptionId,
resourceGroupName,
autonomousdatabasename
FROM azure_isv.oracle.autonomous_databases
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
