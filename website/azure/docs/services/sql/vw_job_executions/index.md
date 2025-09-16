--- 
title: vw_job_executions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_job_executions
  - sql
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

Creates, updates, deletes, gets or lists a <code>vw_job_executions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_job_executions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_job_executions" /></td></tr>
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
JSON_EXTRACT(properties, '$.jobVersion') as "job_version",
JSON_EXTRACT(properties, '$.stepName') as "step_name",
JSON_EXTRACT(properties, '$.stepId') as "step_id",
JSON_EXTRACT(properties, '$.jobExecutionId') as "job_execution_id",
JSON_EXTRACT(properties, '$.lifecycle') as "lifecycle",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.createTime') as "create_time",
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.endTime') as "end_time",
JSON_EXTRACT(properties, '$.currentAttempts') as "current_attempts",
JSON_EXTRACT(properties, '$.currentAttemptStartTime') as "current_attempt_start_time",
JSON_EXTRACT(properties, '$.lastMessage') as "last_message",
JSON_EXTRACT(properties, '$.target') as "target",
subscriptionId,
resourceGroupName,
serverName,
jobAgentName,
jobName,
jobExecutionId
FROM azure.sql.job_executions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me' AND jobAgentName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.jobVersion') as "job_version",
json_extract_path_text(properties, '$.stepName') as "step_name",
json_extract_path_text(properties, '$.stepId') as "step_id",
json_extract_path_text(properties, '$.jobExecutionId') as "job_execution_id",
json_extract_path_text(properties, '$.lifecycle') as "lifecycle",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.createTime') as "create_time",
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.endTime') as "end_time",
json_extract_path_text(properties, '$.currentAttempts') as "current_attempts",
json_extract_path_text(properties, '$.currentAttemptStartTime') as "current_attempt_start_time",
json_extract_path_text(properties, '$.lastMessage') as "last_message",
json_extract_path_text(properties, '$.target') as "target",
subscriptionId,
resourceGroupName,
serverName,
jobAgentName,
jobName,
jobExecutionId
FROM azure.sql.job_executions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me' AND jobAgentName = 'replace-me';
```

</TabItem>
</Tabs>
