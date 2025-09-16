--- 
title: vw_express_route_ports_locations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_express_route_ports_locations
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

Creates, updates, deletes, gets or lists a <code>vw_express_route_ports_locations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_express_route_ports_locations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vw_express_route_ports_locations" /></td></tr>
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
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.address') as "address",
JSON_EXTRACT(properties, '$.contact') as "contact",
JSON_EXTRACT(properties, '$.availableBandwidths') as "available_bandwidths",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
locationName
FROM azure.network.express_route_ports_locations
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.address') as "address",
json_extract_path_text(properties, '$.contact') as "contact",
json_extract_path_text(properties, '$.availableBandwidths') as "available_bandwidths",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
locationName
FROM azure.network.express_route_ports_locations
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
