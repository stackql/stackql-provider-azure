--- 
title: vw_virtual_hard_disks
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_virtual_hard_disks
  - azure_stack_hci
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

Creates, updates, deletes, gets or lists a <code>vw_virtual_hard_disks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_virtual_hard_disks</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.azure_stack_hci.vw_virtual_hard_disks" /></td></tr>
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
JSON_EXTRACT(properties, '$.blockSizeBytes') as "block_size_bytes",
JSON_EXTRACT(properties, '$.diskSizeGB') as "disk_size_gb",
JSON_EXTRACT(properties, '$.dynamic') as "dynamic",
JSON_EXTRACT(properties, '$.logicalSectorBytes') as "logical_sector_bytes",
JSON_EXTRACT(properties, '$.physicalSectorBytes') as "physical_sector_bytes",
JSON_EXTRACT(properties, '$.hyperVGeneration') as "hyper_v_generation",
JSON_EXTRACT(properties, '$.diskFileFormat') as "disk_file_format",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.containerId') as "container_id",
JSON_EXTRACT(properties, '$.status') as "status",
subscriptionId,
resourceGroupName,
virtualHardDiskName
FROM azure_stack.azure_stack_hci.virtual_hard_disks
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
extendedLocation as extended_location,
tags as tags,
json_extract_path_text(properties, '$.blockSizeBytes') as "block_size_bytes",
json_extract_path_text(properties, '$.diskSizeGB') as "disk_size_gb",
json_extract_path_text(properties, '$.dynamic') as "dynamic",
json_extract_path_text(properties, '$.logicalSectorBytes') as "logical_sector_bytes",
json_extract_path_text(properties, '$.physicalSectorBytes') as "physical_sector_bytes",
json_extract_path_text(properties, '$.hyperVGeneration') as "hyper_v_generation",
json_extract_path_text(properties, '$.diskFileFormat') as "disk_file_format",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.containerId') as "container_id",
json_extract_path_text(properties, '$.status') as "status",
subscriptionId,
resourceGroupName,
virtualHardDiskName
FROM azure_stack.azure_stack_hci.virtual_hard_disks
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
