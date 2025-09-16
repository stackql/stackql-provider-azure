--- 
title: vw_connected_registries
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_connected_registries
  - container_registry
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

Creates, updates, deletes, gets or lists a <code>vw_connected_registries</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_connected_registries</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.container_registry.vw_connected_registries" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.mode') as "mode",
JSON_EXTRACT(properties, '$.version') as "version",
JSON_EXTRACT(properties, '$.connectionState') as "connection_state",
JSON_EXTRACT(properties, '$.lastActivityTime') as "last_activity_time",
JSON_EXTRACT(properties, '$.activation') as "activation",
JSON_EXTRACT(properties, '$.parent') as "parent",
JSON_EXTRACT(properties, '$.clientTokenIds') as "client_token_ids",
JSON_EXTRACT(properties, '$.loginServer') as "login_server",
JSON_EXTRACT(properties, '$.logging') as "logging",
JSON_EXTRACT(properties, '$.statusDetails') as "status_details",
JSON_EXTRACT(properties, '$.notificationsList') as "notifications_list",
subscriptionId,
resourceGroupName,
registryName,
connectedRegistryName
FROM azure.container_registry.connected_registries
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND registryName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.mode') as "mode",
json_extract_path_text(properties, '$.version') as "version",
json_extract_path_text(properties, '$.connectionState') as "connection_state",
json_extract_path_text(properties, '$.lastActivityTime') as "last_activity_time",
json_extract_path_text(properties, '$.activation') as "activation",
json_extract_path_text(properties, '$.parent') as "parent",
json_extract_path_text(properties, '$.clientTokenIds') as "client_token_ids",
json_extract_path_text(properties, '$.loginServer') as "login_server",
json_extract_path_text(properties, '$.logging') as "logging",
json_extract_path_text(properties, '$.statusDetails') as "status_details",
json_extract_path_text(properties, '$.notificationsList') as "notifications_list",
subscriptionId,
resourceGroupName,
registryName,
connectedRegistryName
FROM azure.container_registry.connected_registries
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND registryName = 'replace-me';
```

</TabItem>
</Tabs>
