--- 
title: vw_session_hosts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_session_hosts
  - desktop_virtualization
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

Creates, updates, deletes, gets or lists a <code>vw_session_hosts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_session_hosts</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.desktop_virtualization.vw_session_hosts" /></td></tr>
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
JSON_EXTRACT(properties, '$.objectId') as "object_id",
JSON_EXTRACT(properties, '$.lastHeartBeat') as "last_heart_beat",
JSON_EXTRACT(properties, '$.sessions') as "sessions",
JSON_EXTRACT(properties, '$.agentVersion') as "agent_version",
JSON_EXTRACT(properties, '$.allowNewSession') as "allow_new_session",
JSON_EXTRACT(properties, '$.virtualMachineId') as "virtual_machine_id",
JSON_EXTRACT(properties, '$.resourceId') as "resource_id",
JSON_EXTRACT(properties, '$.assignedUser') as "assigned_user",
JSON_EXTRACT(properties, '$.friendlyName') as "friendly_name",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.statusTimestamp') as "status_timestamp",
JSON_EXTRACT(properties, '$.osVersion') as "os_version",
JSON_EXTRACT(properties, '$.sxSStackVersion') as "sx_s_stack_version",
JSON_EXTRACT(properties, '$.updateState') as "update_state",
JSON_EXTRACT(properties, '$.lastUpdateTime') as "last_update_time",
JSON_EXTRACT(properties, '$.updateErrorMessage') as "update_error_message",
JSON_EXTRACT(properties, '$.lastSessionHostUpdateTime') as "last_session_host_update_time",
JSON_EXTRACT(properties, '$.sessionHostConfiguration') as "session_host_configuration",
JSON_EXTRACT(properties, '$.sessionHostHealthCheckResults') as "session_host_health_check_results",
subscriptionId,
resourceGroupName,
hostPoolName,
sessionHostName
FROM azure.desktop_virtualization.session_hosts
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND hostPoolName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.objectId') as "object_id",
json_extract_path_text(properties, '$.lastHeartBeat') as "last_heart_beat",
json_extract_path_text(properties, '$.sessions') as "sessions",
json_extract_path_text(properties, '$.agentVersion') as "agent_version",
json_extract_path_text(properties, '$.allowNewSession') as "allow_new_session",
json_extract_path_text(properties, '$.virtualMachineId') as "virtual_machine_id",
json_extract_path_text(properties, '$.resourceId') as "resource_id",
json_extract_path_text(properties, '$.assignedUser') as "assigned_user",
json_extract_path_text(properties, '$.friendlyName') as "friendly_name",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.statusTimestamp') as "status_timestamp",
json_extract_path_text(properties, '$.osVersion') as "os_version",
json_extract_path_text(properties, '$.sxSStackVersion') as "sx_s_stack_version",
json_extract_path_text(properties, '$.updateState') as "update_state",
json_extract_path_text(properties, '$.lastUpdateTime') as "last_update_time",
json_extract_path_text(properties, '$.updateErrorMessage') as "update_error_message",
json_extract_path_text(properties, '$.lastSessionHostUpdateTime') as "last_session_host_update_time",
json_extract_path_text(properties, '$.sessionHostConfiguration') as "session_host_configuration",
json_extract_path_text(properties, '$.sessionHostHealthCheckResults') as "session_host_health_check_results",
subscriptionId,
resourceGroupName,
hostPoolName,
sessionHostName
FROM azure.desktop_virtualization.session_hosts
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND hostPoolName = 'replace-me';
```

</TabItem>
</Tabs>
