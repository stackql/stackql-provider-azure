--- 
title: vw_virtual_machine_templates
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_machine_templates
  - connected_vsphere
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_virtual_machine_templates</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_machine_templates</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.connected_vsphere.vw_virtual_machine_templates" /></td></tr>
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
extendedLocation as extended_location,
systemData as system_data,
tags as tags,
type as type,
kind as kind,
JSON_EXTRACT(properties, '$.uuid') as "uuid",
JSON_EXTRACT(properties, '$.vCenterId') as "v_center_id",
JSON_EXTRACT(properties, '$.moRefId') as "mo_ref_id",
JSON_EXTRACT(properties, '$.inventoryItemId') as "inventory_item_id",
JSON_EXTRACT(properties, '$.moName') as "mo_name",
JSON_EXTRACT(properties, '$.memorySizeMB') as "memory_size_mb",
JSON_EXTRACT(properties, '$.numCPUs') as "num_cp_us",
JSON_EXTRACT(properties, '$.numCoresPerSocket') as "num_cores_per_socket",
JSON_EXTRACT(properties, '$.osType') as "os_type",
JSON_EXTRACT(properties, '$.osName') as "os_name",
JSON_EXTRACT(properties, '$.folderPath') as "folder_path",
JSON_EXTRACT(properties, '$.networkInterfaces') as "network_interfaces",
JSON_EXTRACT(properties, '$.disks') as "disks",
JSON_EXTRACT(properties, '$.customResourceName') as "custom_resource_name",
JSON_EXTRACT(properties, '$.toolsVersionStatus') as "tools_version_status",
JSON_EXTRACT(properties, '$.toolsVersion') as "tools_version",
JSON_EXTRACT(properties, '$.firmwareType') as "firmware_type",
JSON_EXTRACT(properties, '$.statuses') as "statuses",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
virtualMachineTemplateName
FROM azure_isv.connected_vsphere.virtual_machine_templates
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
extendedLocation as extended_location,
systemData as system_data,
tags as tags,
type as type,
kind as kind,
json_extract_path_text(properties, '$.uuid') as "uuid",
json_extract_path_text(properties, '$.vCenterId') as "v_center_id",
json_extract_path_text(properties, '$.moRefId') as "mo_ref_id",
json_extract_path_text(properties, '$.inventoryItemId') as "inventory_item_id",
json_extract_path_text(properties, '$.moName') as "mo_name",
json_extract_path_text(properties, '$.memorySizeMB') as "memory_size_mb",
json_extract_path_text(properties, '$.numCPUs') as "num_cp_us",
json_extract_path_text(properties, '$.numCoresPerSocket') as "num_cores_per_socket",
json_extract_path_text(properties, '$.osType') as "os_type",
json_extract_path_text(properties, '$.osName') as "os_name",
json_extract_path_text(properties, '$.folderPath') as "folder_path",
json_extract_path_text(properties, '$.networkInterfaces') as "network_interfaces",
json_extract_path_text(properties, '$.disks') as "disks",
json_extract_path_text(properties, '$.customResourceName') as "custom_resource_name",
json_extract_path_text(properties, '$.toolsVersionStatus') as "tools_version_status",
json_extract_path_text(properties, '$.toolsVersion') as "tools_version",
json_extract_path_text(properties, '$.firmwareType') as "firmware_type",
json_extract_path_text(properties, '$.statuses') as "statuses",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
virtualMachineTemplateName
FROM azure_isv.connected_vsphere.virtual_machine_templates
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
