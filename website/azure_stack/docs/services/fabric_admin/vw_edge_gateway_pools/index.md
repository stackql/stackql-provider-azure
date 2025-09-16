--- 
title: vw_edge_gateway_pools
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_edge_gateway_pools
  - fabric_admin
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_edge_gateway_pools</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_edge_gateway_pools</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.fabric_admin.vw_edge_gateway_pools" /></td></tr>
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
JSON_EXTRACT(properties, '$.gatewayType') as "gateway_type",
JSON_EXTRACT(properties, '$.numberOfGateways') as "number_of_gateways",
JSON_EXTRACT(properties, '$.redundantGatewayCount') as "redundant_gateway_count",
JSON_EXTRACT(properties, '$.gatewayCapacityKiloBitsPerSecond') as "gateway_capacity_kilo_bits_per_second",
JSON_EXTRACT(properties, '$.publicIpAddress') as "public_ip_address",
JSON_EXTRACT(properties, '$.greVipSubnet') as "gre_vip_subnet",
JSON_EXTRACT(properties, '$.edgeGateways') as "edge_gateways",
subscriptionId,
resourceGroupName,
location,
edgeGatewayPool
FROM azure_stack.fabric_admin.edge_gateway_pools
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND location = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.gatewayType') as "gateway_type",
json_extract_path_text(properties, '$.numberOfGateways') as "number_of_gateways",
json_extract_path_text(properties, '$.redundantGatewayCount') as "redundant_gateway_count",
json_extract_path_text(properties, '$.gatewayCapacityKiloBitsPerSecond') as "gateway_capacity_kilo_bits_per_second",
json_extract_path_text(properties, '$.publicIpAddress') as "public_ip_address",
json_extract_path_text(properties, '$.greVipSubnet') as "gre_vip_subnet",
json_extract_path_text(properties, '$.edgeGateways') as "edge_gateways",
subscriptionId,
resourceGroupName,
location,
edgeGatewayPool
FROM azure_stack.fabric_admin.edge_gateway_pools
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND location = 'replace-me';
```

</TabItem>
</Tabs>
