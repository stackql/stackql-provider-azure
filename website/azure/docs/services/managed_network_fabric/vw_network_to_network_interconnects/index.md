--- 
title: vw_network_to_network_interconnects
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_network_to_network_interconnects
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

Creates, updates, deletes, gets or lists a <code>vw_network_to_network_interconnects</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_network_to_network_interconnects</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_network_fabric.vw_network_to_network_interconnects" /></td></tr>
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
JSON_EXTRACT(properties, '$.nniType') as "nni_type",
JSON_EXTRACT(properties, '$.isManagementType') as "is_management_type",
JSON_EXTRACT(properties, '$.useOptionB') as "use_optionb",
JSON_EXTRACT(properties, '$.layer2Configuration') as "layer2_configuration",
JSON_EXTRACT(properties, '$.optionBLayer3Configuration') as "option_b_layer3_configuration",
JSON_EXTRACT(properties, '$.npbStaticRouteConfiguration') as "npb_static_route_configuration",
JSON_EXTRACT(properties, '$.importRoutePolicy') as "import_route_policy",
JSON_EXTRACT(properties, '$.exportRoutePolicy') as "export_route_policy",
JSON_EXTRACT(properties, '$.egressAclId') as "egress_acl_id",
JSON_EXTRACT(properties, '$.ingressAclId') as "ingress_acl_id",
JSON_EXTRACT(properties, '$.configurationState') as "configuration_state",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.administrativeState') as "administrative_state",
subscriptionId,
resourceGroupName,
networkFabricName,
networkToNetworkInterconnectName
FROM azure.managed_network_fabric.network_to_network_interconnects
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND networkFabricName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.nniType') as "nni_type",
json_extract_path_text(properties, '$.isManagementType') as "is_management_type",
json_extract_path_text(properties, '$.useOptionB') as "use_optionb",
json_extract_path_text(properties, '$.layer2Configuration') as "layer2_configuration",
json_extract_path_text(properties, '$.optionBLayer3Configuration') as "option_b_layer3_configuration",
json_extract_path_text(properties, '$.npbStaticRouteConfiguration') as "npb_static_route_configuration",
json_extract_path_text(properties, '$.importRoutePolicy') as "import_route_policy",
json_extract_path_text(properties, '$.exportRoutePolicy') as "export_route_policy",
json_extract_path_text(properties, '$.egressAclId') as "egress_acl_id",
json_extract_path_text(properties, '$.ingressAclId') as "ingress_acl_id",
json_extract_path_text(properties, '$.configurationState') as "configuration_state",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.administrativeState') as "administrative_state",
subscriptionId,
resourceGroupName,
networkFabricName,
networkToNetworkInterconnectName
FROM azure.managed_network_fabric.network_to_network_interconnects
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND networkFabricName = 'replace-me';
```

</TabItem>
</Tabs>
