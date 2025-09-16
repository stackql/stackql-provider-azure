--- 
title: vw_volumes
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_volumes
  - netapp
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

Creates, updates, deletes, gets or lists a <code>vw_volumes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_volumes</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.netapp.vw_volumes" /></td></tr>
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
etag as etag,
zones as zones,
JSON_EXTRACT(properties, '$.fileSystemId') as "file_system_id",
JSON_EXTRACT(properties, '$.creationToken') as "creation_token",
JSON_EXTRACT(properties, '$.serviceLevel') as "service_level",
JSON_EXTRACT(properties, '$.usageThreshold') as "usage_threshold",
JSON_EXTRACT(properties, '$.exportPolicy') as "export_policy",
JSON_EXTRACT(properties, '$.protocolTypes') as "protocol_types",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.snapshotId') as "snapshot_id",
JSON_EXTRACT(properties, '$.deleteBaseSnapshot') as "delete_base_snapshot",
JSON_EXTRACT(properties, '$.backupId') as "backup_id",
JSON_EXTRACT(properties, '$.baremetalTenantId') as "baremetal_tenant_id",
JSON_EXTRACT(properties, '$.subnetId') as "subnet_id",
JSON_EXTRACT(properties, '$.networkFeatures') as "network_features",
JSON_EXTRACT(properties, '$.networkSiblingSetId') as "network_sibling_set_id",
JSON_EXTRACT(properties, '$.storageToNetworkProximity') as "storage_to_network_proximity",
JSON_EXTRACT(properties, '$.mountTargets') as "mount_targets",
JSON_EXTRACT(properties, '$.volumeType') as "volume_type",
JSON_EXTRACT(properties, '$.dataProtection') as "data_protection",
JSON_EXTRACT(properties, '$.isRestoring') as "is_restoring",
JSON_EXTRACT(properties, '$.snapshotDirectoryVisible') as "snapshot_directory_visible",
JSON_EXTRACT(properties, '$.kerberosEnabled') as "kerberos_enabled",
JSON_EXTRACT(properties, '$.securityStyle') as "security_style",
JSON_EXTRACT(properties, '$.smbEncryption') as "smb_encryption",
JSON_EXTRACT(properties, '$.smbAccessBasedEnumeration') as "smb_access_based_enumeration",
JSON_EXTRACT(properties, '$.smbNonBrowsable') as "smb_non_browsable",
JSON_EXTRACT(properties, '$.smbContinuouslyAvailable') as "smb_continuously_available",
JSON_EXTRACT(properties, '$.throughputMibps') as "throughput_mibps",
JSON_EXTRACT(properties, '$.actualThroughputMibps') as "actual_throughput_mibps",
JSON_EXTRACT(properties, '$.encryptionKeySource') as "encryption_key_source",
JSON_EXTRACT(properties, '$.keyVaultPrivateEndpointResourceId') as "key_vault_private_endpoint_resource_id",
JSON_EXTRACT(properties, '$.ldapEnabled') as "ldap_enabled",
JSON_EXTRACT(properties, '$.coolAccess') as "cool_access",
JSON_EXTRACT(properties, '$.coolnessPeriod') as "coolness_period",
JSON_EXTRACT(properties, '$.coolAccessRetrievalPolicy') as "cool_access_retrieval_policy",
JSON_EXTRACT(properties, '$.unixPermissions') as "unix_permissions",
JSON_EXTRACT(properties, '$.cloneProgress') as "clone_progress",
JSON_EXTRACT(properties, '$.fileAccessLogs') as "file_access_logs",
JSON_EXTRACT(properties, '$.avsDataStore') as "avs_data_store",
JSON_EXTRACT(properties, '$.dataStoreResourceId') as "data_store_resource_id",
JSON_EXTRACT(properties, '$.isDefaultQuotaEnabled') as "is_default_quota_enabled",
JSON_EXTRACT(properties, '$.defaultUserQuotaInKiBs') as "default_user_quota_in_ki_bs",
JSON_EXTRACT(properties, '$.defaultGroupQuotaInKiBs') as "default_group_quota_in_ki_bs",
JSON_EXTRACT(properties, '$.maximumNumberOfFiles') as "maximum_number_of_files",
JSON_EXTRACT(properties, '$.volumeGroupName') as "volume_group_name",
JSON_EXTRACT(properties, '$.capacityPoolResourceId') as "capacity_pool_resource_id",
JSON_EXTRACT(properties, '$.proximityPlacementGroup') as "proximity_placement_group",
JSON_EXTRACT(properties, '$.t2Network') as "t2_network",
JSON_EXTRACT(properties, '$.volumeSpecName') as "volume_spec_name",
JSON_EXTRACT(properties, '$.encrypted') as "encrypted",
JSON_EXTRACT(properties, '$.placementRules') as "placement_rules",
JSON_EXTRACT(properties, '$.enableSubvolumes') as "enable_subvolumes",
JSON_EXTRACT(properties, '$.provisionedAvailabilityZone') as "provisioned_availability_zone",
JSON_EXTRACT(properties, '$.isLargeVolume') as "is_large_volume",
JSON_EXTRACT(properties, '$.originatingResourceId') as "originating_resource_id",
subscriptionId,
resourceGroupName,
accountName,
poolName,
volumeName
FROM azure_isv.netapp.volumes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me' AND poolName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
etag as etag,
zones as zones,
json_extract_path_text(properties, '$.fileSystemId') as "file_system_id",
json_extract_path_text(properties, '$.creationToken') as "creation_token",
json_extract_path_text(properties, '$.serviceLevel') as "service_level",
json_extract_path_text(properties, '$.usageThreshold') as "usage_threshold",
json_extract_path_text(properties, '$.exportPolicy') as "export_policy",
json_extract_path_text(properties, '$.protocolTypes') as "protocol_types",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.snapshotId') as "snapshot_id",
json_extract_path_text(properties, '$.deleteBaseSnapshot') as "delete_base_snapshot",
json_extract_path_text(properties, '$.backupId') as "backup_id",
json_extract_path_text(properties, '$.baremetalTenantId') as "baremetal_tenant_id",
json_extract_path_text(properties, '$.subnetId') as "subnet_id",
json_extract_path_text(properties, '$.networkFeatures') as "network_features",
json_extract_path_text(properties, '$.networkSiblingSetId') as "network_sibling_set_id",
json_extract_path_text(properties, '$.storageToNetworkProximity') as "storage_to_network_proximity",
json_extract_path_text(properties, '$.mountTargets') as "mount_targets",
json_extract_path_text(properties, '$.volumeType') as "volume_type",
json_extract_path_text(properties, '$.dataProtection') as "data_protection",
json_extract_path_text(properties, '$.isRestoring') as "is_restoring",
json_extract_path_text(properties, '$.snapshotDirectoryVisible') as "snapshot_directory_visible",
json_extract_path_text(properties, '$.kerberosEnabled') as "kerberos_enabled",
json_extract_path_text(properties, '$.securityStyle') as "security_style",
json_extract_path_text(properties, '$.smbEncryption') as "smb_encryption",
json_extract_path_text(properties, '$.smbAccessBasedEnumeration') as "smb_access_based_enumeration",
json_extract_path_text(properties, '$.smbNonBrowsable') as "smb_non_browsable",
json_extract_path_text(properties, '$.smbContinuouslyAvailable') as "smb_continuously_available",
json_extract_path_text(properties, '$.throughputMibps') as "throughput_mibps",
json_extract_path_text(properties, '$.actualThroughputMibps') as "actual_throughput_mibps",
json_extract_path_text(properties, '$.encryptionKeySource') as "encryption_key_source",
json_extract_path_text(properties, '$.keyVaultPrivateEndpointResourceId') as "key_vault_private_endpoint_resource_id",
json_extract_path_text(properties, '$.ldapEnabled') as "ldap_enabled",
json_extract_path_text(properties, '$.coolAccess') as "cool_access",
json_extract_path_text(properties, '$.coolnessPeriod') as "coolness_period",
json_extract_path_text(properties, '$.coolAccessRetrievalPolicy') as "cool_access_retrieval_policy",
json_extract_path_text(properties, '$.unixPermissions') as "unix_permissions",
json_extract_path_text(properties, '$.cloneProgress') as "clone_progress",
json_extract_path_text(properties, '$.fileAccessLogs') as "file_access_logs",
json_extract_path_text(properties, '$.avsDataStore') as "avs_data_store",
json_extract_path_text(properties, '$.dataStoreResourceId') as "data_store_resource_id",
json_extract_path_text(properties, '$.isDefaultQuotaEnabled') as "is_default_quota_enabled",
json_extract_path_text(properties, '$.defaultUserQuotaInKiBs') as "default_user_quota_in_ki_bs",
json_extract_path_text(properties, '$.defaultGroupQuotaInKiBs') as "default_group_quota_in_ki_bs",
json_extract_path_text(properties, '$.maximumNumberOfFiles') as "maximum_number_of_files",
json_extract_path_text(properties, '$.volumeGroupName') as "volume_group_name",
json_extract_path_text(properties, '$.capacityPoolResourceId') as "capacity_pool_resource_id",
json_extract_path_text(properties, '$.proximityPlacementGroup') as "proximity_placement_group",
json_extract_path_text(properties, '$.t2Network') as "t2_network",
json_extract_path_text(properties, '$.volumeSpecName') as "volume_spec_name",
json_extract_path_text(properties, '$.encrypted') as "encrypted",
json_extract_path_text(properties, '$.placementRules') as "placement_rules",
json_extract_path_text(properties, '$.enableSubvolumes') as "enable_subvolumes",
json_extract_path_text(properties, '$.provisionedAvailabilityZone') as "provisioned_availability_zone",
json_extract_path_text(properties, '$.isLargeVolume') as "is_large_volume",
json_extract_path_text(properties, '$.originatingResourceId') as "originating_resource_id",
subscriptionId,
resourceGroupName,
accountName,
poolName,
volumeName
FROM azure_isv.netapp.volumes
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me' AND poolName = 'replace-me';
```

</TabItem>
</Tabs>
