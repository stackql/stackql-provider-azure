--- 
title: vw_express_route_cross_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_express_route_cross_connections
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

Creates, updates, deletes, gets or lists a <code>vw_express_route_cross_connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_express_route_cross_connections</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_express_route_cross_connections" /></td></tr>
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
JSON_EXTRACT(properties, '$.primaryAzurePort') as "primary_azure_port",
JSON_EXTRACT(properties, '$.secondaryAzurePort') as "secondary_azure_port",
JSON_EXTRACT(properties, '$.sTag') as "s_tag",
JSON_EXTRACT(properties, '$.peeringLocation') as "peering_location",
JSON_EXTRACT(properties, '$.bandwidthInMbps') as "bandwidth_in_mbps",
JSON_EXTRACT(properties, '$.expressRouteCircuit') as "express_route_circuit",
JSON_EXTRACT(properties, '$.serviceProviderProvisioningState') as "service_provider_provisioning_state",
JSON_EXTRACT(properties, '$.serviceProviderNotes') as "service_provider_notes",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.peerings') as "peerings",
subscriptionId,
resourceGroupName,
crossConnectionName
FROM azure.network.express_route_cross_connections
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
json_extract_path_text(properties, '$.primaryAzurePort') as "primary_azure_port",
json_extract_path_text(properties, '$.secondaryAzurePort') as "secondary_azure_port",
json_extract_path_text(properties, '$.sTag') as "s_tag",
json_extract_path_text(properties, '$.peeringLocation') as "peering_location",
json_extract_path_text(properties, '$.bandwidthInMbps') as "bandwidth_in_mbps",
json_extract_path_text(properties, '$.expressRouteCircuit') as "express_route_circuit",
json_extract_path_text(properties, '$.serviceProviderProvisioningState') as "service_provider_provisioning_state",
json_extract_path_text(properties, '$.serviceProviderNotes') as "service_provider_notes",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.peerings') as "peerings",
subscriptionId,
resourceGroupName,
crossConnectionName
FROM azure.network.express_route_cross_connections
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
