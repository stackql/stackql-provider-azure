--- 
title: vw_disks
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_disks
  - compute
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

Creates, updates, deletes, gets or lists a <code>vw_disks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_disks</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.vw_disks" /></td></tr>
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
managedBy as managed_by,
managedByExtended as managed_by_extended,
sku as sku,
zones as zones,
extendedLocation as extended_location,
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.timeCreated') as "time_created",
JSON_EXTRACT(properties, '$.osType') as "os_type",
JSON_EXTRACT(properties, '$.hyperVGeneration') as "hyper_v_generation",
JSON_EXTRACT(properties, '$.purchasePlan') as "purchase_plan",
JSON_EXTRACT(properties, '$.supportedCapabilities') as "supported_capabilities",
JSON_EXTRACT(properties, '$.creationData') as "creation_data",
JSON_EXTRACT(properties, '$.diskSizeGB') as "disk_size_gb",
JSON_EXTRACT(properties, '$.diskSizeBytes') as "disk_size_bytes",
JSON_EXTRACT(properties, '$.uniqueId') as "unique_id",
JSON_EXTRACT(properties, '$.encryptionSettingsCollection') as "encryption_settings_collection",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.diskIOPSReadWrite') as "disk_iops_read_write",
JSON_EXTRACT(properties, '$.diskMBpsReadWrite') as "disk_mbps_read_write",
JSON_EXTRACT(properties, '$.diskIOPSReadOnly') as "disk_iops_read_only",
JSON_EXTRACT(properties, '$.diskMBpsReadOnly') as "disk_mbps_read_only",
JSON_EXTRACT(properties, '$.diskState') as "disk_state",
JSON_EXTRACT(properties, '$.encryption') as "encryption",
JSON_EXTRACT(properties, '$.maxShares') as "max_shares",
JSON_EXTRACT(properties, '$.shareInfo') as "share_info",
JSON_EXTRACT(properties, '$.networkAccessPolicy') as "network_access_policy",
JSON_EXTRACT(properties, '$.diskAccessId') as "disk_access_id",
JSON_EXTRACT(properties, '$.burstingEnabledTime') as "bursting_enabled_time",
JSON_EXTRACT(properties, '$.tier') as "tier",
JSON_EXTRACT(properties, '$.burstingEnabled') as "bursting_enabled",
JSON_EXTRACT(properties, '$.propertyUpdatesInProgress') as "property_updates_in_progress",
JSON_EXTRACT(properties, '$.supportsHibernation') as "supports_hibernation",
JSON_EXTRACT(properties, '$.securityProfile') as "security_profile",
JSON_EXTRACT(properties, '$.completionPercent') as "completion_percent",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.dataAccessAuthMode') as "data_access_auth_mode",
JSON_EXTRACT(properties, '$.optimizedForFrequentAttach') as "optimized_for_frequent_attach",
JSON_EXTRACT(properties, '$.LastOwnershipUpdateTime') as "last_ownership_update_time",
subscriptionId,
resourceGroupName,
diskName
FROM azure.compute.disks
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
managedBy as managed_by,
managedByExtended as managed_by_extended,
sku as sku,
zones as zones,
extendedLocation as extended_location,
type as type,
tags as tags,
json_extract_path_text(properties, '$.timeCreated') as "time_created",
json_extract_path_text(properties, '$.osType') as "os_type",
json_extract_path_text(properties, '$.hyperVGeneration') as "hyper_v_generation",
json_extract_path_text(properties, '$.purchasePlan') as "purchase_plan",
json_extract_path_text(properties, '$.supportedCapabilities') as "supported_capabilities",
json_extract_path_text(properties, '$.creationData') as "creation_data",
json_extract_path_text(properties, '$.diskSizeGB') as "disk_size_gb",
json_extract_path_text(properties, '$.diskSizeBytes') as "disk_size_bytes",
json_extract_path_text(properties, '$.uniqueId') as "unique_id",
json_extract_path_text(properties, '$.encryptionSettingsCollection') as "encryption_settings_collection",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.diskIOPSReadWrite') as "disk_iops_read_write",
json_extract_path_text(properties, '$.diskMBpsReadWrite') as "disk_mbps_read_write",
json_extract_path_text(properties, '$.diskIOPSReadOnly') as "disk_iops_read_only",
json_extract_path_text(properties, '$.diskMBpsReadOnly') as "disk_mbps_read_only",
json_extract_path_text(properties, '$.diskState') as "disk_state",
json_extract_path_text(properties, '$.encryption') as "encryption",
json_extract_path_text(properties, '$.maxShares') as "max_shares",
json_extract_path_text(properties, '$.shareInfo') as "share_info",
json_extract_path_text(properties, '$.networkAccessPolicy') as "network_access_policy",
json_extract_path_text(properties, '$.diskAccessId') as "disk_access_id",
json_extract_path_text(properties, '$.burstingEnabledTime') as "bursting_enabled_time",
json_extract_path_text(properties, '$.tier') as "tier",
json_extract_path_text(properties, '$.burstingEnabled') as "bursting_enabled",
json_extract_path_text(properties, '$.propertyUpdatesInProgress') as "property_updates_in_progress",
json_extract_path_text(properties, '$.supportsHibernation') as "supports_hibernation",
json_extract_path_text(properties, '$.securityProfile') as "security_profile",
json_extract_path_text(properties, '$.completionPercent') as "completion_percent",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.dataAccessAuthMode') as "data_access_auth_mode",
json_extract_path_text(properties, '$.optimizedForFrequentAttach') as "optimized_for_frequent_attach",
json_extract_path_text(properties, '$.LastOwnershipUpdateTime') as "last_ownership_update_time",
subscriptionId,
resourceGroupName,
diskName
FROM azure.compute.disks
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
