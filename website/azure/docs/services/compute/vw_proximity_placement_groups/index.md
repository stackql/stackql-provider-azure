--- 
title: vw_proximity_placement_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_proximity_placement_groups
  - compute
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

Creates, updates, deletes, gets or lists a <code>vw_proximity_placement_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_proximity_placement_groups</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.vw_proximity_placement_groups" /></td></tr>
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
location as location,
zones as zones,
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.proximityPlacementGroupType') as "proximity_placement_group_type",
JSON_EXTRACT(properties, '$.virtualMachines') as "virtual_machines",
JSON_EXTRACT(properties, '$.virtualMachineScaleSets') as "virtual_machine_scale_sets",
JSON_EXTRACT(properties, '$.availabilitySets') as "availability_sets",
JSON_EXTRACT(properties, '$.colocationStatus') as "colocation_status",
JSON_EXTRACT(properties, '$.intent') as "intent",
subscriptionId,
resourceGroupName,
proximityPlacementGroupName
FROM azure.compute.proximity_placement_groups
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
zones as zones,
type as type,
tags as tags,
json_extract_path_text(properties, '$.proximityPlacementGroupType') as "proximity_placement_group_type",
json_extract_path_text(properties, '$.virtualMachines') as "virtual_machines",
json_extract_path_text(properties, '$.virtualMachineScaleSets') as "virtual_machine_scale_sets",
json_extract_path_text(properties, '$.availabilitySets') as "availability_sets",
json_extract_path_text(properties, '$.colocationStatus') as "colocation_status",
json_extract_path_text(properties, '$.intent') as "intent",
subscriptionId,
resourceGroupName,
proximityPlacementGroupName
FROM azure.compute.proximity_placement_groups
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
