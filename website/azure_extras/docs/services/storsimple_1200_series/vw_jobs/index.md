--- 
title: vw_jobs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_jobs
  - storsimple_1200_series
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

Creates, updates, deletes, gets or lists a <code>vw_jobs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_jobs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.storsimple_1200_series.vw_jobs" /></td></tr>
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
status as status,
startTime as start_time,
endTime as end_time,
percentComplete as percent_complete,
error as error,
JSON_EXTRACT(properties, '$.jobType') as "job_type",
JSON_EXTRACT(properties, '$.targetId') as "target_id",
JSON_EXTRACT(properties, '$.entityId') as "entity_id",
JSON_EXTRACT(properties, '$.entityType') as "entity_type",
JSON_EXTRACT(properties, '$.jobStages') as "job_stages",
JSON_EXTRACT(properties, '$.deviceId') as "device_id",
JSON_EXTRACT(properties, '$.isCancellable') as "is_cancellable",
JSON_EXTRACT(properties, '$.stats') as "stats",
JSON_EXTRACT(properties, '$.targetType') as "target_type",
JSON_EXTRACT(properties, '$.sourceDeviceId') as "source_device_id",
JSON_EXTRACT(properties, '$.backupPointInTime') as "backup_point_in_time",
JSON_EXTRACT(properties, '$.downloadProgress') as "download_progress",
JSON_EXTRACT(properties, '$.installProgress') as "install_progress",
subscriptionId,
resourceGroupName,
managerName,
deviceName,
jobName
FROM azure_extras.storsimple_1200_series.jobs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managerName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
status as status,
startTime as start_time,
endTime as end_time,
percentComplete as percent_complete,
error as error,
json_extract_path_text(properties, '$.jobType') as "job_type",
json_extract_path_text(properties, '$.targetId') as "target_id",
json_extract_path_text(properties, '$.entityId') as "entity_id",
json_extract_path_text(properties, '$.entityType') as "entity_type",
json_extract_path_text(properties, '$.jobStages') as "job_stages",
json_extract_path_text(properties, '$.deviceId') as "device_id",
json_extract_path_text(properties, '$.isCancellable') as "is_cancellable",
json_extract_path_text(properties, '$.stats') as "stats",
json_extract_path_text(properties, '$.targetType') as "target_type",
json_extract_path_text(properties, '$.sourceDeviceId') as "source_device_id",
json_extract_path_text(properties, '$.backupPointInTime') as "backup_point_in_time",
json_extract_path_text(properties, '$.downloadProgress') as "download_progress",
json_extract_path_text(properties, '$.installProgress') as "install_progress",
subscriptionId,
resourceGroupName,
managerName,
deviceName,
jobName
FROM azure_extras.storsimple_1200_series.jobs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managerName = 'replace-me';
```

</TabItem>
</Tabs>
