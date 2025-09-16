--- 
title: vw_services
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_services
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

Creates, updates, deletes, gets or lists a <code>vw_services</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_services</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage_sync.vw_services" /></td></tr>
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
identity as identity,
tags as tags,
JSON_EXTRACT(properties, '$.incomingTrafficPolicy') as "incoming_traffic_policy",
JSON_EXTRACT(properties, '$.storageSyncServiceStatus') as "storage_sync_service_status",
JSON_EXTRACT(properties, '$.storageSyncServiceUid') as "storage_sync_service_uid",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.useIdentity') as "use_identity",
JSON_EXTRACT(properties, '$.lastWorkflowId') as "last_workflow_id",
JSON_EXTRACT(properties, '$.lastOperationName') as "last_operation_name",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
subscriptionId,
resourceGroupName,
storageSyncServiceName
FROM azure.storage_sync.services
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
identity as identity,
tags as tags,
json_extract_path_text(properties, '$.incomingTrafficPolicy') as "incoming_traffic_policy",
json_extract_path_text(properties, '$.storageSyncServiceStatus') as "storage_sync_service_status",
json_extract_path_text(properties, '$.storageSyncServiceUid') as "storage_sync_service_uid",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.useIdentity') as "use_identity",
json_extract_path_text(properties, '$.lastWorkflowId') as "last_workflow_id",
json_extract_path_text(properties, '$.lastOperationName') as "last_operation_name",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
subscriptionId,
resourceGroupName,
storageSyncServiceName
FROM azure.storage_sync.services
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
