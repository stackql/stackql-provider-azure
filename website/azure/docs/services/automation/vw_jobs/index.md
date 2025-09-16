--- 
title: vw_jobs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_jobs
  - automation
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

Creates, updates, deletes, gets or lists a <code>vw_jobs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_jobs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.automation.vw_jobs" /></td></tr>
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
JSON_EXTRACT(properties, '$.runbook') as "runbook",
JSON_EXTRACT(properties, '$.startedBy') as "started_by",
JSON_EXTRACT(properties, '$.runOn') as "run_on",
JSON_EXTRACT(properties, '$.jobId') as "job_id",
JSON_EXTRACT(properties, '$.creationTime') as "creation_time",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.statusDetails') as "status_details",
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.endTime') as "end_time",
JSON_EXTRACT(properties, '$.exception') as "exception",
JSON_EXTRACT(properties, '$.lastModifiedTime') as "last_modified_time",
JSON_EXTRACT(properties, '$.lastStatusModifiedTime') as "last_status_modified_time",
JSON_EXTRACT(properties, '$.parameters') as "parameters",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
automationAccountName,
jobName
FROM azure.automation.jobs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND automationAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.runbook') as "runbook",
json_extract_path_text(properties, '$.startedBy') as "started_by",
json_extract_path_text(properties, '$.runOn') as "run_on",
json_extract_path_text(properties, '$.jobId') as "job_id",
json_extract_path_text(properties, '$.creationTime') as "creation_time",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.statusDetails') as "status_details",
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.endTime') as "end_time",
json_extract_path_text(properties, '$.exception') as "exception",
json_extract_path_text(properties, '$.lastModifiedTime') as "last_modified_time",
json_extract_path_text(properties, '$.lastStatusModifiedTime') as "last_status_modified_time",
json_extract_path_text(properties, '$.parameters') as "parameters",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
automationAccountName,
jobName
FROM azure.automation.jobs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND automationAccountName = 'replace-me';
```

</TabItem>
</Tabs>
