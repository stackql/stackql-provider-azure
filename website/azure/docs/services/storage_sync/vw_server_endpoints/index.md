--- 
title: vw_server_endpoints
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_server_endpoints
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

Creates, updates, deletes, gets or lists a <code>vw_server_endpoints</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_server_endpoints</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage_sync.vw_server_endpoints" /></td></tr>
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
JSON_EXTRACT(properties, '$.serverLocalPath') as "server_local_path",
JSON_EXTRACT(properties, '$.cloudTiering') as "cloud_tiering",
JSON_EXTRACT(properties, '$.volumeFreeSpacePercent') as "volume_free_space_percent",
JSON_EXTRACT(properties, '$.tierFilesOlderThanDays') as "tier_files_older_than_days",
JSON_EXTRACT(properties, '$.friendlyName') as "friendly_name",
JSON_EXTRACT(properties, '$.serverResourceId') as "server_resource_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.lastWorkflowId') as "last_workflow_id",
JSON_EXTRACT(properties, '$.lastOperationName') as "last_operation_name",
JSON_EXTRACT(properties, '$.syncStatus') as "sync_status",
JSON_EXTRACT(properties, '$.offlineDataTransfer') as "offline_data_transfer",
JSON_EXTRACT(properties, '$.offlineDataTransferStorageAccountResourceId') as "offline_data_transfer_storage_account_resource_id",
JSON_EXTRACT(properties, '$.offlineDataTransferStorageAccountTenantId') as "offline_data_transfer_storage_account_tenant_id",
JSON_EXTRACT(properties, '$.offlineDataTransferShareName') as "offline_data_transfer_share_name",
JSON_EXTRACT(properties, '$.cloudTieringStatus') as "cloud_tiering_status",
JSON_EXTRACT(properties, '$.recallStatus') as "recall_status",
JSON_EXTRACT(properties, '$.initialDownloadPolicy') as "initial_download_policy",
JSON_EXTRACT(properties, '$.localCacheMode') as "local_cache_mode",
JSON_EXTRACT(properties, '$.initialUploadPolicy') as "initial_upload_policy",
JSON_EXTRACT(properties, '$.serverName') as "server_name",
JSON_EXTRACT(properties, '$.serverEndpointProvisioningStatus') as "server_endpoint_provisioning_status",
subscriptionId,
resourceGroupName,
storageSyncServiceName,
syncGroupName,
serverEndpointName
FROM azure.storage_sync.server_endpoints
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND storageSyncServiceName = 'replace-me' AND syncGroupName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.serverLocalPath') as "server_local_path",
json_extract_path_text(properties, '$.cloudTiering') as "cloud_tiering",
json_extract_path_text(properties, '$.volumeFreeSpacePercent') as "volume_free_space_percent",
json_extract_path_text(properties, '$.tierFilesOlderThanDays') as "tier_files_older_than_days",
json_extract_path_text(properties, '$.friendlyName') as "friendly_name",
json_extract_path_text(properties, '$.serverResourceId') as "server_resource_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.lastWorkflowId') as "last_workflow_id",
json_extract_path_text(properties, '$.lastOperationName') as "last_operation_name",
json_extract_path_text(properties, '$.syncStatus') as "sync_status",
json_extract_path_text(properties, '$.offlineDataTransfer') as "offline_data_transfer",
json_extract_path_text(properties, '$.offlineDataTransferStorageAccountResourceId') as "offline_data_transfer_storage_account_resource_id",
json_extract_path_text(properties, '$.offlineDataTransferStorageAccountTenantId') as "offline_data_transfer_storage_account_tenant_id",
json_extract_path_text(properties, '$.offlineDataTransferShareName') as "offline_data_transfer_share_name",
json_extract_path_text(properties, '$.cloudTieringStatus') as "cloud_tiering_status",
json_extract_path_text(properties, '$.recallStatus') as "recall_status",
json_extract_path_text(properties, '$.initialDownloadPolicy') as "initial_download_policy",
json_extract_path_text(properties, '$.localCacheMode') as "local_cache_mode",
json_extract_path_text(properties, '$.initialUploadPolicy') as "initial_upload_policy",
json_extract_path_text(properties, '$.serverName') as "server_name",
json_extract_path_text(properties, '$.serverEndpointProvisioningStatus') as "server_endpoint_provisioning_status",
subscriptionId,
resourceGroupName,
storageSyncServiceName,
syncGroupName,
serverEndpointName
FROM azure.storage_sync.server_endpoints
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND storageSyncServiceName = 'replace-me' AND syncGroupName = 'replace-me';
```

</TabItem>
</Tabs>
