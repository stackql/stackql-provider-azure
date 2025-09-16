--- 
title: vw_tasks
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_tasks
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

Creates, updates, deletes, gets or lists a <code>vw_tasks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_tasks</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.container_registry.vw_tasks" /></td></tr>
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
tags as tags,
systemData as system_data,
identity as identity,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.creationDate') as "creation_date",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.platform') as "platform",
JSON_EXTRACT(properties, '$.agentConfiguration') as "agent_configuration",
JSON_EXTRACT(properties, '$.agentPoolName') as "agent_pool_name",
JSON_EXTRACT(properties, '$.timeout') as "timeout",
JSON_EXTRACT(properties, '$.step') as "step",
JSON_EXTRACT(properties, '$.trigger') as "trigger",
JSON_EXTRACT(properties, '$.credentials') as "credentials",
JSON_EXTRACT(properties, '$.logTemplate') as "log_template",
JSON_EXTRACT(properties, '$.isSystemTask') as "is_system_task",
subscriptionId,
resourceGroupName,
registryName,
taskName
FROM azure.container_registry.tasks
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND registryName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
tags as tags,
systemData as system_data,
identity as identity,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.creationDate') as "creation_date",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.platform') as "platform",
json_extract_path_text(properties, '$.agentConfiguration') as "agent_configuration",
json_extract_path_text(properties, '$.agentPoolName') as "agent_pool_name",
json_extract_path_text(properties, '$.timeout') as "timeout",
json_extract_path_text(properties, '$.step') as "step",
json_extract_path_text(properties, '$.trigger') as "trigger",
json_extract_path_text(properties, '$.credentials') as "credentials",
json_extract_path_text(properties, '$.logTemplate') as "log_template",
json_extract_path_text(properties, '$.isSystemTask') as "is_system_task",
subscriptionId,
resourceGroupName,
registryName,
taskName
FROM azure.container_registry.tasks
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND registryName = 'replace-me';
```

</TabItem>
</Tabs>
