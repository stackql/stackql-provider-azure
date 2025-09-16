--- 
title: vw_pools
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_pools
  - batch
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

Creates, updates, deletes, gets or lists a <code>vw_pools</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_pools</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.batch.vw_pools" /></td></tr>
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
identity as identity,
type as type,
etag as etag,
tags as tags,
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.lastModified') as "last_modified",
JSON_EXTRACT(properties, '$.creationTime') as "creation_time",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.provisioningStateTransitionTime') as "provisioning_state_transition_time",
JSON_EXTRACT(properties, '$.allocationState') as "allocation_state",
JSON_EXTRACT(properties, '$.allocationStateTransitionTime') as "allocation_state_transition_time",
JSON_EXTRACT(properties, '$.vmSize') as "vm_size",
JSON_EXTRACT(properties, '$.deploymentConfiguration') as "deployment_configuration",
JSON_EXTRACT(properties, '$.currentDedicatedNodes') as "current_dedicated_nodes",
JSON_EXTRACT(properties, '$.currentLowPriorityNodes') as "current_low_priority_nodes",
JSON_EXTRACT(properties, '$.scaleSettings') as "scale_settings",
JSON_EXTRACT(properties, '$.autoScaleRun') as "auto_scale_run",
JSON_EXTRACT(properties, '$.interNodeCommunication') as "inter_node_communication",
JSON_EXTRACT(properties, '$.networkConfiguration') as "network_configuration",
JSON_EXTRACT(properties, '$.taskSlotsPerNode') as "task_slots_per_node",
JSON_EXTRACT(properties, '$.taskSchedulingPolicy') as "task_scheduling_policy",
JSON_EXTRACT(properties, '$.userAccounts') as "user_accounts",
JSON_EXTRACT(properties, '$.metadata') as "metadata",
JSON_EXTRACT(properties, '$.startTask') as "start_task",
JSON_EXTRACT(properties, '$.certificates') as "certificates",
JSON_EXTRACT(properties, '$.applicationPackages') as "application_packages",
JSON_EXTRACT(properties, '$.applicationLicenses') as "application_licenses",
JSON_EXTRACT(properties, '$.resizeOperationStatus') as "resize_operation_status",
JSON_EXTRACT(properties, '$.mountConfiguration') as "mount_configuration",
JSON_EXTRACT(properties, '$.targetNodeCommunicationMode') as "target_node_communication_mode",
JSON_EXTRACT(properties, '$.currentNodeCommunicationMode') as "current_node_communication_mode",
JSON_EXTRACT(properties, '$.upgradePolicy') as "upgrade_policy",
JSON_EXTRACT(properties, '$.resourceTags') as "resource_tags",
subscriptionId,
resourceGroupName,
accountName,
poolName
FROM azure.batch.pools
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
identity as identity,
type as type,
etag as etag,
tags as tags,
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.lastModified') as "last_modified",
json_extract_path_text(properties, '$.creationTime') as "creation_time",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.provisioningStateTransitionTime') as "provisioning_state_transition_time",
json_extract_path_text(properties, '$.allocationState') as "allocation_state",
json_extract_path_text(properties, '$.allocationStateTransitionTime') as "allocation_state_transition_time",
json_extract_path_text(properties, '$.vmSize') as "vm_size",
json_extract_path_text(properties, '$.deploymentConfiguration') as "deployment_configuration",
json_extract_path_text(properties, '$.currentDedicatedNodes') as "current_dedicated_nodes",
json_extract_path_text(properties, '$.currentLowPriorityNodes') as "current_low_priority_nodes",
json_extract_path_text(properties, '$.scaleSettings') as "scale_settings",
json_extract_path_text(properties, '$.autoScaleRun') as "auto_scale_run",
json_extract_path_text(properties, '$.interNodeCommunication') as "inter_node_communication",
json_extract_path_text(properties, '$.networkConfiguration') as "network_configuration",
json_extract_path_text(properties, '$.taskSlotsPerNode') as "task_slots_per_node",
json_extract_path_text(properties, '$.taskSchedulingPolicy') as "task_scheduling_policy",
json_extract_path_text(properties, '$.userAccounts') as "user_accounts",
json_extract_path_text(properties, '$.metadata') as "metadata",
json_extract_path_text(properties, '$.startTask') as "start_task",
json_extract_path_text(properties, '$.certificates') as "certificates",
json_extract_path_text(properties, '$.applicationPackages') as "application_packages",
json_extract_path_text(properties, '$.applicationLicenses') as "application_licenses",
json_extract_path_text(properties, '$.resizeOperationStatus') as "resize_operation_status",
json_extract_path_text(properties, '$.mountConfiguration') as "mount_configuration",
json_extract_path_text(properties, '$.targetNodeCommunicationMode') as "target_node_communication_mode",
json_extract_path_text(properties, '$.currentNodeCommunicationMode') as "current_node_communication_mode",
json_extract_path_text(properties, '$.upgradePolicy') as "upgrade_policy",
json_extract_path_text(properties, '$.resourceTags') as "resource_tags",
subscriptionId,
resourceGroupName,
accountName,
poolName
FROM azure.batch.pools
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
