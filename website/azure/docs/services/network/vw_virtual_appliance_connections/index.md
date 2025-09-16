--- 
title: vw_virtual_appliance_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_appliance_connections
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_appliance_connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_appliance_connections</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_virtual_appliance_connections" /></td></tr>
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
JSON_EXTRACT(properties, '$.name') as "name",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.asn') as "asn",
JSON_EXTRACT(properties, '$.tunnelIdentifier') as "tunnel_identifier",
JSON_EXTRACT(properties, '$.bgpPeerAddress') as "bgp_peer_address",
JSON_EXTRACT(properties, '$.enableInternetSecurity') as "enable_internet_security",
JSON_EXTRACT(properties, '$.routingConfiguration') as "routing_configuration",
subscriptionId,
resourceGroupName,
networkVirtualApplianceName,
connectionName
FROM azure.network.virtual_appliance_connections
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND networkVirtualApplianceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
json_extract_path_text(properties, '$.name') as "name",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.asn') as "asn",
json_extract_path_text(properties, '$.tunnelIdentifier') as "tunnel_identifier",
json_extract_path_text(properties, '$.bgpPeerAddress') as "bgp_peer_address",
json_extract_path_text(properties, '$.enableInternetSecurity') as "enable_internet_security",
json_extract_path_text(properties, '$.routingConfiguration') as "routing_configuration",
subscriptionId,
resourceGroupName,
networkVirtualApplianceName,
connectionName
FROM azure.network.virtual_appliance_connections
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND networkVirtualApplianceName = 'replace-me';
```

</TabItem>
</Tabs>
