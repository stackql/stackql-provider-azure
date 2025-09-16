--- 
title: vw_cloud_endpoints
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_cloud_endpoints
  - storage_sync
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

Creates, updates, deletes, gets or lists a <code>vw_cloud_endpoints</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_cloud_endpoints</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage_sync.vw_cloud_endpoints" /></td></tr>
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
JSON_EXTRACT(properties, '$.storageAccountResourceId') as "storage_account_resource_id",
JSON_EXTRACT(properties, '$.azureFileShareName') as "azure_file_share_name",
JSON_EXTRACT(properties, '$.storageAccountTenantId') as "storage_account_tenant_id",
JSON_EXTRACT(properties, '$.partnershipId') as "partnership_id",
JSON_EXTRACT(properties, '$.friendlyName') as "friendly_name",
JSON_EXTRACT(properties, '$.backupEnabled') as "backup_enabled",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.lastWorkflowId') as "last_workflow_id",
JSON_EXTRACT(properties, '$.lastOperationName') as "last_operation_name",
JSON_EXTRACT(properties, '$.changeEnumerationStatus') as "change_enumeration_status",
subscriptionId,
resourceGroupName,
storageSyncServiceName,
syncGroupName,
cloudEndpointName
FROM azure.storage_sync.cloud_endpoints
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND storageSyncServiceName = 'replace-me' AND syncGroupName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.storageAccountResourceId') as "storage_account_resource_id",
json_extract_path_text(properties, '$.azureFileShareName') as "azure_file_share_name",
json_extract_path_text(properties, '$.storageAccountTenantId') as "storage_account_tenant_id",
json_extract_path_text(properties, '$.partnershipId') as "partnership_id",
json_extract_path_text(properties, '$.friendlyName') as "friendly_name",
json_extract_path_text(properties, '$.backupEnabled') as "backup_enabled",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.lastWorkflowId') as "last_workflow_id",
json_extract_path_text(properties, '$.lastOperationName') as "last_operation_name",
json_extract_path_text(properties, '$.changeEnumerationStatus') as "change_enumeration_status",
subscriptionId,
resourceGroupName,
storageSyncServiceName,
syncGroupName,
cloudEndpointName
FROM azure.storage_sync.cloud_endpoints
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND storageSyncServiceName = 'replace-me' AND syncGroupName = 'replace-me';
```

</TabItem>
</Tabs>
