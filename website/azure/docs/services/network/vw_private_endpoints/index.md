--- 
title: vw_private_endpoints
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_private_endpoints
  - network
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

Creates, updates, deletes, gets or lists a <code>vw_private_endpoints</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_private_endpoints</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_private_endpoints" /></td></tr>
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
extendedLocation as extended_location,
etag as etag,
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.subnet') as "subnet",
JSON_EXTRACT(properties, '$.networkInterfaces') as "network_interfaces",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.privateLinkServiceConnections') as "private_link_service_connections",
JSON_EXTRACT(properties, '$.manualPrivateLinkServiceConnections') as "manual_private_link_service_connections",
JSON_EXTRACT(properties, '$.customDnsConfigs') as "custom_dns_configs",
JSON_EXTRACT(properties, '$.applicationSecurityGroups') as "application_security_groups",
JSON_EXTRACT(properties, '$.ipConfigurations') as "ip_configurations",
JSON_EXTRACT(properties, '$.customNetworkInterfaceName') as "custom_network_interface_name",
subscriptionId,
resourceGroupName,
privateEndpointName
FROM azure.network.private_endpoints
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
extendedLocation as extended_location,
etag as etag,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.subnet') as "subnet",
json_extract_path_text(properties, '$.networkInterfaces') as "network_interfaces",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.privateLinkServiceConnections') as "private_link_service_connections",
json_extract_path_text(properties, '$.manualPrivateLinkServiceConnections') as "manual_private_link_service_connections",
json_extract_path_text(properties, '$.customDnsConfigs') as "custom_dns_configs",
json_extract_path_text(properties, '$.applicationSecurityGroups') as "application_security_groups",
json_extract_path_text(properties, '$.ipConfigurations') as "ip_configurations",
json_extract_path_text(properties, '$.customNetworkInterfaceName') as "custom_network_interface_name",
subscriptionId,
resourceGroupName,
privateEndpointName
FROM azure.network.private_endpoints
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
