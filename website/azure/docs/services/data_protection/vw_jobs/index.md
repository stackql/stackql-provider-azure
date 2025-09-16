--- 
title: vw_jobs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_jobs
  - data_protection
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

Creates, updates, deletes, gets or lists a <code>vw_jobs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_jobs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_protection.vw_jobs" /></td></tr>
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
JSON_EXTRACT(properties, '$.activityID') as "activity_id",
JSON_EXTRACT(properties, '$.backupInstanceFriendlyName') as "backup_instance_friendly_name",
JSON_EXTRACT(properties, '$.backupInstanceId') as "backup_instance_id",
JSON_EXTRACT(properties, '$.dataSourceId') as "data_source_id",
JSON_EXTRACT(properties, '$.dataSourceLocation') as "data_source_location",
JSON_EXTRACT(properties, '$.dataSourceName') as "data_source_name",
JSON_EXTRACT(properties, '$.dataSourceSetName') as "data_source_set_name",
JSON_EXTRACT(properties, '$.dataSourceType') as "data_source_type",
JSON_EXTRACT(properties, '$.duration') as "duration",
JSON_EXTRACT(properties, '$.endTime') as "end_time",
JSON_EXTRACT(properties, '$.errorDetails') as "error_details",
JSON_EXTRACT(properties, '$.extendedInfo') as "extended_info",
JSON_EXTRACT(properties, '$.isUserTriggered') as "is_user_triggered",
JSON_EXTRACT(properties, '$.operation') as "operation",
JSON_EXTRACT(properties, '$.operationCategory') as "operation_category",
JSON_EXTRACT(properties, '$.policyId') as "policy_id",
JSON_EXTRACT(properties, '$.policyName') as "policy_name",
JSON_EXTRACT(properties, '$.progressEnabled') as "progress_enabled",
JSON_EXTRACT(properties, '$.progressUrl') as "progress_url",
JSON_EXTRACT(properties, '$.rehydrationPriority') as "rehydration_priority",
JSON_EXTRACT(properties, '$.restoreType') as "restore_type",
JSON_EXTRACT(properties, '$.sourceResourceGroup') as "source_resource_group",
JSON_EXTRACT(properties, '$.sourceSubscriptionID') as "source_subscription_id",
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.subscriptionId') as "subscription_id",
JSON_EXTRACT(properties, '$.supportedActions') as "supported_actions",
JSON_EXTRACT(properties, '$.vaultName') as "vault_name",
JSON_EXTRACT(properties, '$.etag') as "etag",
JSON_EXTRACT(properties, '$.sourceDataStoreName') as "source_data_store_name",
JSON_EXTRACT(properties, '$.destinationDataStoreName') as "destination_data_store_name",
subscriptionId,
resourceGroupName,
vaultName,
jobId
FROM azure.data_protection.jobs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vaultName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.activityID') as "activity_id",
json_extract_path_text(properties, '$.backupInstanceFriendlyName') as "backup_instance_friendly_name",
json_extract_path_text(properties, '$.backupInstanceId') as "backup_instance_id",
json_extract_path_text(properties, '$.dataSourceId') as "data_source_id",
json_extract_path_text(properties, '$.dataSourceLocation') as "data_source_location",
json_extract_path_text(properties, '$.dataSourceName') as "data_source_name",
json_extract_path_text(properties, '$.dataSourceSetName') as "data_source_set_name",
json_extract_path_text(properties, '$.dataSourceType') as "data_source_type",
json_extract_path_text(properties, '$.duration') as "duration",
json_extract_path_text(properties, '$.endTime') as "end_time",
json_extract_path_text(properties, '$.errorDetails') as "error_details",
json_extract_path_text(properties, '$.extendedInfo') as "extended_info",
json_extract_path_text(properties, '$.isUserTriggered') as "is_user_triggered",
json_extract_path_text(properties, '$.operation') as "operation",
json_extract_path_text(properties, '$.operationCategory') as "operation_category",
json_extract_path_text(properties, '$.policyId') as "policy_id",
json_extract_path_text(properties, '$.policyName') as "policy_name",
json_extract_path_text(properties, '$.progressEnabled') as "progress_enabled",
json_extract_path_text(properties, '$.progressUrl') as "progress_url",
json_extract_path_text(properties, '$.rehydrationPriority') as "rehydration_priority",
json_extract_path_text(properties, '$.restoreType') as "restore_type",
json_extract_path_text(properties, '$.sourceResourceGroup') as "source_resource_group",
json_extract_path_text(properties, '$.sourceSubscriptionID') as "source_subscription_id",
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.subscriptionId') as "subscription_id",
json_extract_path_text(properties, '$.supportedActions') as "supported_actions",
json_extract_path_text(properties, '$.vaultName') as "vault_name",
json_extract_path_text(properties, '$.etag') as "etag",
json_extract_path_text(properties, '$.sourceDataStoreName') as "source_data_store_name",
json_extract_path_text(properties, '$.destinationDataStoreName') as "destination_data_store_name",
subscriptionId,
resourceGroupName,
vaultName,
jobId
FROM azure.data_protection.jobs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vaultName = 'replace-me';
```

</TabItem>
</Tabs>
