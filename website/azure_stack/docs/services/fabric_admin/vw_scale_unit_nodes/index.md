--- 
title: vw_scale_unit_nodes
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_scale_unit_nodes
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

Creates, updates, deletes, gets or lists a <code>vw_scale_unit_nodes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_scale_unit_nodes</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.fabric_admin.vw_scale_unit_nodes" /></td></tr>
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
JSON_EXTRACT(properties, '$.scaleUnitNodeStatus') as "scale_unit_node_status",
JSON_EXTRACT(properties, '$.powerState') as "power_state",
JSON_EXTRACT(properties, '$.bmcAddress') as "bmc_address",
JSON_EXTRACT(properties, '$.scaleUnitName') as "scale_unit_name",
JSON_EXTRACT(properties, '$.scaleUnitUri') as "scale_unit_uri",
JSON_EXTRACT(properties, '$.canPowerOff') as "can_power_off",
JSON_EXTRACT(properties, '$.vendor') as "vendor",
JSON_EXTRACT(properties, '$.model') as "model",
JSON_EXTRACT(properties, '$.serialNumber') as "serial_number",
JSON_EXTRACT(properties, '$.biosVersion') as "bios_version",
JSON_EXTRACT(properties, '$.capacity') as "capacity",
JSON_EXTRACT(properties, '$.gpus') as "gpus",
subscriptionId,
resourceGroupName,
location,
scaleUnitNode
FROM azure_stack.fabric_admin.scale_unit_nodes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND location = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.scaleUnitNodeStatus') as "scale_unit_node_status",
json_extract_path_text(properties, '$.powerState') as "power_state",
json_extract_path_text(properties, '$.bmcAddress') as "bmc_address",
json_extract_path_text(properties, '$.scaleUnitName') as "scale_unit_name",
json_extract_path_text(properties, '$.scaleUnitUri') as "scale_unit_uri",
json_extract_path_text(properties, '$.canPowerOff') as "can_power_off",
json_extract_path_text(properties, '$.vendor') as "vendor",
json_extract_path_text(properties, '$.model') as "model",
json_extract_path_text(properties, '$.serialNumber') as "serial_number",
json_extract_path_text(properties, '$.biosVersion') as "bios_version",
json_extract_path_text(properties, '$.capacity') as "capacity",
json_extract_path_text(properties, '$.gpus') as "gpus",
subscriptionId,
resourceGroupName,
location,
scaleUnitNode
FROM azure_stack.fabric_admin.scale_unit_nodes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND location = 'replace-me';
```

</TabItem>
</Tabs>
