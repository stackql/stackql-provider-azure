--- 
title: vw_attached_data_networks
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_attached_data_networks
  - mobile_network
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

Creates, updates, deletes, gets or lists a <code>vw_attached_data_networks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_attached_data_networks</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.mobile_network.vw_attached_data_networks" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.userPlaneDataInterface') as "user_plane_data_interface",
JSON_EXTRACT(properties, '$.dnsAddresses') as "dns_addresses",
JSON_EXTRACT(properties, '$.naptConfiguration') as "napt_configuration",
JSON_EXTRACT(properties, '$.userEquipmentAddressPoolPrefix') as "user_equipment_address_pool_prefix",
JSON_EXTRACT(properties, '$.userEquipmentStaticAddressPoolPrefix') as "user_equipment_static_address_pool_prefix",
subscriptionId,
resourceGroupName,
packetCoreControlPlaneName,
packetCoreDataPlaneName,
attachedDataNetworkName
FROM azure.mobile_network.attached_data_networks
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND packetCoreControlPlaneName = 'replace-me' AND packetCoreDataPlaneName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.userPlaneDataInterface') as "user_plane_data_interface",
json_extract_path_text(properties, '$.dnsAddresses') as "dns_addresses",
json_extract_path_text(properties, '$.naptConfiguration') as "napt_configuration",
json_extract_path_text(properties, '$.userEquipmentAddressPoolPrefix') as "user_equipment_address_pool_prefix",
json_extract_path_text(properties, '$.userEquipmentStaticAddressPoolPrefix') as "user_equipment_static_address_pool_prefix",
subscriptionId,
resourceGroupName,
packetCoreControlPlaneName,
packetCoreDataPlaneName,
attachedDataNetworkName
FROM azure.mobile_network.attached_data_networks
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND packetCoreControlPlaneName = 'replace-me' AND packetCoreDataPlaneName = 'replace-me';
```

</TabItem>
</Tabs>
