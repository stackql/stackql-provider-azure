--- 
title: vw_backup_resource_storage_configs_non_crr
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_backup_resource_storage_configs_non_crr
  - recovery_services_backup
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

Creates, updates, deletes, gets or lists a <code>vw_backup_resource_storage_configs_non_crr</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_backup_resource_storage_configs_non_crr</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_backup.vw_backup_resource_storage_configs_non_crr" /></td></tr>
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
JSON_EXTRACT(properties, '$.storageModelType') as "storage_model_type",
JSON_EXTRACT(properties, '$.storageType') as "storage_type",
JSON_EXTRACT(properties, '$.storageTypeState') as "storage_type_state",
JSON_EXTRACT(properties, '$.crossRegionRestoreFlag') as "cross_region_restore_flag",
JSON_EXTRACT(properties, '$.dedupState') as "dedup_state",
JSON_EXTRACT(properties, '$.xcoolState') as "xcool_state",
subscriptionId,
resourceGroupName,
vaultName
FROM azure.recovery_services_backup.backup_resource_storage_configs_non_crr
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vaultName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.storageModelType') as "storage_model_type",
json_extract_path_text(properties, '$.storageType') as "storage_type",
json_extract_path_text(properties, '$.storageTypeState') as "storage_type_state",
json_extract_path_text(properties, '$.crossRegionRestoreFlag') as "cross_region_restore_flag",
json_extract_path_text(properties, '$.dedupState') as "dedup_state",
json_extract_path_text(properties, '$.xcoolState') as "xcool_state",
subscriptionId,
resourceGroupName,
vaultName
FROM azure.recovery_services_backup.backup_resource_storage_configs_non_crr
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vaultName = 'replace-me';
```

</TabItem>
</Tabs>
