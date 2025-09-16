--- 
title: vw_private_link_services
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_private_link_services
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

Creates, updates, deletes, gets or lists a <code>vw_private_link_services</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_private_link_services</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_private_link_services" /></td></tr>
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
JSON_EXTRACT(properties, '$.loadBalancerFrontendIpConfigurations') as "load_balancer_frontend_ip_configurations",
JSON_EXTRACT(properties, '$.ipConfigurations') as "ip_configurations",
JSON_EXTRACT(properties, '$.destinationIPAddress') as "destination_ip_address",
JSON_EXTRACT(properties, '$.networkInterfaces') as "network_interfaces",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
JSON_EXTRACT(properties, '$.visibility') as "visibility",
JSON_EXTRACT(properties, '$.autoApproval') as "auto_approval",
JSON_EXTRACT(properties, '$.fqdns') as "fqdns",
JSON_EXTRACT(properties, '$.alias') as "alias",
JSON_EXTRACT(properties, '$.enableProxyProtocol') as "enable_proxy_protocol",
subscriptionId,
resourceGroupName,
serviceName
FROM azure.network.private_link_services
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
json_extract_path_text(properties, '$.loadBalancerFrontendIpConfigurations') as "load_balancer_frontend_ip_configurations",
json_extract_path_text(properties, '$.ipConfigurations') as "ip_configurations",
json_extract_path_text(properties, '$.destinationIPAddress') as "destination_ip_address",
json_extract_path_text(properties, '$.networkInterfaces') as "network_interfaces",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.privateEndpointConnections') as "private_endpoint_connections",
json_extract_path_text(properties, '$.visibility') as "visibility",
json_extract_path_text(properties, '$.autoApproval') as "auto_approval",
json_extract_path_text(properties, '$.fqdns') as "fqdns",
json_extract_path_text(properties, '$.alias') as "alias",
json_extract_path_text(properties, '$.enableProxyProtocol') as "enable_proxy_protocol",
subscriptionId,
resourceGroupName,
serviceName
FROM azure.network.private_link_services
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
