--- 
title: vw_servers_details
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_servers_details
  - analysis_services
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

Creates, updates, deletes, gets or lists a <code>vw_servers_details</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_servers_details</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.analysis_services.vw_servers_details" /></td></tr>
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
location as location,
type as type,
sku as sku,
tags as tags,
JSON_EXTRACT(properties, '$.state') as "state",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.serverFullName') as "server_full_name",
JSON_EXTRACT(properties, '$.sku') as "sku",
JSON_EXTRACT(properties, '$.asAdministrators') as "as_administrators",
JSON_EXTRACT(properties, '$.backupBlobContainerUri') as "backup_blob_container_uri",
JSON_EXTRACT(properties, '$.gatewayDetails') as "gateway_details",
JSON_EXTRACT(properties, '$.ipV4FirewallSettings') as "ip_v4_firewall_settings",
JSON_EXTRACT(properties, '$.querypoolConnectionMode') as "querypool_connection_mode",
JSON_EXTRACT(properties, '$.managedMode') as "managed_mode",
JSON_EXTRACT(properties, '$.serverMonitorMode') as "server_monitor_mode",
subscriptionId,
resourceGroupName,
serverName
FROM azure.analysis_services.servers_details
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
sku as sku,
tags as tags,
json_extract_path_text(properties, '$.state') as "state",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.serverFullName') as "server_full_name",
json_extract_path_text(properties, '$.sku') as "sku",
json_extract_path_text(properties, '$.asAdministrators') as "as_administrators",
json_extract_path_text(properties, '$.backupBlobContainerUri') as "backup_blob_container_uri",
json_extract_path_text(properties, '$.gatewayDetails') as "gateway_details",
json_extract_path_text(properties, '$.ipV4FirewallSettings') as "ip_v4_firewall_settings",
json_extract_path_text(properties, '$.querypoolConnectionMode') as "querypool_connection_mode",
json_extract_path_text(properties, '$.managedMode') as "managed_mode",
json_extract_path_text(properties, '$.serverMonitorMode') as "server_monitor_mode",
subscriptionId,
resourceGroupName,
serverName
FROM azure.analysis_services.servers_details
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
</Tabs>
