--- 
title: vw_virtual_machine_templates
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_machine_templates
  - system_center_vm_manager
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_machine_templates</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_machine_templates</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.system_center_vm_manager.vw_virtual_machine_templates" /></td></tr>
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
JSON_EXTRACT(properties, '$.inventoryItemId') as "inventory_item_id",
JSON_EXTRACT(properties, '$.uuid') as "uuid",
JSON_EXTRACT(properties, '$.vmmServerId') as "vmm_server_id",
JSON_EXTRACT(properties, '$.osType') as "os_type",
JSON_EXTRACT(properties, '$.osName') as "os_name",
JSON_EXTRACT(properties, '$.computerName') as "computer_name",
JSON_EXTRACT(properties, '$.memoryMB') as "memory_mb",
JSON_EXTRACT(properties, '$.cpuCount') as "cpu_count",
JSON_EXTRACT(properties, '$.limitCpuForMigration') as "limit_cpu_for_migration",
JSON_EXTRACT(properties, '$.dynamicMemoryEnabled') as "dynamic_memory_enabled",
JSON_EXTRACT(properties, '$.isCustomizable') as "is_customizable",
JSON_EXTRACT(properties, '$.dynamicMemoryMaxMB') as "dynamic_memory_max_mb",
JSON_EXTRACT(properties, '$.dynamicMemoryMinMB') as "dynamic_memory_min_mb",
JSON_EXTRACT(properties, '$.isHighlyAvailable') as "is_highly_available",
JSON_EXTRACT(properties, '$.generation') as "generation",
JSON_EXTRACT(properties, '$.networkInterfaces') as "network_interfaces",
JSON_EXTRACT(properties, '$.disks') as "disks",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
virtualMachineTemplateName
FROM azure.system_center_vm_manager.virtual_machine_templates
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
extendedLocation as extended_location,
tags as tags,
json_extract_path_text(properties, '$.inventoryItemId') as "inventory_item_id",
json_extract_path_text(properties, '$.uuid') as "uuid",
json_extract_path_text(properties, '$.vmmServerId') as "vmm_server_id",
json_extract_path_text(properties, '$.osType') as "os_type",
json_extract_path_text(properties, '$.osName') as "os_name",
json_extract_path_text(properties, '$.computerName') as "computer_name",
json_extract_path_text(properties, '$.memoryMB') as "memory_mb",
json_extract_path_text(properties, '$.cpuCount') as "cpu_count",
json_extract_path_text(properties, '$.limitCpuForMigration') as "limit_cpu_for_migration",
json_extract_path_text(properties, '$.dynamicMemoryEnabled') as "dynamic_memory_enabled",
json_extract_path_text(properties, '$.isCustomizable') as "is_customizable",
json_extract_path_text(properties, '$.dynamicMemoryMaxMB') as "dynamic_memory_max_mb",
json_extract_path_text(properties, '$.dynamicMemoryMinMB') as "dynamic_memory_min_mb",
json_extract_path_text(properties, '$.isHighlyAvailable') as "is_highly_available",
json_extract_path_text(properties, '$.generation') as "generation",
json_extract_path_text(properties, '$.networkInterfaces') as "network_interfaces",
json_extract_path_text(properties, '$.disks') as "disks",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
virtualMachineTemplateName
FROM azure.system_center_vm_manager.virtual_machine_templates
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
