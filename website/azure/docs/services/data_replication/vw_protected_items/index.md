--- 
title: vw_protected_items
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_protected_items
  - data_replication
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_replication.vw_protected_items" /></td></tr>
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
JSON_EXTRACT(properties, '$.policyName') as "policy_name",
JSON_EXTRACT(properties, '$.replicationExtensionName') as "replication_extension_name",
JSON_EXTRACT(properties, '$.correlationId') as "correlation_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.protectionState') as "protection_state",
JSON_EXTRACT(properties, '$.protectionStateDescription') as "protection_state_description",
JSON_EXTRACT(properties, '$.testFailoverState') as "test_failover_state",
JSON_EXTRACT(properties, '$.testFailoverStateDescription') as "test_failover_state_description",
JSON_EXTRACT(properties, '$.resynchronizationState') as "resynchronization_state",
JSON_EXTRACT(properties, '$.fabricObjectId') as "fabric_object_id",
JSON_EXTRACT(properties, '$.fabricObjectName') as "fabric_object_name",
JSON_EXTRACT(properties, '$.sourceFabricProviderId') as "source_fabric_provider_id",
JSON_EXTRACT(properties, '$.targetFabricProviderId') as "target_fabric_provider_id",
JSON_EXTRACT(properties, '$.fabricId') as "fabric_id",
JSON_EXTRACT(properties, '$.targetFabricId') as "target_fabric_id",
JSON_EXTRACT(properties, '$.draId') as "dra_id",
JSON_EXTRACT(properties, '$.targetDraId') as "target_dra_id",
JSON_EXTRACT(properties, '$.resyncRequired') as "resync_required",
JSON_EXTRACT(properties, '$.lastSuccessfulPlannedFailoverTime') as "last_successful_planned_failover_time",
JSON_EXTRACT(properties, '$.lastSuccessfulUnplannedFailoverTime') as "last_successful_unplanned_failover_time",
JSON_EXTRACT(properties, '$.lastSuccessfulTestFailoverTime') as "last_successful_test_failover_time",
JSON_EXTRACT(properties, '$.currentJob') as "current_job",
JSON_EXTRACT(properties, '$.allowedJobs') as "allowed_jobs",
JSON_EXTRACT(properties, '$.lastFailedEnableProtectionJob') as "last_failed_enable_protection_job",
JSON_EXTRACT(properties, '$.lastFailedPlannedFailoverJob') as "last_failed_planned_failover_job",
JSON_EXTRACT(properties, '$.lastTestFailoverJob') as "last_test_failover_job",
JSON_EXTRACT(properties, '$.replicationHealth') as "replication_health",
JSON_EXTRACT(properties, '$.healthErrors') as "health_errors",
JSON_EXTRACT(properties, '$.customProperties') as "custom_properties",
subscriptionId,
resourceGroupName,
vaultName,
protectedItemName
FROM azure.data_replication.protected_items
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
json_extract_path_text(properties, '$.policyName') as "policy_name",
json_extract_path_text(properties, '$.replicationExtensionName') as "replication_extension_name",
json_extract_path_text(properties, '$.correlationId') as "correlation_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.protectionState') as "protection_state",
json_extract_path_text(properties, '$.protectionStateDescription') as "protection_state_description",
json_extract_path_text(properties, '$.testFailoverState') as "test_failover_state",
json_extract_path_text(properties, '$.testFailoverStateDescription') as "test_failover_state_description",
json_extract_path_text(properties, '$.resynchronizationState') as "resynchronization_state",
json_extract_path_text(properties, '$.fabricObjectId') as "fabric_object_id",
json_extract_path_text(properties, '$.fabricObjectName') as "fabric_object_name",
json_extract_path_text(properties, '$.sourceFabricProviderId') as "source_fabric_provider_id",
json_extract_path_text(properties, '$.targetFabricProviderId') as "target_fabric_provider_id",
json_extract_path_text(properties, '$.fabricId') as "fabric_id",
json_extract_path_text(properties, '$.targetFabricId') as "target_fabric_id",
json_extract_path_text(properties, '$.draId') as "dra_id",
json_extract_path_text(properties, '$.targetDraId') as "target_dra_id",
json_extract_path_text(properties, '$.resyncRequired') as "resync_required",
json_extract_path_text(properties, '$.lastSuccessfulPlannedFailoverTime') as "last_successful_planned_failover_time",
json_extract_path_text(properties, '$.lastSuccessfulUnplannedFailoverTime') as "last_successful_unplanned_failover_time",
json_extract_path_text(properties, '$.lastSuccessfulTestFailoverTime') as "last_successful_test_failover_time",
json_extract_path_text(properties, '$.currentJob') as "current_job",
json_extract_path_text(properties, '$.allowedJobs') as "allowed_jobs",
json_extract_path_text(properties, '$.lastFailedEnableProtectionJob') as "last_failed_enable_protection_job",
json_extract_path_text(properties, '$.lastFailedPlannedFailoverJob') as "last_failed_planned_failover_job",
json_extract_path_text(properties, '$.lastTestFailoverJob') as "last_test_failover_job",
json_extract_path_text(properties, '$.replicationHealth') as "replication_health",
json_extract_path_text(properties, '$.healthErrors') as "health_errors",
json_extract_path_text(properties, '$.customProperties') as "custom_properties",
subscriptionId,
resourceGroupName,
vaultName,
protectedItemName
FROM azure.data_replication.protected_items
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vaultName = 'replace-me';
```

</TabItem>
</Tabs>
