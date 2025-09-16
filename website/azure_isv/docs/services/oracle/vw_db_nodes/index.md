--- 
title: vw_db_nodes
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_db_nodes
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

Creates, updates, deletes, gets or lists a <code>vw_db_nodes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_db_nodes</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.oracle.vw_db_nodes" /></td></tr>
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
JSON_EXTRACT(properties, '$.additionalDetails') as "additional_details",
JSON_EXTRACT(properties, '$.backupIpId') as "backup_ip_id",
JSON_EXTRACT(properties, '$.backupVnic2Id') as "backup_vnic2_id",
JSON_EXTRACT(properties, '$.backupVnicId') as "backup_vnic_id",
JSON_EXTRACT(properties, '$.cpuCoreCount') as "cpu_core_count",
JSON_EXTRACT(properties, '$.dbNodeStorageSizeInGbs') as "db_node_storage_size_in_gbs",
JSON_EXTRACT(properties, '$.dbServerId') as "db_server_id",
JSON_EXTRACT(properties, '$.dbSystemId') as "db_system_id",
JSON_EXTRACT(properties, '$.faultDomain') as "fault_domain",
JSON_EXTRACT(properties, '$.hostIpId') as "host_ip_id",
JSON_EXTRACT(properties, '$.hostname') as "hostname",
JSON_EXTRACT(properties, '$.lifecycleState') as "lifecycle_state",
JSON_EXTRACT(properties, '$.lifecycleDetails') as "lifecycle_details",
JSON_EXTRACT(properties, '$.maintenanceType') as "maintenance_type",
JSON_EXTRACT(properties, '$.memorySizeInGbs') as "memory_size_in_gbs",
JSON_EXTRACT(properties, '$.softwareStorageSizeInGb') as "software_storage_size_in_gb",
JSON_EXTRACT(properties, '$.timeCreated') as "time_created",
JSON_EXTRACT(properties, '$.timeMaintenanceWindowEnd') as "time_maintenance_window_end",
JSON_EXTRACT(properties, '$.timeMaintenanceWindowStart') as "time_maintenance_window_start",
JSON_EXTRACT(properties, '$.vnic2Id') as "vnic2_id",
JSON_EXTRACT(properties, '$.vnicId') as "vnic_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
cloudvmclustername,
dbnodeocid
FROM azure_isv.oracle.db_nodes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND cloudvmclustername = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.ocid') as "ocid",
json_extract_path_text(properties, '$.additionalDetails') as "additional_details",
json_extract_path_text(properties, '$.backupIpId') as "backup_ip_id",
json_extract_path_text(properties, '$.backupVnic2Id') as "backup_vnic2_id",
json_extract_path_text(properties, '$.backupVnicId') as "backup_vnic_id",
json_extract_path_text(properties, '$.cpuCoreCount') as "cpu_core_count",
json_extract_path_text(properties, '$.dbNodeStorageSizeInGbs') as "db_node_storage_size_in_gbs",
json_extract_path_text(properties, '$.dbServerId') as "db_server_id",
json_extract_path_text(properties, '$.dbSystemId') as "db_system_id",
json_extract_path_text(properties, '$.faultDomain') as "fault_domain",
json_extract_path_text(properties, '$.hostIpId') as "host_ip_id",
json_extract_path_text(properties, '$.hostname') as "hostname",
json_extract_path_text(properties, '$.lifecycleState') as "lifecycle_state",
json_extract_path_text(properties, '$.lifecycleDetails') as "lifecycle_details",
json_extract_path_text(properties, '$.maintenanceType') as "maintenance_type",
json_extract_path_text(properties, '$.memorySizeInGbs') as "memory_size_in_gbs",
json_extract_path_text(properties, '$.softwareStorageSizeInGb') as "software_storage_size_in_gb",
json_extract_path_text(properties, '$.timeCreated') as "time_created",
json_extract_path_text(properties, '$.timeMaintenanceWindowEnd') as "time_maintenance_window_end",
json_extract_path_text(properties, '$.timeMaintenanceWindowStart') as "time_maintenance_window_start",
json_extract_path_text(properties, '$.vnic2Id') as "vnic2_id",
json_extract_path_text(properties, '$.vnicId') as "vnic_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
subscriptionId,
resourceGroupName,
cloudvmclustername,
dbnodeocid
FROM azure_isv.oracle.db_nodes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND cloudvmclustername = 'replace-me';
```

</TabItem>
</Tabs>
