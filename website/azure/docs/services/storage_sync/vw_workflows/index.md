--- 
title: vw_workflows
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_workflows
  - storage_sync
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

Creates, updates, deletes, gets or lists a <code>vw_workflows</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_workflows</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage_sync.vw_workflows" /></td></tr>
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
JSON_EXTRACT(properties, '$.lastStepName') as "last_step_name",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.operation') as "operation",
JSON_EXTRACT(properties, '$.steps') as "steps",
JSON_EXTRACT(properties, '$.lastOperationId') as "last_operation_id",
JSON_EXTRACT(properties, '$.commandName') as "command_name",
JSON_EXTRACT(properties, '$.createdTimestamp') as "created_timestamp",
JSON_EXTRACT(properties, '$.lastStatusTimestamp') as "last_status_timestamp",
subscriptionId,
resourceGroupName,
storageSyncServiceName,
workflowId
FROM azure.storage_sync.workflows
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND storageSyncServiceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.lastStepName') as "last_step_name",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.operation') as "operation",
json_extract_path_text(properties, '$.steps') as "steps",
json_extract_path_text(properties, '$.lastOperationId') as "last_operation_id",
json_extract_path_text(properties, '$.commandName') as "command_name",
json_extract_path_text(properties, '$.createdTimestamp') as "created_timestamp",
json_extract_path_text(properties, '$.lastStatusTimestamp') as "last_status_timestamp",
subscriptionId,
resourceGroupName,
storageSyncServiceName,
workflowId
FROM azure.storage_sync.workflows
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND storageSyncServiceName = 'replace-me';
```

</TabItem>
</Tabs>
