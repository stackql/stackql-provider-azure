--- 
title: vw_workflow_run_action_repetitions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_workflow_run_action_repetitions
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

Creates, updates, deletes, gets or lists a <code>vw_workflow_run_action_repetitions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_workflow_run_action_repetitions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.app_service.vw_workflow_run_action_repetitions" /></td></tr>
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
JSON_EXTRACT(properties, '$.repetitionIndexes') as "repetition_indexes",
JSON_EXTRACT(properties, '$.trackingId') as "tracking_id",
JSON_EXTRACT(properties, '$.inputs') as "inputs",
JSON_EXTRACT(properties, '$.inputsLink') as "inputs_link",
JSON_EXTRACT(properties, '$.outputs') as "outputs",
JSON_EXTRACT(properties, '$.outputsLink') as "outputs_link",
JSON_EXTRACT(properties, '$.trackedProperties') as "tracked_properties",
JSON_EXTRACT(properties, '$.retryHistory') as "retry_history",
JSON_EXTRACT(properties, '$.iterationCount') as "iteration_count",
subscriptionId,
resourceGroupName,
name,
workflowName,
runName,
actionName,
repetitionName
FROM azure.app_service.workflow_run_action_repetitions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND name = 'replace-me' AND workflowName = 'replace-me' AND runName = 'replace-me' AND actionName = 'replace-me';
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
json_extract_path_text(properties, '$.repetitionIndexes') as "repetition_indexes",
json_extract_path_text(properties, '$.trackingId') as "tracking_id",
json_extract_path_text(properties, '$.inputs') as "inputs",
json_extract_path_text(properties, '$.inputsLink') as "inputs_link",
json_extract_path_text(properties, '$.outputs') as "outputs",
json_extract_path_text(properties, '$.outputsLink') as "outputs_link",
json_extract_path_text(properties, '$.trackedProperties') as "tracked_properties",
json_extract_path_text(properties, '$.retryHistory') as "retry_history",
json_extract_path_text(properties, '$.iterationCount') as "iteration_count",
subscriptionId,
resourceGroupName,
name,
workflowName,
runName,
actionName,
repetitionName
FROM azure.app_service.workflow_run_action_repetitions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND name = 'replace-me' AND workflowName = 'replace-me' AND runName = 'replace-me' AND actionName = 'replace-me';
```

</TabItem>
</Tabs>
