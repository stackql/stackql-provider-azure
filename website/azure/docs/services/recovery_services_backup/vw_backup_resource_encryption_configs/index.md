--- 
title: vw_backup_resource_encryption_configs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_backup_resource_encryption_configs
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

Creates, updates, deletes, gets or lists a <code>vw_backup_resource_encryption_configs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_backup_resource_encryption_configs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_backup.vw_backup_resource_encryption_configs" /></td></tr>
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
JSON_EXTRACT(properties, '$.encryptionAtRestType') as "encryption_at_rest_type",
JSON_EXTRACT(properties, '$.keyUri') as "key_uri",
JSON_EXTRACT(properties, '$.subscriptionId') as "subscription_id",
JSON_EXTRACT(properties, '$.lastUpdateStatus') as "last_update_status",
JSON_EXTRACT(properties, '$.infrastructureEncryptionState') as "infrastructure_encryption_state",
JSON_EXTRACT(properties, '$.userAssignedIdentity') as "user_assigned_identity",
JSON_EXTRACT(properties, '$.useSystemAssignedIdentity') as "use_system_assigned_identity",
subscriptionId,
resourceGroupName,
vaultName
FROM azure.recovery_services_backup.backup_resource_encryption_configs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vaultName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.encryptionAtRestType') as "encryption_at_rest_type",
json_extract_path_text(properties, '$.keyUri') as "key_uri",
json_extract_path_text(properties, '$.subscriptionId') as "subscription_id",
json_extract_path_text(properties, '$.lastUpdateStatus') as "last_update_status",
json_extract_path_text(properties, '$.infrastructureEncryptionState') as "infrastructure_encryption_state",
json_extract_path_text(properties, '$.userAssignedIdentity') as "user_assigned_identity",
json_extract_path_text(properties, '$.useSystemAssignedIdentity') as "use_system_assigned_identity",
subscriptionId,
resourceGroupName,
vaultName
FROM azure.recovery_services_backup.backup_resource_encryption_configs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vaultName = 'replace-me';
```

</TabItem>
</Tabs>
