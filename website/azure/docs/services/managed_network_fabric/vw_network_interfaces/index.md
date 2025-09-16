--- 
title: vw_network_interfaces
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_network_interfaces
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

Creates, updates, deletes, gets or lists a <code>vw_network_interfaces</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_network_interfaces</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_network_fabric.vw_network_interfaces" /></td></tr>
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
JSON_EXTRACT(properties, '$.physicalIdentifier') as "physical_identifier",
JSON_EXTRACT(properties, '$.connectedTo') as "connected_to",
JSON_EXTRACT(properties, '$.interfaceType') as "interface_type",
JSON_EXTRACT(properties, '$.ipv4Address') as "ipv4_address",
JSON_EXTRACT(properties, '$.ipv6Address') as "ipv6_address",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.administrativeState') as "administrative_state",
subscriptionId,
resourceGroupName,
networkDeviceName,
networkInterfaceName
FROM azure.managed_network_fabric.network_interfaces
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND networkDeviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.annotation') as "annotation",
json_extract_path_text(properties, '$.physicalIdentifier') as "physical_identifier",
json_extract_path_text(properties, '$.connectedTo') as "connected_to",
json_extract_path_text(properties, '$.interfaceType') as "interface_type",
json_extract_path_text(properties, '$.ipv4Address') as "ipv4_address",
json_extract_path_text(properties, '$.ipv6Address') as "ipv6_address",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.administrativeState') as "administrative_state",
subscriptionId,
resourceGroupName,
networkDeviceName,
networkInterfaceName
FROM azure.managed_network_fabric.network_interfaces
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND networkDeviceName = 'replace-me';
```

</TabItem>
</Tabs>
