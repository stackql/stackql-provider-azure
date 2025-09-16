--- 
title: vw_job_schedules
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_job_schedules
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

Creates, updates, deletes, gets or lists a <code>vw_job_schedules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_job_schedules</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.automation.vw_job_schedules" /></td></tr>
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
JSON_EXTRACT(properties, '$.jobScheduleId') as "job_schedule_id",
JSON_EXTRACT(properties, '$.schedule') as "schedule",
JSON_EXTRACT(properties, '$.runbook') as "runbook",
JSON_EXTRACT(properties, '$.runOn') as "run_on",
JSON_EXTRACT(properties, '$.parameters') as "parameters",
subscriptionId,
resourceGroupName,
automationAccountName,
jobScheduleId
FROM azure.automation.job_schedules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND automationAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.jobScheduleId') as "job_schedule_id",
json_extract_path_text(properties, '$.schedule') as "schedule",
json_extract_path_text(properties, '$.runbook') as "runbook",
json_extract_path_text(properties, '$.runOn') as "run_on",
json_extract_path_text(properties, '$.parameters') as "parameters",
subscriptionId,
resourceGroupName,
automationAccountName,
jobScheduleId
FROM azure.automation.job_schedules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND automationAccountName = 'replace-me';
```

</TabItem>
</Tabs>
