--- 
title: vw_volumes
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_volumes
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

Creates, updates, deletes, gets or lists a <code>vw_volumes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_volumes</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.storsimple_8000_series.vw_volumes" /></td></tr>
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
JSON_EXTRACT(properties, '$.sizeInBytes') as "size_in_bytes",
JSON_EXTRACT(properties, '$.volumeType') as "volume_type",
JSON_EXTRACT(properties, '$.volumeContainerId') as "volume_container_id",
JSON_EXTRACT(properties, '$.accessControlRecordIds') as "access_control_record_ids",
JSON_EXTRACT(properties, '$.volumeStatus') as "volume_status",
JSON_EXTRACT(properties, '$.operationStatus') as "operation_status",
JSON_EXTRACT(properties, '$.backupStatus') as "backup_status",
JSON_EXTRACT(properties, '$.monitoringStatus') as "monitoring_status",
JSON_EXTRACT(properties, '$.backupPolicyIds') as "backup_policy_ids",
subscriptionId,
resourceGroupName,
managerName,
deviceName,
volumeContainerName,
volumeName
FROM azure_extras.storsimple_8000_series.volumes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managerName = 'replace-me' AND deviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
kind as kind,
json_extract_path_text(properties, '$.sizeInBytes') as "size_in_bytes",
json_extract_path_text(properties, '$.volumeType') as "volume_type",
json_extract_path_text(properties, '$.volumeContainerId') as "volume_container_id",
json_extract_path_text(properties, '$.accessControlRecordIds') as "access_control_record_ids",
json_extract_path_text(properties, '$.volumeStatus') as "volume_status",
json_extract_path_text(properties, '$.operationStatus') as "operation_status",
json_extract_path_text(properties, '$.backupStatus') as "backup_status",
json_extract_path_text(properties, '$.monitoringStatus') as "monitoring_status",
json_extract_path_text(properties, '$.backupPolicyIds') as "backup_policy_ids",
subscriptionId,
resourceGroupName,
managerName,
deviceName,
volumeContainerName,
volumeName
FROM azure_extras.storsimple_8000_series.volumes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managerName = 'replace-me' AND deviceName = 'replace-me';
```

</TabItem>
</Tabs>
