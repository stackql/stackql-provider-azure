--- 
title: vw_network_packet_brokers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_network_packet_brokers
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

Creates, updates, deletes, gets or lists a <code>vw_network_packet_brokers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_network_packet_brokers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_network_fabric.vw_network_packet_brokers" /></td></tr>
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
JSON_EXTRACT(properties, '$.networkFabricId') as "network_fabric_id",
JSON_EXTRACT(properties, '$.networkDeviceIds') as "network_device_ids",
JSON_EXTRACT(properties, '$.sourceInterfaceIds') as "source_interface_ids",
JSON_EXTRACT(properties, '$.networkTapIds') as "network_tap_ids",
JSON_EXTRACT(properties, '$.neighborGroupIds') as "neighbor_group_ids",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
networkPacketBrokerName
FROM azure.managed_network_fabric.network_packet_brokers
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.networkFabricId') as "network_fabric_id",
json_extract_path_text(properties, '$.networkDeviceIds') as "network_device_ids",
json_extract_path_text(properties, '$.sourceInterfaceIds') as "source_interface_ids",
json_extract_path_text(properties, '$.networkTapIds') as "network_tap_ids",
json_extract_path_text(properties, '$.neighborGroupIds') as "neighbor_group_ids",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
networkPacketBrokerName
FROM azure.managed_network_fabric.network_packet_brokers
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
