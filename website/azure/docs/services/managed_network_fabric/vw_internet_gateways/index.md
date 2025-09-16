--- 
title: vw_internet_gateways
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_internet_gateways
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

Creates, updates, deletes, gets or lists a <code>vw_internet_gateways</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_internet_gateways</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_network_fabric.vw_internet_gateways" /></td></tr>
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
JSON_EXTRACT(properties, '$.internetGatewayRuleId') as "internet_gateway_rule_id",
JSON_EXTRACT(properties, '$.ipv4Address') as "ipv4_address",
JSON_EXTRACT(properties, '$.port') as "port",
JSON_EXTRACT(properties, '$.type') as "type",
JSON_EXTRACT(properties, '$.networkFabricControllerId') as "network_fabric_controller_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
internetGatewayName
FROM azure.managed_network_fabric.internet_gateways
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.annotation') as "annotation",
json_extract_path_text(properties, '$.internetGatewayRuleId') as "internet_gateway_rule_id",
json_extract_path_text(properties, '$.ipv4Address') as "ipv4_address",
json_extract_path_text(properties, '$.port') as "port",
json_extract_path_text(properties, '$.type') as "type",
json_extract_path_text(properties, '$.networkFabricControllerId') as "network_fabric_controller_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
internetGatewayName
FROM azure.managed_network_fabric.internet_gateways
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
