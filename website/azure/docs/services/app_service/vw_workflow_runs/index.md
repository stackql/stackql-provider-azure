--- 
title: vw_workflow_runs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_workflow_runs
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

Creates, updates, deletes, gets or lists a <code>vw_workflow_runs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_workflow_runs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.app_service.vw_workflow_runs" /></td></tr>
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
JSON_EXTRACT(properties, '$.waitEndTime') as "wait_end_time",
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.endTime') as "end_time",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.code') as "code",
JSON_EXTRACT(properties, '$.error') as "error",
JSON_EXTRACT(properties, '$.correlationId') as "correlation_id",
JSON_EXTRACT(properties, '$.correlation') as "correlation",
JSON_EXTRACT(properties, '$.workflow') as "workflow",
JSON_EXTRACT(properties, '$.trigger') as "trigger",
JSON_EXTRACT(properties, '$.outputs') as "outputs",
JSON_EXTRACT(properties, '$.response') as "response",
subscriptionId,
resourceGroupName,
name,
workflowName,
runName
FROM azure.app_service.workflow_runs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND name = 'replace-me' AND workflowName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.waitEndTime') as "wait_end_time",
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.endTime') as "end_time",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.code') as "code",
json_extract_path_text(properties, '$.error') as "error",
json_extract_path_text(properties, '$.correlationId') as "correlation_id",
json_extract_path_text(properties, '$.correlation') as "correlation",
json_extract_path_text(properties, '$.workflow') as "workflow",
json_extract_path_text(properties, '$.trigger') as "trigger",
json_extract_path_text(properties, '$.outputs') as "outputs",
json_extract_path_text(properties, '$.response') as "response",
subscriptionId,
resourceGroupName,
name,
workflowName,
runName
FROM azure.app_service.workflow_runs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND name = 'replace-me' AND workflowName = 'replace-me';
```

</TabItem>
</Tabs>
