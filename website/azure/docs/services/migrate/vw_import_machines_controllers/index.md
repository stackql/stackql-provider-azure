--- 
title: vw_import_machines_controllers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_import_machines_controllers
  - migrate
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

Creates, updates, deletes, gets or lists a <code>vw_import_machines_controllers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_import_machines_controllers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.migrate.vw_import_machines_controllers" /></td></tr>
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
JSON_EXTRACT(properties, '$.firmware') as "firmware",
JSON_EXTRACT(properties, '$.percentageCpuUtilization') as "percentage_cpu_utilization",
JSON_EXTRACT(properties, '$.percentageMemoryUtilization') as "percentage_memory_utilization",
JSON_EXTRACT(properties, '$.numberOfDisks') as "number_of_disks",
JSON_EXTRACT(properties, '$.totalDiskReadOperationsPerSecond') as "total_disk_read_operations_per_second",
JSON_EXTRACT(properties, '$.totalDiskWriteOperationsPerSecond') as "total_disk_write_operations_per_second",
JSON_EXTRACT(properties, '$.totalDiskWriteThroughput') as "total_disk_write_throughput",
JSON_EXTRACT(properties, '$.totalDiskReadThroughput') as "total_disk_read_throughput",
JSON_EXTRACT(properties, '$.macAddress') as "mac_address",
JSON_EXTRACT(properties, '$.ipAddresses') as "ip_addresses",
JSON_EXTRACT(properties, '$.machineId') as "machine_id",
JSON_EXTRACT(properties, '$.machineManagerId') as "machine_manager_id",
JSON_EXTRACT(properties, '$.numberOfNetworkAdapters') as "number_of_network_adapters",
JSON_EXTRACT(properties, '$.networkInThroughput') as "network_in_throughput",
JSON_EXTRACT(properties, '$.networkOutThroughput') as "network_out_throughput",
JSON_EXTRACT(properties, '$.serverType') as "server_type",
JSON_EXTRACT(properties, '$.hypervisor') as "hypervisor",
JSON_EXTRACT(properties, '$.hypervisorVersionNumber') as "hypervisor_version_number",
JSON_EXTRACT(properties, '$.disks') as "disks",
JSON_EXTRACT(properties, '$.vmFqdn') as "vm_fqdn",
JSON_EXTRACT(properties, '$.storageInUseGb') as "storage_in_use_gb",
JSON_EXTRACT(properties, '$.numberOfProcessorCore') as "number_of_processor_core",
JSON_EXTRACT(properties, '$.allocatedMemoryInMb') as "allocated_memory_in_mb",
JSON_EXTRACT(properties, '$.operatingSystemDetails') as "operating_system_details",
JSON_EXTRACT(properties, '$.biosSerialNumber') as "bios_serial_number",
JSON_EXTRACT(properties, '$.biosGuid') as "bios_guid",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.isDeleted') as "is_deleted",
JSON_EXTRACT(properties, '$.createdTimestamp') as "created_timestamp",
JSON_EXTRACT(properties, '$.updatedTimestamp') as "updated_timestamp",
JSON_EXTRACT(properties, '$.tags') as "tags",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
siteName,
machineName
FROM azure.migrate.import_machines_controllers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND siteName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.firmware') as "firmware",
json_extract_path_text(properties, '$.percentageCpuUtilization') as "percentage_cpu_utilization",
json_extract_path_text(properties, '$.percentageMemoryUtilization') as "percentage_memory_utilization",
json_extract_path_text(properties, '$.numberOfDisks') as "number_of_disks",
json_extract_path_text(properties, '$.totalDiskReadOperationsPerSecond') as "total_disk_read_operations_per_second",
json_extract_path_text(properties, '$.totalDiskWriteOperationsPerSecond') as "total_disk_write_operations_per_second",
json_extract_path_text(properties, '$.totalDiskWriteThroughput') as "total_disk_write_throughput",
json_extract_path_text(properties, '$.totalDiskReadThroughput') as "total_disk_read_throughput",
json_extract_path_text(properties, '$.macAddress') as "mac_address",
json_extract_path_text(properties, '$.ipAddresses') as "ip_addresses",
json_extract_path_text(properties, '$.machineId') as "machine_id",
json_extract_path_text(properties, '$.machineManagerId') as "machine_manager_id",
json_extract_path_text(properties, '$.numberOfNetworkAdapters') as "number_of_network_adapters",
json_extract_path_text(properties, '$.networkInThroughput') as "network_in_throughput",
json_extract_path_text(properties, '$.networkOutThroughput') as "network_out_throughput",
json_extract_path_text(properties, '$.serverType') as "server_type",
json_extract_path_text(properties, '$.hypervisor') as "hypervisor",
json_extract_path_text(properties, '$.hypervisorVersionNumber') as "hypervisor_version_number",
json_extract_path_text(properties, '$.disks') as "disks",
json_extract_path_text(properties, '$.vmFqdn') as "vm_fqdn",
json_extract_path_text(properties, '$.storageInUseGb') as "storage_in_use_gb",
json_extract_path_text(properties, '$.numberOfProcessorCore') as "number_of_processor_core",
json_extract_path_text(properties, '$.allocatedMemoryInMb') as "allocated_memory_in_mb",
json_extract_path_text(properties, '$.operatingSystemDetails') as "operating_system_details",
json_extract_path_text(properties, '$.biosSerialNumber') as "bios_serial_number",
json_extract_path_text(properties, '$.biosGuid') as "bios_guid",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.isDeleted') as "is_deleted",
json_extract_path_text(properties, '$.createdTimestamp') as "created_timestamp",
json_extract_path_text(properties, '$.updatedTimestamp') as "updated_timestamp",
json_extract_path_text(properties, '$.tags') as "tags",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
siteName,
machineName
FROM azure.migrate.import_machines_controllers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND siteName = 'replace-me';
```

</TabItem>
</Tabs>
