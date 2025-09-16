--- 
title: vw_workflow_triggers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_workflow_triggers
  - app_service
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

Creates, updates, deletes, gets or lists a <code>vw_workflow_triggers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_workflow_triggers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.app_service.vw_workflow_triggers" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.createdTime') as "created_time",
JSON_EXTRACT(properties, '$.changedTime') as "changed_time",
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.lastExecutionTime') as "last_execution_time",
JSON_EXTRACT(properties, '$.nextExecutionTime') as "next_execution_time",
JSON_EXTRACT(properties, '$.recurrence') as "recurrence",
JSON_EXTRACT(properties, '$.workflow') as "workflow",
subscriptionId,
resourceGroupName,
name,
workflowName,
triggerName
FROM azure.app_service.workflow_triggers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND name = 'replace-me' AND workflowName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.createdTime') as "created_time",
json_extract_path_text(properties, '$.changedTime') as "changed_time",
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.lastExecutionTime') as "last_execution_time",
json_extract_path_text(properties, '$.nextExecutionTime') as "next_execution_time",
json_extract_path_text(properties, '$.recurrence') as "recurrence",
json_extract_path_text(properties, '$.workflow') as "workflow",
subscriptionId,
resourceGroupName,
name,
workflowName,
triggerName
FROM azure.app_service.workflow_triggers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND name = 'replace-me' AND workflowName = 'replace-me';
```

</TabItem>
</Tabs>
