--- 
title: vw_backup_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_backup_policies
  - netapp
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_backup_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_backup_policies</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.netapp.vw_backup_policies" /></td></tr>
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
location as location,
tags as tags,
etag as etag,
JSON_EXTRACT(properties, '$.backupPolicyId') as "backup_policy_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.dailyBackupsToKeep') as "daily_backups_to_keep",
JSON_EXTRACT(properties, '$.weeklyBackupsToKeep') as "weekly_backups_to_keep",
JSON_EXTRACT(properties, '$.monthlyBackupsToKeep') as "monthly_backups_to_keep",
JSON_EXTRACT(properties, '$.volumesAssigned') as "volumes_assigned",
JSON_EXTRACT(properties, '$.enabled') as "enabled",
JSON_EXTRACT(properties, '$.volumeBackups') as "volume_backups",
subscriptionId,
resourceGroupName,
accountName,
backupPolicyName
FROM azure_isv.netapp.backup_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
etag as etag,
json_extract_path_text(properties, '$.backupPolicyId') as "backup_policy_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.dailyBackupsToKeep') as "daily_backups_to_keep",
json_extract_path_text(properties, '$.weeklyBackupsToKeep') as "weekly_backups_to_keep",
json_extract_path_text(properties, '$.monthlyBackupsToKeep') as "monthly_backups_to_keep",
json_extract_path_text(properties, '$.volumesAssigned') as "volumes_assigned",
json_extract_path_text(properties, '$.enabled') as "enabled",
json_extract_path_text(properties, '$.volumeBackups') as "volume_backups",
subscriptionId,
resourceGroupName,
accountName,
backupPolicyName
FROM azure_isv.netapp.backup_policies
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
