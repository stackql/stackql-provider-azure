--- 
title: vw_network_fabrics
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_network_fabrics
  - managed_network_fabric
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

Creates, updates, deletes, gets or lists a <code>vw_network_fabrics</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_network_fabrics</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_network_fabric.vw_network_fabrics" /></td></tr>
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
tags as tags,
JSON_EXTRACT(properties, '$.annotation') as "annotation",
JSON_EXTRACT(properties, '$.networkFabricSku') as "network_fabric_sku",
JSON_EXTRACT(properties, '$.fabricVersion') as "fabric_version",
JSON_EXTRACT(properties, '$.routerIds') as "router_ids",
JSON_EXTRACT(properties, '$.networkFabricControllerId') as "network_fabric_controller_id",
JSON_EXTRACT(properties, '$.rackCount') as "rack_count",
JSON_EXTRACT(properties, '$.serverCountPerRack') as "server_count_per_rack",
JSON_EXTRACT(properties, '$.ipv4Prefix') as "ipv4_prefix",
JSON_EXTRACT(properties, '$.ipv6Prefix') as "ipv6_prefix",
JSON_EXTRACT(properties, '$.fabricASN') as "fabric_asn",
JSON_EXTRACT(properties, '$.terminalServerConfiguration') as "terminal_server_configuration",
JSON_EXTRACT(properties, '$.managementNetworkConfiguration') as "management_network_configuration",
JSON_EXTRACT(properties, '$.racks') as "racks",
JSON_EXTRACT(properties, '$.l2IsolationDomains') as "l2_isolation_domains",
JSON_EXTRACT(properties, '$.l3IsolationDomains') as "l3_isolation_domains",
JSON_EXTRACT(properties, '$.configurationState') as "configuration_state",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.administrativeState') as "administrative_state",
subscriptionId,
resourceGroupName,
networkFabricName
FROM azure.managed_network_fabric.network_fabrics
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.annotation') as "annotation",
json_extract_path_text(properties, '$.networkFabricSku') as "network_fabric_sku",
json_extract_path_text(properties, '$.fabricVersion') as "fabric_version",
json_extract_path_text(properties, '$.routerIds') as "router_ids",
json_extract_path_text(properties, '$.networkFabricControllerId') as "network_fabric_controller_id",
json_extract_path_text(properties, '$.rackCount') as "rack_count",
json_extract_path_text(properties, '$.serverCountPerRack') as "server_count_per_rack",
json_extract_path_text(properties, '$.ipv4Prefix') as "ipv4_prefix",
json_extract_path_text(properties, '$.ipv6Prefix') as "ipv6_prefix",
json_extract_path_text(properties, '$.fabricASN') as "fabric_asn",
json_extract_path_text(properties, '$.terminalServerConfiguration') as "terminal_server_configuration",
json_extract_path_text(properties, '$.managementNetworkConfiguration') as "management_network_configuration",
json_extract_path_text(properties, '$.racks') as "racks",
json_extract_path_text(properties, '$.l2IsolationDomains') as "l2_isolation_domains",
json_extract_path_text(properties, '$.l3IsolationDomains') as "l3_isolation_domains",
json_extract_path_text(properties, '$.configurationState') as "configuration_state",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.administrativeState') as "administrative_state",
subscriptionId,
resourceGroupName,
networkFabricName
FROM azure.managed_network_fabric.network_fabrics
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
