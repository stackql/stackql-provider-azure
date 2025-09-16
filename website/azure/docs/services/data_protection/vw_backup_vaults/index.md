--- 
title: vw_backup_vaults
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_backup_vaults
  - data_protection
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

Creates, updates, deletes, gets or lists a <code>vw_backup_vaults</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_backup_vaults</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_protection.vw_backup_vaults" /></td></tr>
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
identity as identity,
JSON_EXTRACT(properties, '$.monitoringSettings') as "monitoring_settings",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.resourceMoveState') as "resource_move_state",
JSON_EXTRACT(properties, '$.resourceMoveDetails') as "resource_move_details",
JSON_EXTRACT(properties, '$.securitySettings') as "security_settings",
JSON_EXTRACT(properties, '$.storageSettings') as "storage_settings",
JSON_EXTRACT(properties, '$.isVaultProtectedByResourceGuard') as "is_vault_protected_by_resource_guard",
JSON_EXTRACT(properties, '$.featureSettings') as "feature_settings",
JSON_EXTRACT(properties, '$.secureScore') as "secure_score",
JSON_EXTRACT(properties, '$.bcdrSecurityLevel') as "bcdr_security_level",
JSON_EXTRACT(properties, '$.resourceGuardOperationRequests') as "resource_guard_operation_requests",
JSON_EXTRACT(properties, '$.replicatedRegions') as "replicated_regions",
subscriptionId,
resourceGroupName,
vaultName
FROM azure.data_protection.backup_vaults
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
identity as identity,
json_extract_path_text(properties, '$.monitoringSettings') as "monitoring_settings",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.resourceMoveState') as "resource_move_state",
json_extract_path_text(properties, '$.resourceMoveDetails') as "resource_move_details",
json_extract_path_text(properties, '$.securitySettings') as "security_settings",
json_extract_path_text(properties, '$.storageSettings') as "storage_settings",
json_extract_path_text(properties, '$.isVaultProtectedByResourceGuard') as "is_vault_protected_by_resource_guard",
json_extract_path_text(properties, '$.featureSettings') as "feature_settings",
json_extract_path_text(properties, '$.secureScore') as "secure_score",
json_extract_path_text(properties, '$.bcdrSecurityLevel') as "bcdr_security_level",
json_extract_path_text(properties, '$.resourceGuardOperationRequests') as "resource_guard_operation_requests",
json_extract_path_text(properties, '$.replicatedRegions') as "replicated_regions",
subscriptionId,
resourceGroupName,
vaultName
FROM azure.data_protection.backup_vaults
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
