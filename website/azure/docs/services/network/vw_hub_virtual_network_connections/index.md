--- 
title: vw_hub_virtual_network_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_hub_virtual_network_connections
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

Creates, updates, deletes, gets or lists a <code>vw_hub_virtual_network_connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_hub_virtual_network_connections</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_hub_virtual_network_connections" /></td></tr>
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
etag as etag,
JSON_EXTRACT(properties, '$.remoteVirtualNetwork') as "remote_virtual_network",
JSON_EXTRACT(properties, '$.allowHubToRemoteVnetTransit') as "allow_hub_to_remote_vnet_transit",
JSON_EXTRACT(properties, '$.allowRemoteVnetToUseHubVnetGateways') as "allow_remote_vnet_to_use_hub_vnet_gateways",
JSON_EXTRACT(properties, '$.enableInternetSecurity') as "enable_internet_security",
JSON_EXTRACT(properties, '$.routingConfiguration') as "routing_configuration",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
virtualHubName,
connectionName
FROM azure.network.hub_virtual_network_connections
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND virtualHubName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
json_extract_path_text(properties, '$.remoteVirtualNetwork') as "remote_virtual_network",
json_extract_path_text(properties, '$.allowHubToRemoteVnetTransit') as "allow_hub_to_remote_vnet_transit",
json_extract_path_text(properties, '$.allowRemoteVnetToUseHubVnetGateways') as "allow_remote_vnet_to_use_hub_vnet_gateways",
json_extract_path_text(properties, '$.enableInternetSecurity') as "enable_internet_security",
json_extract_path_text(properties, '$.routingConfiguration') as "routing_configuration",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
virtualHubName,
connectionName
FROM azure.network.hub_virtual_network_connections
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND virtualHubName = 'replace-me';
```

</TabItem>
</Tabs>
