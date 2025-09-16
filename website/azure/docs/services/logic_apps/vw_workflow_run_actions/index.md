--- 
title: vw_workflow_run_actions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_workflow_run_actions
  - logic_apps
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

Creates, updates, deletes, gets or lists a <code>vw_workflow_run_actions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_workflow_run_actions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.logic_apps.vw_workflow_run_actions" /></td></tr>
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
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.endTime') as "end_time",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.code') as "code",
JSON_EXTRACT(properties, '$.error') as "error",
JSON_EXTRACT(properties, '$.trackingId') as "tracking_id",
JSON_EXTRACT(properties, '$.correlation') as "correlation",
JSON_EXTRACT(properties, '$.inputsLink') as "inputs_link",
JSON_EXTRACT(properties, '$.outputsLink') as "outputs_link",
JSON_EXTRACT(properties, '$.trackedProperties') as "tracked_properties",
JSON_EXTRACT(properties, '$.retryHistory') as "retry_history",
subscriptionId,
resourceGroupName,
workflowName,
runName,
actionName
FROM azure.logic_apps.workflow_run_actions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workflowName = 'replace-me' AND runName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.endTime') as "end_time",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.code') as "code",
json_extract_path_text(properties, '$.error') as "error",
json_extract_path_text(properties, '$.trackingId') as "tracking_id",
json_extract_path_text(properties, '$.correlation') as "correlation",
json_extract_path_text(properties, '$.inputsLink') as "inputs_link",
json_extract_path_text(properties, '$.outputsLink') as "outputs_link",
json_extract_path_text(properties, '$.trackedProperties') as "tracked_properties",
json_extract_path_text(properties, '$.retryHistory') as "retry_history",
subscriptionId,
resourceGroupName,
workflowName,
runName,
actionName
FROM azure.logic_apps.workflow_run_actions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workflowName = 'replace-me' AND runName = 'replace-me';
```

</TabItem>
</Tabs>
