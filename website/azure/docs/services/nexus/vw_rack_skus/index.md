--- 
title: vw_rack_skus
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_rack_skus
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

Creates, updates, deletes, gets or lists a <code>vw_rack_skus</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_rack_skus</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.nexus.vw_rack_skus" /></td></tr>
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
JSON_EXTRACT(properties, '$.computeMachines') as "compute_machines",
JSON_EXTRACT(properties, '$.controllerMachines') as "controller_machines",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.maxClusterSlots') as "max_cluster_slots",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.rackType') as "rack_type",
JSON_EXTRACT(properties, '$.storageAppliances') as "storage_appliances",
JSON_EXTRACT(properties, '$.supportedRackSkuIds') as "supported_rack_sku_ids",
subscriptionId,
rackSkuName
FROM azure.nexus.rack_skus
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
json_extract_path_text(properties, '$.computeMachines') as "compute_machines",
json_extract_path_text(properties, '$.controllerMachines') as "controller_machines",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.maxClusterSlots') as "max_cluster_slots",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.rackType') as "rack_type",
json_extract_path_text(properties, '$.storageAppliances') as "storage_appliances",
json_extract_path_text(properties, '$.supportedRackSkuIds') as "supported_rack_sku_ids",
subscriptionId,
rackSkuName
FROM azure.nexus.rack_skus
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
