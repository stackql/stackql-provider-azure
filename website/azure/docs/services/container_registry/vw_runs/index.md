--- 
title: vw_runs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_runs
  - container_registry
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

Creates, updates, deletes, gets or lists a <code>vw_runs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_runs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.container_registry.vw_runs" /></td></tr>
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
JSON_EXTRACT(properties, '$.runId') as "run_id",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.lastUpdatedTime') as "last_updated_time",
JSON_EXTRACT(properties, '$.runType') as "run_type",
JSON_EXTRACT(properties, '$.agentPoolName') as "agent_pool_name",
JSON_EXTRACT(properties, '$.createTime') as "create_time",
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.finishTime') as "finish_time",
JSON_EXTRACT(properties, '$.outputImages') as "output_images",
JSON_EXTRACT(properties, '$.task') as "task",
JSON_EXTRACT(properties, '$.imageUpdateTrigger') as "image_update_trigger",
JSON_EXTRACT(properties, '$.sourceTrigger') as "source_trigger",
JSON_EXTRACT(properties, '$.timerTrigger') as "timer_trigger",
JSON_EXTRACT(properties, '$.platform') as "platform",
JSON_EXTRACT(properties, '$.agentConfiguration') as "agent_configuration",
JSON_EXTRACT(properties, '$.sourceRegistryAuth') as "source_registry_auth",
JSON_EXTRACT(properties, '$.customRegistries') as "custom_registries",
JSON_EXTRACT(properties, '$.runErrorMessage') as "run_error_message",
JSON_EXTRACT(properties, '$.updateTriggerToken') as "update_trigger_token",
JSON_EXTRACT(properties, '$.logArtifact') as "log_artifact",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.isArchiveEnabled') as "is_archive_enabled",
subscriptionId,
resourceGroupName,
registryName,
runId
FROM azure.container_registry.runs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND registryName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.runId') as "run_id",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.lastUpdatedTime') as "last_updated_time",
json_extract_path_text(properties, '$.runType') as "run_type",
json_extract_path_text(properties, '$.agentPoolName') as "agent_pool_name",
json_extract_path_text(properties, '$.createTime') as "create_time",
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.finishTime') as "finish_time",
json_extract_path_text(properties, '$.outputImages') as "output_images",
json_extract_path_text(properties, '$.task') as "task",
json_extract_path_text(properties, '$.imageUpdateTrigger') as "image_update_trigger",
json_extract_path_text(properties, '$.sourceTrigger') as "source_trigger",
json_extract_path_text(properties, '$.timerTrigger') as "timer_trigger",
json_extract_path_text(properties, '$.platform') as "platform",
json_extract_path_text(properties, '$.agentConfiguration') as "agent_configuration",
json_extract_path_text(properties, '$.sourceRegistryAuth') as "source_registry_auth",
json_extract_path_text(properties, '$.customRegistries') as "custom_registries",
json_extract_path_text(properties, '$.runErrorMessage') as "run_error_message",
json_extract_path_text(properties, '$.updateTriggerToken') as "update_trigger_token",
json_extract_path_text(properties, '$.logArtifact') as "log_artifact",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.isArchiveEnabled') as "is_archive_enabled",
subscriptionId,
resourceGroupName,
registryName,
runId
FROM azure.container_registry.runs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND registryName = 'replace-me';
```

</TabItem>
</Tabs>
