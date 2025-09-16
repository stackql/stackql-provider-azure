--- 
title: vw_schedules
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_schedules
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

Creates, updates, deletes, gets or lists a <code>vw_schedules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_schedules</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.automation.vw_schedules" /></td></tr>
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
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.startTimeOffsetMinutes') as "start_time_offset_minutes",
JSON_EXTRACT(properties, '$.expiryTime') as "expiry_time",
JSON_EXTRACT(properties, '$.expiryTimeOffsetMinutes') as "expiry_time_offset_minutes",
JSON_EXTRACT(properties, '$.isEnabled') as "is_enabled",
JSON_EXTRACT(properties, '$.nextRun') as "next_run",
JSON_EXTRACT(properties, '$.nextRunOffsetMinutes') as "next_run_offset_minutes",
JSON_EXTRACT(properties, '$.interval') as "interval",
JSON_EXTRACT(properties, '$.frequency') as "frequency",
JSON_EXTRACT(properties, '$.timeZone') as "time_zone",
JSON_EXTRACT(properties, '$.advancedSchedule') as "advanced_schedule",
JSON_EXTRACT(properties, '$.creationTime') as "creation_time",
JSON_EXTRACT(properties, '$.lastModifiedTime') as "last_modified_time",
JSON_EXTRACT(properties, '$.description') as "description",
subscriptionId,
resourceGroupName,
automationAccountName,
scheduleName
FROM azure.automation.schedules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND automationAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.startTimeOffsetMinutes') as "start_time_offset_minutes",
json_extract_path_text(properties, '$.expiryTime') as "expiry_time",
json_extract_path_text(properties, '$.expiryTimeOffsetMinutes') as "expiry_time_offset_minutes",
json_extract_path_text(properties, '$.isEnabled') as "is_enabled",
json_extract_path_text(properties, '$.nextRun') as "next_run",
json_extract_path_text(properties, '$.nextRunOffsetMinutes') as "next_run_offset_minutes",
json_extract_path_text(properties, '$.interval') as "interval",
json_extract_path_text(properties, '$.frequency') as "frequency",
json_extract_path_text(properties, '$.timeZone') as "time_zone",
json_extract_path_text(properties, '$.advancedSchedule') as "advanced_schedule",
json_extract_path_text(properties, '$.creationTime') as "creation_time",
json_extract_path_text(properties, '$.lastModifiedTime') as "last_modified_time",
json_extract_path_text(properties, '$.description') as "description",
subscriptionId,
resourceGroupName,
automationAccountName,
scheduleName
FROM azure.automation.schedules
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND automationAccountName = 'replace-me';
```

</TabItem>
</Tabs>
