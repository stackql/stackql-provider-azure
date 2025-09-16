--- 
title: vw_internal_networks
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_internal_networks
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

Creates, updates, deletes, gets or lists a <code>vw_internal_networks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_internal_networks</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_network_fabric.vw_internal_networks" /></td></tr>
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
JSON_EXTRACT(properties, '$.mtu') as "mtu",
JSON_EXTRACT(properties, '$.connectedIPv4Subnets') as "connected_ipv4_subnets",
JSON_EXTRACT(properties, '$.connectedIPv6Subnets') as "connected_ipv6_subnets",
JSON_EXTRACT(properties, '$.importRoutePolicyId') as "import_route_policy_id",
JSON_EXTRACT(properties, '$.exportRoutePolicyId') as "export_route_policy_id",
JSON_EXTRACT(properties, '$.importRoutePolicy') as "import_route_policy",
JSON_EXTRACT(properties, '$.exportRoutePolicy') as "export_route_policy",
JSON_EXTRACT(properties, '$.ingressAclId') as "ingress_acl_id",
JSON_EXTRACT(properties, '$.egressAclId') as "egress_acl_id",
JSON_EXTRACT(properties, '$.isMonitoringEnabled') as "is_monitoring_enabled",
JSON_EXTRACT(properties, '$.extension') as "extension",
JSON_EXTRACT(properties, '$.vlanId') as "vlan_id",
JSON_EXTRACT(properties, '$.bgpConfiguration') as "bgp_configuration",
JSON_EXTRACT(properties, '$.staticRouteConfiguration') as "static_route_configuration",
JSON_EXTRACT(properties, '$.configurationState') as "configuration_state",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.administrativeState') as "administrative_state",
subscriptionId,
resourceGroupName,
l3IsolationDomainName,
internalNetworkName
FROM azure.managed_network_fabric.internal_networks
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND l3IsolationDomainName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.annotation') as "annotation",
json_extract_path_text(properties, '$.mtu') as "mtu",
json_extract_path_text(properties, '$.connectedIPv4Subnets') as "connected_ipv4_subnets",
json_extract_path_text(properties, '$.connectedIPv6Subnets') as "connected_ipv6_subnets",
json_extract_path_text(properties, '$.importRoutePolicyId') as "import_route_policy_id",
json_extract_path_text(properties, '$.exportRoutePolicyId') as "export_route_policy_id",
json_extract_path_text(properties, '$.importRoutePolicy') as "import_route_policy",
json_extract_path_text(properties, '$.exportRoutePolicy') as "export_route_policy",
json_extract_path_text(properties, '$.ingressAclId') as "ingress_acl_id",
json_extract_path_text(properties, '$.egressAclId') as "egress_acl_id",
json_extract_path_text(properties, '$.isMonitoringEnabled') as "is_monitoring_enabled",
json_extract_path_text(properties, '$.extension') as "extension",
json_extract_path_text(properties, '$.vlanId') as "vlan_id",
json_extract_path_text(properties, '$.bgpConfiguration') as "bgp_configuration",
json_extract_path_text(properties, '$.staticRouteConfiguration') as "static_route_configuration",
json_extract_path_text(properties, '$.configurationState') as "configuration_state",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.administrativeState') as "administrative_state",
subscriptionId,
resourceGroupName,
l3IsolationDomainName,
internalNetworkName
FROM azure.managed_network_fabric.internal_networks
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND l3IsolationDomainName = 'replace-me';
```

</TabItem>
</Tabs>
