--- 
title: vw_workflow_run_action_repetitions_request_histories
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_workflow_run_action_repetitions_request_histories
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

Creates, updates, deletes, gets or lists a <code>vw_workflow_run_action_repetitions_request_histories</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_workflow_run_action_repetitions_request_histories</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.logic_apps.vw_workflow_run_action_repetitions_request_histories" /></td></tr>
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
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.endTime') as "end_time",
JSON_EXTRACT(properties, '$.request') as "request",
JSON_EXTRACT(properties, '$.response') as "response",
subscriptionId,
resourceGroupName,
workflowName,
runName,
actionName,
repetitionName,
requestHistoryName
FROM azure.logic_apps.workflow_run_action_repetitions_request_histories
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workflowName = 'replace-me' AND runName = 'replace-me' AND actionName = 'replace-me' AND repetitionName = 'replace-me';
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
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.endTime') as "end_time",
json_extract_path_text(properties, '$.request') as "request",
json_extract_path_text(properties, '$.response') as "response",
subscriptionId,
resourceGroupName,
workflowName,
runName,
actionName,
repetitionName,
requestHistoryName
FROM azure.logic_apps.workflow_run_action_repetitions_request_histories
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND workflowName = 'replace-me' AND runName = 'replace-me' AND actionName = 'replace-me' AND repetitionName = 'replace-me';
```

</TabItem>
</Tabs>
