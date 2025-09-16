--- 
title: vw_vaults
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_vaults
  - recovery_services
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

Creates, updates, deletes, gets or lists a <code>vw_vaults</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_vaults</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services.vw_vaults" /></td></tr>
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
identity as identity,
sku as sku,
systemData as system_data,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.upgradeDetails') as "upgrade_details",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.privateEndpointStateForBackup') as "private_endpoint_state_for_backup",
JSON_EXTRACT(properties, '$.privateEndpointStateForSiteRecovery') as "private_endpoint_state_for_site_recovery",
JSON_EXTRACT(properties, '$.encryption') as "encryption",
JSON_EXTRACT(properties, '$.moveDetails') as "move_details",
JSON_EXTRACT(properties, '$.moveState') as "move_state",
JSON_EXTRACT(properties, '$.backupStorageVersion') as "backup_storage_version",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.monitoringSettings') as "monitoring_settings",
JSON_EXTRACT(properties, '$.restoreSettings') as "restore_settings",
JSON_EXTRACT(properties, '$.redundancySettings') as "redundancy_settings",
JSON_EXTRACT(properties, '$.securitySettings') as "security_settings",
JSON_EXTRACT(properties, '$.secureScore') as "secure_score",
JSON_EXTRACT(properties, '$.bcdrSecurityLevel') as "bcdr_security_level",
JSON_EXTRACT(properties, '$.resourceGuardOperationRequests') as "resource_guard_operation_requests",
subscriptionId,
resourceGroupName,
vaultName
FROM azure.recovery_services.vaults
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
identity as identity,
sku as sku,
systemData as system_data,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.upgradeDetails') as "upgrade_details",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.privateEndpointStateForBackup') as "private_endpoint_state_for_backup",
json_extract_path_text(properties, '$.privateEndpointStateForSiteRecovery') as "private_endpoint_state_for_site_recovery",
json_extract_path_text(properties, '$.encryption') as "encryption",
json_extract_path_text(properties, '$.moveDetails') as "move_details",
json_extract_path_text(properties, '$.moveState') as "move_state",
json_extract_path_text(properties, '$.backupStorageVersion') as "backup_storage_version",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.monitoringSettings') as "monitoring_settings",
json_extract_path_text(properties, '$.restoreSettings') as "restore_settings",
json_extract_path_text(properties, '$.redundancySettings') as "redundancy_settings",
json_extract_path_text(properties, '$.securitySettings') as "security_settings",
json_extract_path_text(properties, '$.secureScore') as "secure_score",
json_extract_path_text(properties, '$.bcdrSecurityLevel') as "bcdr_security_level",
json_extract_path_text(properties, '$.resourceGuardOperationRequests') as "resource_guard_operation_requests",
subscriptionId,
resourceGroupName,
vaultName
FROM azure.recovery_services.vaults
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
