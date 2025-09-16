--- 
title: vw_container_registry_capacities
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_container_registry_capacities
  - container_registry_admin
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_container_registry_capacities</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_container_registry_capacities</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.container_registry_admin.vw_container_registry_capacities" /></td></tr>
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
JSON_EXTRACT(properties, '$.maximumCapacityInGiB') as "maximum_capacity_in_gib",
JSON_EXTRACT(properties, '$.allowPush') as "allow_push",
JSON_EXTRACT(properties, '$.registriesConsumptionInGiB') as "registries_consumption_in_gib",
subscriptionId,
location,
capacityName
FROM azure_stack.container_registry_admin.container_registry_capacities
WHERE subscriptionId = 'replace-me' AND location = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.maximumCapacityInGiB') as "maximum_capacity_in_gib",
json_extract_path_text(properties, '$.allowPush') as "allow_push",
json_extract_path_text(properties, '$.registriesConsumptionInGiB') as "registries_consumption_in_gib",
subscriptionId,
location,
capacityName
FROM azure_stack.container_registry_admin.container_registry_capacities
WHERE subscriptionId = 'replace-me' AND location = 'replace-me';
```

</TabItem>
</Tabs>
