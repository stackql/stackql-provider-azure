--- 
title: vw_backup_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_backup_instances
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

Creates, updates, deletes, gets or lists a <code>vw_backup_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_backup_instances</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_protection.vw_backup_instances" /></td></tr>
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
tags as tags,
systemData as system_data,
JSON_EXTRACT(properties, '$.friendlyName') as "friendly_name",
JSON_EXTRACT(properties, '$.dataSourceInfo') as "data_source_info",
JSON_EXTRACT(properties, '$.dataSourceSetInfo') as "data_source_set_info",
JSON_EXTRACT(properties, '$.policyInfo') as "policy_info",
JSON_EXTRACT(properties, '$.resourceGuardOperationRequests') as "resource_guard_operation_requests",
JSON_EXTRACT(properties, '$.protectionStatus') as "protection_status",
JSON_EXTRACT(properties, '$.currentProtectionState') as "current_protection_state",
JSON_EXTRACT(properties, '$.protectionErrorDetails') as "protection_error_details",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.datasourceAuthCredentials') as "datasource_auth_credentials",
JSON_EXTRACT(properties, '$.validationType') as "validation_type",
JSON_EXTRACT(properties, '$.identityDetails') as "identity_details",
JSON_EXTRACT(properties, '$.objectType') as "object_type",
subscriptionId,
resourceGroupName,
vaultName,
backupInstanceName
FROM azure.data_protection.backup_instances
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vaultName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
tags as tags,
systemData as system_data,
json_extract_path_text(properties, '$.friendlyName') as "friendly_name",
json_extract_path_text(properties, '$.dataSourceInfo') as "data_source_info",
json_extract_path_text(properties, '$.dataSourceSetInfo') as "data_source_set_info",
json_extract_path_text(properties, '$.policyInfo') as "policy_info",
json_extract_path_text(properties, '$.resourceGuardOperationRequests') as "resource_guard_operation_requests",
json_extract_path_text(properties, '$.protectionStatus') as "protection_status",
json_extract_path_text(properties, '$.currentProtectionState') as "current_protection_state",
json_extract_path_text(properties, '$.protectionErrorDetails') as "protection_error_details",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.datasourceAuthCredentials') as "datasource_auth_credentials",
json_extract_path_text(properties, '$.validationType') as "validation_type",
json_extract_path_text(properties, '$.identityDetails') as "identity_details",
json_extract_path_text(properties, '$.objectType') as "object_type",
subscriptionId,
resourceGroupName,
vaultName,
backupInstanceName
FROM azure.data_protection.backup_instances
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND vaultName = 'replace-me';
```

</TabItem>
</Tabs>
