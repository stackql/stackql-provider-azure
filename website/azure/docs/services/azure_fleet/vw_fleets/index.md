--- 
title: vw_fleets
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_fleets
  - azure_fleet
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

Creates, updates, deletes, gets or lists a <code>vw_fleets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_fleets</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.azure_fleet.vw_fleets" /></td></tr>
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
zones as zones,
identity as identity,
plan as plan,
tags as tags,
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.spotPriorityProfile') as "spot_priority_profile",
JSON_EXTRACT(properties, '$.regularPriorityProfile') as "regular_priority_profile",
JSON_EXTRACT(properties, '$.vmSizesProfile') as "vm_sizes_profile",
JSON_EXTRACT(properties, '$.computeProfile') as "compute_profile",
JSON_EXTRACT(properties, '$.timeCreated') as "time_created",
JSON_EXTRACT(properties, '$.uniqueId') as "unique_id",
subscriptionId,
resourceGroupName,
fleetName
FROM azure.azure_fleet.fleets
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
zones as zones,
identity as identity,
plan as plan,
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.spotPriorityProfile') as "spot_priority_profile",
json_extract_path_text(properties, '$.regularPriorityProfile') as "regular_priority_profile",
json_extract_path_text(properties, '$.vmSizesProfile') as "vm_sizes_profile",
json_extract_path_text(properties, '$.computeProfile') as "compute_profile",
json_extract_path_text(properties, '$.timeCreated') as "time_created",
json_extract_path_text(properties, '$.uniqueId') as "unique_id",
subscriptionId,
resourceGroupName,
fleetName
FROM azure.azure_fleet.fleets
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
