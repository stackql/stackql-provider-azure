--- 
title: vw_vpn_gateways
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_vpn_gateways
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

Creates, updates, deletes, gets or lists a <code>vw_vpn_gateways</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_vpn_gateways</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_vpn_gateways" /></td></tr>
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
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.virtualHub') as "virtual_hub",
JSON_EXTRACT(properties, '$.connections') as "connections",
JSON_EXTRACT(properties, '$.bgpSettings') as "bgp_settings",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.vpnGatewayScaleUnit') as "vpn_gateway_scale_unit",
JSON_EXTRACT(properties, '$.ipConfigurations') as "ip_configurations",
JSON_EXTRACT(properties, '$.enableBgpRouteTranslationForNat') as "enable_bgp_route_translation_for_nat",
JSON_EXTRACT(properties, '$.isRoutingPreferenceInternet') as "is_routing_preference_internet",
JSON_EXTRACT(properties, '$.natRules') as "nat_rules",
subscriptionId,
resourceGroupName,
gatewayName
FROM azure.network.vpn_gateways
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.virtualHub') as "virtual_hub",
json_extract_path_text(properties, '$.connections') as "connections",
json_extract_path_text(properties, '$.bgpSettings') as "bgp_settings",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.vpnGatewayScaleUnit') as "vpn_gateway_scale_unit",
json_extract_path_text(properties, '$.ipConfigurations') as "ip_configurations",
json_extract_path_text(properties, '$.enableBgpRouteTranslationForNat') as "enable_bgp_route_translation_for_nat",
json_extract_path_text(properties, '$.isRoutingPreferenceInternet') as "is_routing_preference_internet",
json_extract_path_text(properties, '$.natRules') as "nat_rules",
subscriptionId,
resourceGroupName,
gatewayName
FROM azure.network.vpn_gateways
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
