--- 
title: vw_protected_items
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_protected_items
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

Creates, updates, deletes, gets or lists a <code>vw_protected_items</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_protected_items</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_backup.vw_protected_items" /></td></tr>
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
JSON_EXTRACT(properties, '$.protectedItemType') as "protected_item_type",
JSON_EXTRACT(properties, '$.backupManagementType') as "backup_management_type",
JSON_EXTRACT(properties, '$.workloadType') as "workload_type",
JSON_EXTRACT(properties, '$.containerName') as "container_name",
JSON_EXTRACT(properties, '$.sourceResourceId') as "source_resource_id",
JSON_EXTRACT(properties, '$.policyId') as "policy_id",
JSON_EXTRACT(properties, '$.lastRecoveryPoint') as "last_recovery_point",
JSON_EXTRACT(properties, '$.backupSetName') as "backup_set_name",
JSON_EXTRACT(properties, '$.createMode') as "create_mode",
JSON_EXTRACT(properties, '$.deferredDeleteTimeInUTC') as "deferred_delete_time_in_utc",
JSON_EXTRACT(properties, '$.isScheduledForDeferredDelete') as "is_scheduled_for_deferred_delete",
JSON_EXTRACT(properties, '$.deferredDeleteTimeRemaining') as "deferred_delete_time_remaining",
JSON_EXTRACT(properties, '$.isDeferredDeleteScheduleUpcoming') as "is_deferred_delete_schedule_upcoming",
JSON_EXTRACT(properties, '$.isRehydrate') as "is_rehydrate",
JSON_EXTRACT(properties, '$.resourceGuardOperationRequests') as "resource_guard_operation_requests",
JSON_EXTRACT(properties, '$.isArchiveEnabled') as "is_archive_enabled",
JSON_EXTRACT(properties, '$.policyName') as "policy_name",
JSON_EXTRACT(properties, '$.softDeleteRetentionPeriodInDays') as "soft_delete_retention_period_in_days",
JSON_EXTRACT(properties, '$.vaultId') as "vault_id",
subscriptionId,
resourceGroupName,
vaultName,
fabricName,
containerName,
protectedItemName
FROM azure.recovery_services_backup.protected_items
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vaultName = 'replace-me' AND fabricName = 'replace-me' AND containerName = 'replace-me' AND protectedItemName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.protectedItemType') as "protected_item_type",
json_extract_path_text(properties, '$.backupManagementType') as "backup_management_type",
json_extract_path_text(properties, '$.workloadType') as "workload_type",
json_extract_path_text(properties, '$.containerName') as "container_name",
json_extract_path_text(properties, '$.sourceResourceId') as "source_resource_id",
json_extract_path_text(properties, '$.policyId') as "policy_id",
json_extract_path_text(properties, '$.lastRecoveryPoint') as "last_recovery_point",
json_extract_path_text(properties, '$.backupSetName') as "backup_set_name",
json_extract_path_text(properties, '$.createMode') as "create_mode",
json_extract_path_text(properties, '$.deferredDeleteTimeInUTC') as "deferred_delete_time_in_utc",
json_extract_path_text(properties, '$.isScheduledForDeferredDelete') as "is_scheduled_for_deferred_delete",
json_extract_path_text(properties, '$.deferredDeleteTimeRemaining') as "deferred_delete_time_remaining",
json_extract_path_text(properties, '$.isDeferredDeleteScheduleUpcoming') as "is_deferred_delete_schedule_upcoming",
json_extract_path_text(properties, '$.isRehydrate') as "is_rehydrate",
json_extract_path_text(properties, '$.resourceGuardOperationRequests') as "resource_guard_operation_requests",
json_extract_path_text(properties, '$.isArchiveEnabled') as "is_archive_enabled",
json_extract_path_text(properties, '$.policyName') as "policy_name",
json_extract_path_text(properties, '$.softDeleteRetentionPeriodInDays') as "soft_delete_retention_period_in_days",
json_extract_path_text(properties, '$.vaultId') as "vault_id",
subscriptionId,
resourceGroupName,
vaultName,
fabricName,
containerName,
protectedItemName
FROM azure.recovery_services_backup.protected_items
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vaultName = 'replace-me' AND fabricName = 'replace-me' AND containerName = 'replace-me' AND protectedItemName = 'replace-me';
```

</TabItem>
</Tabs>
