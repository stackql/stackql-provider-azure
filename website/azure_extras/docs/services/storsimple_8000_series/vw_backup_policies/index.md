--- 
title: vw_backup_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_backup_policies
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

Creates, updates, deletes, gets or lists a <code>vw_backup_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_backup_policies</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.storsimple_8000_series.vw_backup_policies" /></td></tr>
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
JSON_EXTRACT(properties, '$.volumeIds') as "volume_ids",
JSON_EXTRACT(properties, '$.nextBackupTime') as "next_backup_time",
JSON_EXTRACT(properties, '$.lastBackupTime') as "last_backup_time",
JSON_EXTRACT(properties, '$.schedulesCount') as "schedules_count",
JSON_EXTRACT(properties, '$.scheduledBackupStatus') as "scheduled_backup_status",
JSON_EXTRACT(properties, '$.backupPolicyCreationType') as "backup_policy_creation_type",
JSON_EXTRACT(properties, '$.ssmHostName') as "ssm_host_name",
subscriptionId,
resourceGroupName,
managerName,
deviceName,
backupPolicyName
FROM azure_extras.storsimple_8000_series.backup_policies
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
json_extract_path_text(properties, '$.volumeIds') as "volume_ids",
json_extract_path_text(properties, '$.nextBackupTime') as "next_backup_time",
json_extract_path_text(properties, '$.lastBackupTime') as "last_backup_time",
json_extract_path_text(properties, '$.schedulesCount') as "schedules_count",
json_extract_path_text(properties, '$.scheduledBackupStatus') as "scheduled_backup_status",
json_extract_path_text(properties, '$.backupPolicyCreationType') as "backup_policy_creation_type",
json_extract_path_text(properties, '$.ssmHostName') as "ssm_host_name",
subscriptionId,
resourceGroupName,
managerName,
deviceName,
backupPolicyName
FROM azure_extras.storsimple_8000_series.backup_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managerName = 'replace-me' AND deviceName = 'replace-me';
```

</TabItem>
</Tabs>
