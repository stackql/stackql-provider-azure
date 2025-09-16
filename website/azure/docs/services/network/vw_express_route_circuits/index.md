--- 
title: vw_express_route_circuits
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_express_route_circuits
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

Creates, updates, deletes, gets or lists a <code>vw_express_route_circuits</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_express_route_circuits</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_express_route_circuits" /></td></tr>
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
sku as sku,
etag as etag,
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.allowClassicOperations') as "allow_classic_operations",
JSON_EXTRACT(properties, '$.circuitProvisioningState') as "circuit_provisioning_state",
JSON_EXTRACT(properties, '$.serviceProviderProvisioningState') as "service_provider_provisioning_state",
JSON_EXTRACT(properties, '$.authorizations') as "authorizations",
JSON_EXTRACT(properties, '$.peerings') as "peerings",
JSON_EXTRACT(properties, '$.serviceKey') as "service_key",
JSON_EXTRACT(properties, '$.serviceProviderNotes') as "service_provider_notes",
JSON_EXTRACT(properties, '$.serviceProviderProperties') as "service_provider_properties",
JSON_EXTRACT(properties, '$.expressRoutePort') as "express_route_port",
JSON_EXTRACT(properties, '$.bandwidthInGbps') as "bandwidth_in_gbps",
JSON_EXTRACT(properties, '$.stag') as "stag",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.gatewayManagerEtag') as "gateway_manager_etag",
JSON_EXTRACT(properties, '$.globalReachEnabled') as "global_reach_enabled",
JSON_EXTRACT(properties, '$.authorizationKey') as "authorization_key",
JSON_EXTRACT(properties, '$.authorizationStatus') as "authorization_status",
JSON_EXTRACT(properties, '$.enableDirectPortRateLimit') as "enable_direct_port_rate_limit",
subscriptionId,
resourceGroupName,
circuitName
FROM azure.network.express_route_circuits
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
sku as sku,
etag as etag,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.allowClassicOperations') as "allow_classic_operations",
json_extract_path_text(properties, '$.circuitProvisioningState') as "circuit_provisioning_state",
json_extract_path_text(properties, '$.serviceProviderProvisioningState') as "service_provider_provisioning_state",
json_extract_path_text(properties, '$.authorizations') as "authorizations",
json_extract_path_text(properties, '$.peerings') as "peerings",
json_extract_path_text(properties, '$.serviceKey') as "service_key",
json_extract_path_text(properties, '$.serviceProviderNotes') as "service_provider_notes",
json_extract_path_text(properties, '$.serviceProviderProperties') as "service_provider_properties",
json_extract_path_text(properties, '$.expressRoutePort') as "express_route_port",
json_extract_path_text(properties, '$.bandwidthInGbps') as "bandwidth_in_gbps",
json_extract_path_text(properties, '$.stag') as "stag",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.gatewayManagerEtag') as "gateway_manager_etag",
json_extract_path_text(properties, '$.globalReachEnabled') as "global_reach_enabled",
json_extract_path_text(properties, '$.authorizationKey') as "authorization_key",
json_extract_path_text(properties, '$.authorizationStatus') as "authorization_status",
json_extract_path_text(properties, '$.enableDirectPortRateLimit') as "enable_direct_port_rate_limit",
subscriptionId,
resourceGroupName,
circuitName
FROM azure.network.express_route_circuits
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
