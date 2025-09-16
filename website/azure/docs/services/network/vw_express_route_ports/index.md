--- 
title: vw_express_route_ports
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_express_route_ports
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

Creates, updates, deletes, gets or lists a <code>vw_express_route_ports</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_express_route_ports</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_express_route_ports" /></td></tr>
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
identity as identity,
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.peeringLocation') as "peering_location",
JSON_EXTRACT(properties, '$.bandwidthInGbps') as "bandwidth_in_gbps",
JSON_EXTRACT(properties, '$.provisionedBandwidthInGbps') as "provisioned_bandwidth_in_gbps",
JSON_EXTRACT(properties, '$.mtu') as "mtu",
JSON_EXTRACT(properties, '$.encapsulation') as "encapsulation",
JSON_EXTRACT(properties, '$.etherType') as "ether_type",
JSON_EXTRACT(properties, '$.allocationDate') as "allocation_date",
JSON_EXTRACT(properties, '$.links') as "links",
JSON_EXTRACT(properties, '$.circuits') as "circuits",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.resourceGuid') as "resource_guid",
JSON_EXTRACT(properties, '$.billingType') as "billing_type",
subscriptionId,
resourceGroupName,
expressRoutePortName
FROM azure.network.express_route_ports
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
etag as etag,
identity as identity,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.peeringLocation') as "peering_location",
json_extract_path_text(properties, '$.bandwidthInGbps') as "bandwidth_in_gbps",
json_extract_path_text(properties, '$.provisionedBandwidthInGbps') as "provisioned_bandwidth_in_gbps",
json_extract_path_text(properties, '$.mtu') as "mtu",
json_extract_path_text(properties, '$.encapsulation') as "encapsulation",
json_extract_path_text(properties, '$.etherType') as "ether_type",
json_extract_path_text(properties, '$.allocationDate') as "allocation_date",
json_extract_path_text(properties, '$.links') as "links",
json_extract_path_text(properties, '$.circuits') as "circuits",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.resourceGuid') as "resource_guid",
json_extract_path_text(properties, '$.billingType') as "billing_type",
subscriptionId,
resourceGroupName,
expressRoutePortName
FROM azure.network.express_route_ports
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
