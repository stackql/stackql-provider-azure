--- 
title: vw_racks
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_racks
  - nexus
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

Creates, updates, deletes, gets or lists a <code>vw_racks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_racks</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.nexus.vw_racks" /></td></tr>
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
extendedLocation as extended_location,
tags as tags,
JSON_EXTRACT(properties, '$.availabilityZone') as "availability_zone",
JSON_EXTRACT(properties, '$.clusterId') as "cluster_id",
JSON_EXTRACT(properties, '$.detailedStatus') as "detailed_status",
JSON_EXTRACT(properties, '$.detailedStatusMessage') as "detailed_status_message",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.rackLocation') as "rack_location",
JSON_EXTRACT(properties, '$.rackSerialNumber') as "rack_serial_number",
JSON_EXTRACT(properties, '$.rackSkuId') as "rack_sku_id",
subscriptionId,
resourceGroupName,
rackName
FROM azure.nexus.racks
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
extendedLocation as extended_location,
tags as tags,
json_extract_path_text(properties, '$.availabilityZone') as "availability_zone",
json_extract_path_text(properties, '$.clusterId') as "cluster_id",
json_extract_path_text(properties, '$.detailedStatus') as "detailed_status",
json_extract_path_text(properties, '$.detailedStatusMessage') as "detailed_status_message",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.rackLocation') as "rack_location",
json_extract_path_text(properties, '$.rackSerialNumber') as "rack_serial_number",
json_extract_path_text(properties, '$.rackSkuId') as "rack_sku_id",
subscriptionId,
resourceGroupName,
rackName
FROM azure.nexus.racks
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
