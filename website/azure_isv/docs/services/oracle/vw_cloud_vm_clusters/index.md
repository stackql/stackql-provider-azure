--- 
title: vw_cloud_vm_clusters
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_cloud_vm_clusters
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

Creates, updates, deletes, gets or lists a <code>vw_cloud_vm_clusters</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_cloud_vm_clusters</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.oracle.vw_cloud_vm_clusters" /></td></tr>
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
tags as tags,
JSON_EXTRACT(properties, '$.ocid') as "ocid",
JSON_EXTRACT(properties, '$.listenerPort') as "listener_port",
JSON_EXTRACT(properties, '$.nodeCount') as "node_count",
JSON_EXTRACT(properties, '$.storageSizeInGbs') as "storage_size_in_gbs",
JSON_EXTRACT(properties, '$.dataStorageSizeInTbs') as "data_storage_size_in_tbs",
JSON_EXTRACT(properties, '$.dbNodeStorageSizeInGbs') as "db_node_storage_size_in_gbs",
JSON_EXTRACT(properties, '$.memorySizeInGbs') as "memory_size_in_gbs",
JSON_EXTRACT(properties, '$.timeCreated') as "time_created",
JSON_EXTRACT(properties, '$.lifecycleDetails') as "lifecycle_details",
JSON_EXTRACT(properties, '$.timeZone') as "time_zone",
JSON_EXTRACT(properties, '$.zoneId') as "zone_id",
JSON_EXTRACT(properties, '$.hostname') as "hostname",
JSON_EXTRACT(properties, '$.domain') as "domain",
JSON_EXTRACT(properties, '$.cpuCoreCount') as "cpu_core_count",
JSON_EXTRACT(properties, '$.ocpuCount') as "ocpu_count",
JSON_EXTRACT(properties, '$.clusterName') as "cluster_name",
JSON_EXTRACT(properties, '$.dataStoragePercentage') as "data_storage_percentage",
JSON_EXTRACT(properties, '$.isLocalBackupEnabled') as "is_local_backup_enabled",
JSON_EXTRACT(properties, '$.cloudExadataInfrastructureId') as "cloud_exadata_infrastructure_id",
JSON_EXTRACT(properties, '$.isSparseDiskgroupEnabled') as "is_sparse_diskgroup_enabled",
JSON_EXTRACT(properties, '$.systemVersion') as "system_version",
JSON_EXTRACT(properties, '$.sshPublicKeys') as "ssh_public_keys",
JSON_EXTRACT(properties, '$.licenseModel') as "license_model",
JSON_EXTRACT(properties, '$.diskRedundancy') as "disk_redundancy",
JSON_EXTRACT(properties, '$.scanIpIds') as "scan_ip_ids",
JSON_EXTRACT(properties, '$.vipIds') as "vip_ids",
JSON_EXTRACT(properties, '$.scanDnsName') as "scan_dns_name",
JSON_EXTRACT(properties, '$.scanListenerPortTcp') as "scan_listener_port_tcp",
JSON_EXTRACT(properties, '$.scanListenerPortTcpSsl') as "scan_listener_port_tcp_ssl",
JSON_EXTRACT(properties, '$.scanDnsRecordId') as "scan_dns_record_id",
JSON_EXTRACT(properties, '$.shape') as "shape",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.lifecycleState') as "lifecycle_state",
JSON_EXTRACT(properties, '$.vnetId') as "vnet_id",
JSON_EXTRACT(properties, '$.giVersion') as "gi_version",
JSON_EXTRACT(properties, '$.ociUrl') as "oci_url",
JSON_EXTRACT(properties, '$.nsgUrl') as "nsg_url",
JSON_EXTRACT(properties, '$.subnetId') as "subnet_id",
JSON_EXTRACT(properties, '$.backupSubnetCidr') as "backup_subnet_cidr",
JSON_EXTRACT(properties, '$.nsgCidrs') as "nsg_cidrs",
JSON_EXTRACT(properties, '$.dataCollectionOptions') as "data_collection_options",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.computeNodes') as "compute_nodes",
JSON_EXTRACT(properties, '$.iormConfigCache') as "iorm_config_cache",
JSON_EXTRACT(properties, '$.lastUpdateHistoryEntryId') as "last_update_history_entry_id",
JSON_EXTRACT(properties, '$.dbServers') as "db_servers",
JSON_EXTRACT(properties, '$.compartmentId') as "compartment_id",
JSON_EXTRACT(properties, '$.subnetOcid') as "subnet_ocid",
subscriptionId,
resourceGroupName,
cloudvmclustername
FROM azure_isv.oracle.cloud_vm_clusters
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.ocid') as "ocid",
json_extract_path_text(properties, '$.listenerPort') as "listener_port",
json_extract_path_text(properties, '$.nodeCount') as "node_count",
json_extract_path_text(properties, '$.storageSizeInGbs') as "storage_size_in_gbs",
json_extract_path_text(properties, '$.dataStorageSizeInTbs') as "data_storage_size_in_tbs",
json_extract_path_text(properties, '$.dbNodeStorageSizeInGbs') as "db_node_storage_size_in_gbs",
json_extract_path_text(properties, '$.memorySizeInGbs') as "memory_size_in_gbs",
json_extract_path_text(properties, '$.timeCreated') as "time_created",
json_extract_path_text(properties, '$.lifecycleDetails') as "lifecycle_details",
json_extract_path_text(properties, '$.timeZone') as "time_zone",
json_extract_path_text(properties, '$.zoneId') as "zone_id",
json_extract_path_text(properties, '$.hostname') as "hostname",
json_extract_path_text(properties, '$.domain') as "domain",
json_extract_path_text(properties, '$.cpuCoreCount') as "cpu_core_count",
json_extract_path_text(properties, '$.ocpuCount') as "ocpu_count",
json_extract_path_text(properties, '$.clusterName') as "cluster_name",
json_extract_path_text(properties, '$.dataStoragePercentage') as "data_storage_percentage",
json_extract_path_text(properties, '$.isLocalBackupEnabled') as "is_local_backup_enabled",
json_extract_path_text(properties, '$.cloudExadataInfrastructureId') as "cloud_exadata_infrastructure_id",
json_extract_path_text(properties, '$.isSparseDiskgroupEnabled') as "is_sparse_diskgroup_enabled",
json_extract_path_text(properties, '$.systemVersion') as "system_version",
json_extract_path_text(properties, '$.sshPublicKeys') as "ssh_public_keys",
json_extract_path_text(properties, '$.licenseModel') as "license_model",
json_extract_path_text(properties, '$.diskRedundancy') as "disk_redundancy",
json_extract_path_text(properties, '$.scanIpIds') as "scan_ip_ids",
json_extract_path_text(properties, '$.vipIds') as "vip_ids",
json_extract_path_text(properties, '$.scanDnsName') as "scan_dns_name",
json_extract_path_text(properties, '$.scanListenerPortTcp') as "scan_listener_port_tcp",
json_extract_path_text(properties, '$.scanListenerPortTcpSsl') as "scan_listener_port_tcp_ssl",
json_extract_path_text(properties, '$.scanDnsRecordId') as "scan_dns_record_id",
json_extract_path_text(properties, '$.shape') as "shape",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.lifecycleState') as "lifecycle_state",
json_extract_path_text(properties, '$.vnetId') as "vnet_id",
json_extract_path_text(properties, '$.giVersion') as "gi_version",
json_extract_path_text(properties, '$.ociUrl') as "oci_url",
json_extract_path_text(properties, '$.nsgUrl') as "nsg_url",
json_extract_path_text(properties, '$.subnetId') as "subnet_id",
json_extract_path_text(properties, '$.backupSubnetCidr') as "backup_subnet_cidr",
json_extract_path_text(properties, '$.nsgCidrs') as "nsg_cidrs",
json_extract_path_text(properties, '$.dataCollectionOptions') as "data_collection_options",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.computeNodes') as "compute_nodes",
json_extract_path_text(properties, '$.iormConfigCache') as "iorm_config_cache",
json_extract_path_text(properties, '$.lastUpdateHistoryEntryId') as "last_update_history_entry_id",
json_extract_path_text(properties, '$.dbServers') as "db_servers",
json_extract_path_text(properties, '$.compartmentId') as "compartment_id",
json_extract_path_text(properties, '$.subnetOcid') as "subnet_ocid",
subscriptionId,
resourceGroupName,
cloudvmclustername
FROM azure_isv.oracle.cloud_vm_clusters
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
