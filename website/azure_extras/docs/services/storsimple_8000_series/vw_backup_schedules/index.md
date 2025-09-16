--- 
title: vw_backup_schedules
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_backup_schedules
  - storsimple_8000_series
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_backup_schedules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_backup_schedules</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.storsimple_8000_series.vw_backup_schedules" /></td></tr>
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
kind as kind,
JSON_EXTRACT(properties, '$.scheduleRecurrence') as "schedule_recurrence",
JSON_EXTRACT(properties, '$.backupType') as "backup_type",
JSON_EXTRACT(properties, '$.retentionCount') as "retention_count",
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.scheduleStatus') as "schedule_status",
JSON_EXTRACT(properties, '$.lastSuccessfulRun') as "last_successful_run",
subscriptionId,
resourceGroupName,
managerName,
deviceName,
backupPolicyName,
backupScheduleName
FROM azure_extras.storsimple_8000_series.backup_schedules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managerName = 'replace-me' AND deviceName = 'replace-me' AND backupPolicyName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
kind as kind,
json_extract_path_text(properties, '$.scheduleRecurrence') as "schedule_recurrence",
json_extract_path_text(properties, '$.backupType') as "backup_type",
json_extract_path_text(properties, '$.retentionCount') as "retention_count",
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.scheduleStatus') as "schedule_status",
json_extract_path_text(properties, '$.lastSuccessfulRun') as "last_successful_run",
subscriptionId,
resourceGroupName,
managerName,
deviceName,
backupPolicyName,
backupScheduleName
FROM azure_extras.storsimple_8000_series.backup_schedules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managerName = 'replace-me' AND deviceName = 'replace-me' AND backupPolicyName = 'replace-me';
```

</TabItem>
</Tabs>
