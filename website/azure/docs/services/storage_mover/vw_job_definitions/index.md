--- 
title: vw_job_definitions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_job_definitions
  - storage_mover
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

Creates, updates, deletes, gets or lists a <code>vw_job_definitions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_job_definitions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage_mover.vw_job_definitions" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.copyMode') as "copy_mode",
JSON_EXTRACT(properties, '$.sourceName') as "source_name",
JSON_EXTRACT(properties, '$.sourceResourceId') as "source_resource_id",
JSON_EXTRACT(properties, '$.sourceSubpath') as "source_subpath",
JSON_EXTRACT(properties, '$.targetName') as "target_name",
JSON_EXTRACT(properties, '$.targetResourceId') as "target_resource_id",
JSON_EXTRACT(properties, '$.targetSubpath') as "target_subpath",
JSON_EXTRACT(properties, '$.latestJobRunName') as "latest_job_run_name",
JSON_EXTRACT(properties, '$.latestJobRunResourceId') as "latest_job_run_resource_id",
JSON_EXTRACT(properties, '$.latestJobRunStatus') as "latest_job_run_status",
JSON_EXTRACT(properties, '$.agentName') as "agent_name",
JSON_EXTRACT(properties, '$.agentResourceId') as "agent_resource_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
storageMoverName,
projectName,
jobDefinitionName
FROM azure.storage_mover.job_definitions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND storageMoverName = 'replace-me' AND projectName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.copyMode') as "copy_mode",
json_extract_path_text(properties, '$.sourceName') as "source_name",
json_extract_path_text(properties, '$.sourceResourceId') as "source_resource_id",
json_extract_path_text(properties, '$.sourceSubpath') as "source_subpath",
json_extract_path_text(properties, '$.targetName') as "target_name",
json_extract_path_text(properties, '$.targetResourceId') as "target_resource_id",
json_extract_path_text(properties, '$.targetSubpath') as "target_subpath",
json_extract_path_text(properties, '$.latestJobRunName') as "latest_job_run_name",
json_extract_path_text(properties, '$.latestJobRunResourceId') as "latest_job_run_resource_id",
json_extract_path_text(properties, '$.latestJobRunStatus') as "latest_job_run_status",
json_extract_path_text(properties, '$.agentName') as "agent_name",
json_extract_path_text(properties, '$.agentResourceId') as "agent_resource_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
storageMoverName,
projectName,
jobDefinitionName
FROM azure.storage_mover.job_definitions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND storageMoverName = 'replace-me' AND projectName = 'replace-me';
```

</TabItem>
</Tabs>
