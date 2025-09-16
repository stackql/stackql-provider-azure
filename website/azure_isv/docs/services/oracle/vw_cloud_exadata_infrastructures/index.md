--- 
title: vw_cloud_exadata_infrastructures
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_cloud_exadata_infrastructures
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

Creates, updates, deletes, gets or lists a <code>vw_cloud_exadata_infrastructures</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_cloud_exadata_infrastructures</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.oracle.vw_cloud_exadata_infrastructures" /></td></tr>
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
tags as tags,
JSON_EXTRACT(properties, '$.ocid') as "ocid",
JSON_EXTRACT(properties, '$.computeCount') as "compute_count",
JSON_EXTRACT(properties, '$.storageCount') as "storage_count",
JSON_EXTRACT(properties, '$.totalStorageSizeInGbs') as "total_storage_size_in_gbs",
JSON_EXTRACT(properties, '$.availableStorageSizeInGbs') as "available_storage_size_in_gbs",
JSON_EXTRACT(properties, '$.timeCreated') as "time_created",
JSON_EXTRACT(properties, '$.lifecycleDetails') as "lifecycle_details",
JSON_EXTRACT(properties, '$.maintenanceWindow') as "maintenance_window",
JSON_EXTRACT(properties, '$.estimatedPatchingTime') as "estimated_patching_time",
JSON_EXTRACT(properties, '$.customerContacts') as "customer_contacts",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.lifecycleState') as "lifecycle_state",
JSON_EXTRACT(properties, '$.shape') as "shape",
JSON_EXTRACT(properties, '$.ociUrl') as "oci_url",
JSON_EXTRACT(properties, '$.cpuCount') as "cpu_count",
JSON_EXTRACT(properties, '$.maxCpuCount') as "max_cpu_count",
JSON_EXTRACT(properties, '$.memorySizeInGbs') as "memory_size_in_gbs",
JSON_EXTRACT(properties, '$.maxMemoryInGbs') as "max_memory_in_gbs",
JSON_EXTRACT(properties, '$.dbNodeStorageSizeInGbs') as "db_node_storage_size_in_gbs",
JSON_EXTRACT(properties, '$.maxDbNodeStorageSizeInGbs') as "max_db_node_storage_size_in_gbs",
JSON_EXTRACT(properties, '$.dataStorageSizeInTbs') as "data_storage_size_in_tbs",
JSON_EXTRACT(properties, '$.maxDataStorageInTbs') as "max_data_storage_in_tbs",
JSON_EXTRACT(properties, '$.dbServerVersion') as "db_server_version",
JSON_EXTRACT(properties, '$.storageServerVersion') as "storage_server_version",
JSON_EXTRACT(properties, '$.activatedStorageCount') as "activated_storage_count",
JSON_EXTRACT(properties, '$.additionalStorageCount') as "additional_storage_count",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.lastMaintenanceRunId') as "last_maintenance_run_id",
JSON_EXTRACT(properties, '$.nextMaintenanceRunId') as "next_maintenance_run_id",
JSON_EXTRACT(properties, '$.monthlyDbServerVersion') as "monthly_db_server_version",
JSON_EXTRACT(properties, '$.monthlyStorageServerVersion') as "monthly_storage_server_version",
subscriptionId,
resourceGroupName,
cloudexadatainfrastructurename
FROM azure_isv.oracle.cloud_exadata_infrastructures
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
zones as zones,
tags as tags,
json_extract_path_text(properties, '$.ocid') as "ocid",
json_extract_path_text(properties, '$.computeCount') as "compute_count",
json_extract_path_text(properties, '$.storageCount') as "storage_count",
json_extract_path_text(properties, '$.totalStorageSizeInGbs') as "total_storage_size_in_gbs",
json_extract_path_text(properties, '$.availableStorageSizeInGbs') as "available_storage_size_in_gbs",
json_extract_path_text(properties, '$.timeCreated') as "time_created",
json_extract_path_text(properties, '$.lifecycleDetails') as "lifecycle_details",
json_extract_path_text(properties, '$.maintenanceWindow') as "maintenance_window",
json_extract_path_text(properties, '$.estimatedPatchingTime') as "estimated_patching_time",
json_extract_path_text(properties, '$.customerContacts') as "customer_contacts",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.lifecycleState') as "lifecycle_state",
json_extract_path_text(properties, '$.shape') as "shape",
json_extract_path_text(properties, '$.ociUrl') as "oci_url",
json_extract_path_text(properties, '$.cpuCount') as "cpu_count",
json_extract_path_text(properties, '$.maxCpuCount') as "max_cpu_count",
json_extract_path_text(properties, '$.memorySizeInGbs') as "memory_size_in_gbs",
json_extract_path_text(properties, '$.maxMemoryInGbs') as "max_memory_in_gbs",
json_extract_path_text(properties, '$.dbNodeStorageSizeInGbs') as "db_node_storage_size_in_gbs",
json_extract_path_text(properties, '$.maxDbNodeStorageSizeInGbs') as "max_db_node_storage_size_in_gbs",
json_extract_path_text(properties, '$.dataStorageSizeInTbs') as "data_storage_size_in_tbs",
json_extract_path_text(properties, '$.maxDataStorageInTbs') as "max_data_storage_in_tbs",
json_extract_path_text(properties, '$.dbServerVersion') as "db_server_version",
json_extract_path_text(properties, '$.storageServerVersion') as "storage_server_version",
json_extract_path_text(properties, '$.activatedStorageCount') as "activated_storage_count",
json_extract_path_text(properties, '$.additionalStorageCount') as "additional_storage_count",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.lastMaintenanceRunId') as "last_maintenance_run_id",
json_extract_path_text(properties, '$.nextMaintenanceRunId') as "next_maintenance_run_id",
json_extract_path_text(properties, '$.monthlyDbServerVersion') as "monthly_db_server_version",
json_extract_path_text(properties, '$.monthlyStorageServerVersion') as "monthly_storage_server_version",
subscriptionId,
resourceGroupName,
cloudexadatainfrastructurename
FROM azure_isv.oracle.cloud_exadata_infrastructures
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
