--- 
title: vw_agents
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_agents
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

Creates, updates, deletes, gets or lists a <code>vw_agents</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_agents</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage_mover.vw_agents" /></td></tr>
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
JSON_EXTRACT(properties, '$.agentVersion') as "agent_version",
JSON_EXTRACT(properties, '$.arcResourceId') as "arc_resource_id",
JSON_EXTRACT(properties, '$.arcVmUuid') as "arc_vm_uuid",
JSON_EXTRACT(properties, '$.agentStatus') as "agent_status",
JSON_EXTRACT(properties, '$.lastStatusUpdate') as "last_status_update",
JSON_EXTRACT(properties, '$.localIPAddress') as "local_ip_address",
JSON_EXTRACT(properties, '$.memoryInMB') as "memory_in_mb",
JSON_EXTRACT(properties, '$.numberOfCores') as "number_of_cores",
JSON_EXTRACT(properties, '$.uptimeInSeconds') as "uptime_in_seconds",
JSON_EXTRACT(properties, '$.timeZone') as "time_zone",
JSON_EXTRACT(properties, '$.uploadLimitSchedule') as "upload_limit_schedule",
JSON_EXTRACT(properties, '$.errorDetails') as "error_details",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
storageMoverName,
agentName
FROM azure.storage_mover.agents
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND storageMoverName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.agentVersion') as "agent_version",
json_extract_path_text(properties, '$.arcResourceId') as "arc_resource_id",
json_extract_path_text(properties, '$.arcVmUuid') as "arc_vm_uuid",
json_extract_path_text(properties, '$.agentStatus') as "agent_status",
json_extract_path_text(properties, '$.lastStatusUpdate') as "last_status_update",
json_extract_path_text(properties, '$.localIPAddress') as "local_ip_address",
json_extract_path_text(properties, '$.memoryInMB') as "memory_in_mb",
json_extract_path_text(properties, '$.numberOfCores') as "number_of_cores",
json_extract_path_text(properties, '$.uptimeInSeconds') as "uptime_in_seconds",
json_extract_path_text(properties, '$.timeZone') as "time_zone",
json_extract_path_text(properties, '$.uploadLimitSchedule') as "upload_limit_schedule",
json_extract_path_text(properties, '$.errorDetails') as "error_details",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
storageMoverName,
agentName
FROM azure.storage_mover.agents
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND storageMoverName = 'replace-me';
```

</TabItem>
</Tabs>
