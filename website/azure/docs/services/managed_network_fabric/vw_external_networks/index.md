--- 
title: vw_external_networks
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_external_networks
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

Creates, updates, deletes, gets or lists a <code>vw_external_networks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_external_networks</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_network_fabric.vw_external_networks" /></td></tr>
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
JSON_EXTRACT(properties, '$.annotation') as "annotation",
JSON_EXTRACT(properties, '$.networkToNetworkInterconnectId') as "network_to_network_interconnect_id",
JSON_EXTRACT(properties, '$.importRoutePolicyId') as "import_route_policy_id",
JSON_EXTRACT(properties, '$.exportRoutePolicyId') as "export_route_policy_id",
JSON_EXTRACT(properties, '$.importRoutePolicy') as "import_route_policy",
JSON_EXTRACT(properties, '$.exportRoutePolicy') as "export_route_policy",
JSON_EXTRACT(properties, '$.peeringOption') as "peering_option",
JSON_EXTRACT(properties, '$.optionBProperties') as "option_b_properties",
JSON_EXTRACT(properties, '$.optionAProperties') as "option_a_properties",
JSON_EXTRACT(properties, '$.configurationState') as "configuration_state",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.administrativeState') as "administrative_state",
subscriptionId,
resourceGroupName,
l3IsolationDomainName,
externalNetworkName
FROM azure.managed_network_fabric.external_networks
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND l3IsolationDomainName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.annotation') as "annotation",
json_extract_path_text(properties, '$.networkToNetworkInterconnectId') as "network_to_network_interconnect_id",
json_extract_path_text(properties, '$.importRoutePolicyId') as "import_route_policy_id",
json_extract_path_text(properties, '$.exportRoutePolicyId') as "export_route_policy_id",
json_extract_path_text(properties, '$.importRoutePolicy') as "import_route_policy",
json_extract_path_text(properties, '$.exportRoutePolicy') as "export_route_policy",
json_extract_path_text(properties, '$.peeringOption') as "peering_option",
json_extract_path_text(properties, '$.optionBProperties') as "option_b_properties",
json_extract_path_text(properties, '$.optionAProperties') as "option_a_properties",
json_extract_path_text(properties, '$.configurationState') as "configuration_state",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.administrativeState') as "administrative_state",
subscriptionId,
resourceGroupName,
l3IsolationDomainName,
externalNetworkName
FROM azure.managed_network_fabric.external_networks
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND l3IsolationDomainName = 'replace-me';
```

</TabItem>
</Tabs>
