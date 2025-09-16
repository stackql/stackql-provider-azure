--- 
title: vw_registered_servers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_registered_servers
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

Creates, updates, deletes, gets or lists a <code>vw_registered_servers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_registered_servers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage_sync.vw_registered_servers" /></td></tr>
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
JSON_EXTRACT(properties, '$.serverCertificate') as "server_certificate",
JSON_EXTRACT(properties, '$.agentVersion') as "agent_version",
JSON_EXTRACT(properties, '$.agentVersionStatus') as "agent_version_status",
JSON_EXTRACT(properties, '$.agentVersionExpirationDate') as "agent_version_expiration_date",
JSON_EXTRACT(properties, '$.serverOSVersion') as "server_os_version",
JSON_EXTRACT(properties, '$.serverManagementErrorCode') as "server_management_error_code",
JSON_EXTRACT(properties, '$.lastHeartBeat') as "last_heart_beat",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.serverRole') as "server_role",
JSON_EXTRACT(properties, '$.clusterId') as "cluster_id",
JSON_EXTRACT(properties, '$.clusterName') as "cluster_name",
JSON_EXTRACT(properties, '$.serverId') as "server_id",
JSON_EXTRACT(properties, '$.storageSyncServiceUid') as "storage_sync_service_uid",
JSON_EXTRACT(properties, '$.lastWorkflowId') as "last_workflow_id",
JSON_EXTRACT(properties, '$.lastOperationName') as "last_operation_name",
JSON_EXTRACT(properties, '$.discoveryEndpointUri') as "discovery_endpoint_uri",
JSON_EXTRACT(properties, '$.resourceLocation') as "resource_location",
JSON_EXTRACT(properties, '$.serviceLocation') as "service_location",
JSON_EXTRACT(properties, '$.friendlyName') as "friendly_name",
JSON_EXTRACT(properties, '$.managementEndpointUri') as "management_endpoint_uri",
JSON_EXTRACT(properties, '$.monitoringEndpointUri') as "monitoring_endpoint_uri",
JSON_EXTRACT(properties, '$.monitoringConfiguration') as "monitoring_configuration",
JSON_EXTRACT(properties, '$.serverName') as "server_name",
JSON_EXTRACT(properties, '$.applicationId') as "application_id",
JSON_EXTRACT(properties, '$.identity') as "identity",
JSON_EXTRACT(properties, '$.latestApplicationId') as "latest_application_id",
JSON_EXTRACT(properties, '$.activeAuthType') as "active_auth_type",
subscriptionId,
resourceGroupName,
storageSyncServiceName,
serverId
FROM azure.storage_sync.registered_servers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND storageSyncServiceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.serverCertificate') as "server_certificate",
json_extract_path_text(properties, '$.agentVersion') as "agent_version",
json_extract_path_text(properties, '$.agentVersionStatus') as "agent_version_status",
json_extract_path_text(properties, '$.agentVersionExpirationDate') as "agent_version_expiration_date",
json_extract_path_text(properties, '$.serverOSVersion') as "server_os_version",
json_extract_path_text(properties, '$.serverManagementErrorCode') as "server_management_error_code",
json_extract_path_text(properties, '$.lastHeartBeat') as "last_heart_beat",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.serverRole') as "server_role",
json_extract_path_text(properties, '$.clusterId') as "cluster_id",
json_extract_path_text(properties, '$.clusterName') as "cluster_name",
json_extract_path_text(properties, '$.serverId') as "server_id",
json_extract_path_text(properties, '$.storageSyncServiceUid') as "storage_sync_service_uid",
json_extract_path_text(properties, '$.lastWorkflowId') as "last_workflow_id",
json_extract_path_text(properties, '$.lastOperationName') as "last_operation_name",
json_extract_path_text(properties, '$.discoveryEndpointUri') as "discovery_endpoint_uri",
json_extract_path_text(properties, '$.resourceLocation') as "resource_location",
json_extract_path_text(properties, '$.serviceLocation') as "service_location",
json_extract_path_text(properties, '$.friendlyName') as "friendly_name",
json_extract_path_text(properties, '$.managementEndpointUri') as "management_endpoint_uri",
json_extract_path_text(properties, '$.monitoringEndpointUri') as "monitoring_endpoint_uri",
json_extract_path_text(properties, '$.monitoringConfiguration') as "monitoring_configuration",
json_extract_path_text(properties, '$.serverName') as "server_name",
json_extract_path_text(properties, '$.applicationId') as "application_id",
json_extract_path_text(properties, '$.identity') as "identity",
json_extract_path_text(properties, '$.latestApplicationId') as "latest_application_id",
json_extract_path_text(properties, '$.activeAuthType') as "active_auth_type",
subscriptionId,
resourceGroupName,
storageSyncServiceName,
serverId
FROM azure.storage_sync.registered_servers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND storageSyncServiceName = 'replace-me';
```

</TabItem>
</Tabs>
