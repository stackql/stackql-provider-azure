--- 
title: vw_db_servers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_db_servers
  - oracle
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

Creates, updates, deletes, gets or lists a <code>vw_db_servers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_db_servers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.oracle.vw_db_servers" /></td></tr>
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
JSON_EXTRACT(properties, '$.ocid') as "ocid",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.compartmentId') as "compartment_id",
JSON_EXTRACT(properties, '$.exadataInfrastructureId') as "exadata_infrastructure_id",
JSON_EXTRACT(properties, '$.cpuCoreCount') as "cpu_core_count",
JSON_EXTRACT(properties, '$.dbServerPatchingDetails') as "db_server_patching_details",
JSON_EXTRACT(properties, '$.maxMemoryInGbs') as "max_memory_in_gbs",
JSON_EXTRACT(properties, '$.dbNodeStorageSizeInGbs') as "db_node_storage_size_in_gbs",
JSON_EXTRACT(properties, '$.vmClusterIds') as "vm_cluster_ids",
JSON_EXTRACT(properties, '$.dbNodeIds') as "db_node_ids",
JSON_EXTRACT(properties, '$.lifecycleDetails') as "lifecycle_details",
JSON_EXTRACT(properties, '$.lifecycleState') as "lifecycle_state",
JSON_EXTRACT(properties, '$.maxCpuCount') as "max_cpu_count",
JSON_EXTRACT(properties, '$.autonomousVmClusterIds') as "autonomous_vm_cluster_ids",
JSON_EXTRACT(properties, '$.autonomousVirtualMachineIds') as "autonomous_virtual_machine_ids",
JSON_EXTRACT(properties, '$.maxDbNodeStorageInGbs') as "max_db_node_storage_in_gbs",
JSON_EXTRACT(properties, '$.memorySizeInGbs') as "memory_size_in_gbs",
JSON_EXTRACT(properties, '$.shape') as "shape",
JSON_EXTRACT(properties, '$.timeCreated') as "time_created",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
cloudexadatainfrastructurename,
dbserverocid
FROM azure_isv.oracle.db_servers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND cloudexadatainfrastructurename = 'replace-me' AND dbserverocid = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.ocid') as "ocid",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.compartmentId') as "compartment_id",
json_extract_path_text(properties, '$.exadataInfrastructureId') as "exadata_infrastructure_id",
json_extract_path_text(properties, '$.cpuCoreCount') as "cpu_core_count",
json_extract_path_text(properties, '$.dbServerPatchingDetails') as "db_server_patching_details",
json_extract_path_text(properties, '$.maxMemoryInGbs') as "max_memory_in_gbs",
json_extract_path_text(properties, '$.dbNodeStorageSizeInGbs') as "db_node_storage_size_in_gbs",
json_extract_path_text(properties, '$.vmClusterIds') as "vm_cluster_ids",
json_extract_path_text(properties, '$.dbNodeIds') as "db_node_ids",
json_extract_path_text(properties, '$.lifecycleDetails') as "lifecycle_details",
json_extract_path_text(properties, '$.lifecycleState') as "lifecycle_state",
json_extract_path_text(properties, '$.maxCpuCount') as "max_cpu_count",
json_extract_path_text(properties, '$.autonomousVmClusterIds') as "autonomous_vm_cluster_ids",
json_extract_path_text(properties, '$.autonomousVirtualMachineIds') as "autonomous_virtual_machine_ids",
json_extract_path_text(properties, '$.maxDbNodeStorageInGbs') as "max_db_node_storage_in_gbs",
json_extract_path_text(properties, '$.memorySizeInGbs') as "memory_size_in_gbs",
json_extract_path_text(properties, '$.shape') as "shape",
json_extract_path_text(properties, '$.timeCreated') as "time_created",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
cloudexadatainfrastructurename,
dbserverocid
FROM azure_isv.oracle.db_servers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND cloudexadatainfrastructurename = 'replace-me' AND dbserverocid = 'replace-me';
```

</TabItem>
</Tabs>
