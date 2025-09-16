--- 
title: vw_volumes
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_volumes
  - fabric_admin
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

Creates, updates, deletes, gets or lists a <code>vw_volumes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_volumes</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.fabric_admin.vw_volumes" /></td></tr>
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
JSON_EXTRACT(properties, '$.totalCapacityGB') as "total_capacity_gb",
JSON_EXTRACT(properties, '$.remainingCapacityGB') as "remaining_capacity_gb",
JSON_EXTRACT(properties, '$.healthStatus') as "health_status",
JSON_EXTRACT(properties, '$.operationalStatus') as "operational_status",
JSON_EXTRACT(properties, '$.repairStatus') as "repair_status",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.action') as "action",
JSON_EXTRACT(properties, '$.volumeLabel') as "volume_label",
subscriptionId,
resourceGroupName,
location,
scaleUnit,
storageSubSystem,
volume
FROM azure_stack.fabric_admin.volumes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND location = 'replace-me' AND scaleUnit = 'replace-me' AND storageSubSystem = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.totalCapacityGB') as "total_capacity_gb",
json_extract_path_text(properties, '$.remainingCapacityGB') as "remaining_capacity_gb",
json_extract_path_text(properties, '$.healthStatus') as "health_status",
json_extract_path_text(properties, '$.operationalStatus') as "operational_status",
json_extract_path_text(properties, '$.repairStatus') as "repair_status",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.action') as "action",
json_extract_path_text(properties, '$.volumeLabel') as "volume_label",
subscriptionId,
resourceGroupName,
location,
scaleUnit,
storageSubSystem,
volume
FROM azure_stack.fabric_admin.volumes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND location = 'replace-me' AND scaleUnit = 'replace-me' AND storageSubSystem = 'replace-me';
```

</TabItem>
</Tabs>
