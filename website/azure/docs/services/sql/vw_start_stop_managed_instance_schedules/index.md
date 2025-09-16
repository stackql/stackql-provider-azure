--- 
title: vw_start_stop_managed_instance_schedules
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_start_stop_managed_instance_schedules
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

Creates, updates, deletes, gets or lists a <code>vw_start_stop_managed_instance_schedules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_start_stop_managed_instance_schedules</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_start_stop_managed_instance_schedules" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.timeZoneId') as "time_zone_id",
JSON_EXTRACT(properties, '$.scheduleList') as "schedule_list",
JSON_EXTRACT(properties, '$.nextRunAction') as "next_run_action",
JSON_EXTRACT(properties, '$.nextExecutionTime') as "next_execution_time",
subscriptionId,
resourceGroupName,
managedInstanceName,
startStopScheduleName
FROM azure.sql.start_stop_managed_instance_schedules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managedInstanceName = 'replace-me' AND startStopScheduleName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
systemData as system_data,
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.timeZoneId') as "time_zone_id",
json_extract_path_text(properties, '$.scheduleList') as "schedule_list",
json_extract_path_text(properties, '$.nextRunAction') as "next_run_action",
json_extract_path_text(properties, '$.nextExecutionTime') as "next_execution_time",
subscriptionId,
resourceGroupName,
managedInstanceName,
startStopScheduleName
FROM azure.sql.start_stop_managed_instance_schedules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managedInstanceName = 'replace-me' AND startStopScheduleName = 'replace-me';
```

</TabItem>
</Tabs>
