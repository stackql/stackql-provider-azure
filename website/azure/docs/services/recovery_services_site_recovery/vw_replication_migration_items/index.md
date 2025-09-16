--- 
title: vw_replication_migration_items
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_replication_migration_items
  - recovery_services_site_recovery
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

Creates, updates, deletes, gets or lists a <code>vw_replication_migration_items</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_replication_migration_items</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_site_recovery.vw_replication_migration_items" /></td></tr>
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
location as location,
type as type,
JSON_EXTRACT(properties, '$.machineName') as "machine_name",
JSON_EXTRACT(properties, '$.policyId') as "policy_id",
JSON_EXTRACT(properties, '$.policyFriendlyName') as "policy_friendly_name",
JSON_EXTRACT(properties, '$.recoveryServicesProviderId') as "recovery_services_provider_id",
JSON_EXTRACT(properties, '$.replicationStatus') as "replication_status",
JSON_EXTRACT(properties, '$.migrationState') as "migration_state",
JSON_EXTRACT(properties, '$.migrationStateDescription') as "migration_state_description",
JSON_EXTRACT(properties, '$.lastTestMigrationTime') as "last_test_migration_time",
JSON_EXTRACT(properties, '$.lastTestMigrationStatus') as "last_test_migration_status",
JSON_EXTRACT(properties, '$.lastMigrationTime') as "last_migration_time",
JSON_EXTRACT(properties, '$.lastMigrationStatus') as "last_migration_status",
JSON_EXTRACT(properties, '$.testMigrateState') as "test_migrate_state",
JSON_EXTRACT(properties, '$.testMigrateStateDescription') as "test_migrate_state_description",
JSON_EXTRACT(properties, '$.health') as "health",
JSON_EXTRACT(properties, '$.healthErrors') as "health_errors",
JSON_EXTRACT(properties, '$.allowedOperations') as "allowed_operations",
JSON_EXTRACT(properties, '$.currentJob') as "current_job",
JSON_EXTRACT(properties, '$.criticalJobHistory') as "critical_job_history",
JSON_EXTRACT(properties, '$.eventCorrelationId') as "event_correlation_id",
JSON_EXTRACT(properties, '$.providerSpecificDetails') as "provider_specific_details",
subscriptionId,
resourceGroupName,
resourceName,
fabricName,
protectionContainerName,
migrationItemName
FROM azure.recovery_services_site_recovery.replication_migration_items
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
json_extract_path_text(properties, '$.machineName') as "machine_name",
json_extract_path_text(properties, '$.policyId') as "policy_id",
json_extract_path_text(properties, '$.policyFriendlyName') as "policy_friendly_name",
json_extract_path_text(properties, '$.recoveryServicesProviderId') as "recovery_services_provider_id",
json_extract_path_text(properties, '$.replicationStatus') as "replication_status",
json_extract_path_text(properties, '$.migrationState') as "migration_state",
json_extract_path_text(properties, '$.migrationStateDescription') as "migration_state_description",
json_extract_path_text(properties, '$.lastTestMigrationTime') as "last_test_migration_time",
json_extract_path_text(properties, '$.lastTestMigrationStatus') as "last_test_migration_status",
json_extract_path_text(properties, '$.lastMigrationTime') as "last_migration_time",
json_extract_path_text(properties, '$.lastMigrationStatus') as "last_migration_status",
json_extract_path_text(properties, '$.testMigrateState') as "test_migrate_state",
json_extract_path_text(properties, '$.testMigrateStateDescription') as "test_migrate_state_description",
json_extract_path_text(properties, '$.health') as "health",
json_extract_path_text(properties, '$.healthErrors') as "health_errors",
json_extract_path_text(properties, '$.allowedOperations') as "allowed_operations",
json_extract_path_text(properties, '$.currentJob') as "current_job",
json_extract_path_text(properties, '$.criticalJobHistory') as "critical_job_history",
json_extract_path_text(properties, '$.eventCorrelationId') as "event_correlation_id",
json_extract_path_text(properties, '$.providerSpecificDetails') as "provider_specific_details",
subscriptionId,
resourceGroupName,
resourceName,
fabricName,
protectionContainerName,
migrationItemName
FROM azure.recovery_services_site_recovery.replication_migration_items
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND resourceName = 'replace-me';
```

</TabItem>
</Tabs>
