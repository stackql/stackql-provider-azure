--- 
title: vw_backups
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_backups
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

Creates, updates, deletes, gets or lists a <code>vw_backups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_backups</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.netapp.vw_backups" /></td></tr>
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
JSON_EXTRACT(properties, '$.backupId') as "backup_id",
JSON_EXTRACT(properties, '$.creationDate') as "creation_date",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.size') as "size",
JSON_EXTRACT(properties, '$.label') as "label",
JSON_EXTRACT(properties, '$.backupType') as "backup_type",
JSON_EXTRACT(properties, '$.failureReason') as "failure_reason",
JSON_EXTRACT(properties, '$.volumeResourceId') as "volume_resource_id",
JSON_EXTRACT(properties, '$.useExistingSnapshot') as "use_existing_snapshot",
JSON_EXTRACT(properties, '$.snapshotName') as "snapshot_name",
JSON_EXTRACT(properties, '$.backupPolicyResourceId') as "backup_policy_resource_id",
subscriptionId,
resourceGroupName,
accountName,
backupVaultName,
backupName
FROM azure_isv.netapp.backups
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me' AND backupVaultName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.backupId') as "backup_id",
json_extract_path_text(properties, '$.creationDate') as "creation_date",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.size') as "size",
json_extract_path_text(properties, '$.label') as "label",
json_extract_path_text(properties, '$.backupType') as "backup_type",
json_extract_path_text(properties, '$.failureReason') as "failure_reason",
json_extract_path_text(properties, '$.volumeResourceId') as "volume_resource_id",
json_extract_path_text(properties, '$.useExistingSnapshot') as "use_existing_snapshot",
json_extract_path_text(properties, '$.snapshotName') as "snapshot_name",
json_extract_path_text(properties, '$.backupPolicyResourceId') as "backup_policy_resource_id",
subscriptionId,
resourceGroupName,
accountName,
backupVaultName,
backupName
FROM azure_isv.netapp.backups
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me' AND backupVaultName = 'replace-me';
```

</TabItem>
</Tabs>
