--- 
title: vw_disk_restore_points
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_disk_restore_points
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

Creates, updates, deletes, gets or lists a <code>vw_disk_restore_points</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_disk_restore_points</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.vw_disk_restore_points" /></td></tr>
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
type as type,
JSON_EXTRACT(properties, '$.timeCreated') as "time_created",
JSON_EXTRACT(properties, '$.sourceResourceId') as "source_resource_id",
JSON_EXTRACT(properties, '$.osType') as "os_type",
JSON_EXTRACT(properties, '$.hyperVGeneration') as "hyper_v_generation",
JSON_EXTRACT(properties, '$.purchasePlan') as "purchase_plan",
JSON_EXTRACT(properties, '$.supportedCapabilities') as "supported_capabilities",
JSON_EXTRACT(properties, '$.familyId') as "family_id",
JSON_EXTRACT(properties, '$.sourceUniqueId') as "source_unique_id",
JSON_EXTRACT(properties, '$.encryption') as "encryption",
JSON_EXTRACT(properties, '$.supportsHibernation') as "supports_hibernation",
JSON_EXTRACT(properties, '$.networkAccessPolicy') as "network_access_policy",
JSON_EXTRACT(properties, '$.publicNetworkAccess') as "public_network_access",
JSON_EXTRACT(properties, '$.diskAccessId') as "disk_access_id",
JSON_EXTRACT(properties, '$.completionPercent') as "completion_percent",
JSON_EXTRACT(properties, '$.replicationState') as "replication_state",
JSON_EXTRACT(properties, '$.sourceResourceLocation') as "source_resource_location",
JSON_EXTRACT(properties, '$.securityProfile') as "security_profile",
JSON_EXTRACT(properties, '$.logicalSectorSize') as "logical_sector_size",
subscriptionId,
resourceGroupName,
restorePointCollectionName,
vmRestorePointName,
diskRestorePointName
FROM azure.compute.disk_restore_points
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND restorePointCollectionName = 'replace-me' AND vmRestorePointName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.timeCreated') as "time_created",
json_extract_path_text(properties, '$.sourceResourceId') as "source_resource_id",
json_extract_path_text(properties, '$.osType') as "os_type",
json_extract_path_text(properties, '$.hyperVGeneration') as "hyper_v_generation",
json_extract_path_text(properties, '$.purchasePlan') as "purchase_plan",
json_extract_path_text(properties, '$.supportedCapabilities') as "supported_capabilities",
json_extract_path_text(properties, '$.familyId') as "family_id",
json_extract_path_text(properties, '$.sourceUniqueId') as "source_unique_id",
json_extract_path_text(properties, '$.encryption') as "encryption",
json_extract_path_text(properties, '$.supportsHibernation') as "supports_hibernation",
json_extract_path_text(properties, '$.networkAccessPolicy') as "network_access_policy",
json_extract_path_text(properties, '$.publicNetworkAccess') as "public_network_access",
json_extract_path_text(properties, '$.diskAccessId') as "disk_access_id",
json_extract_path_text(properties, '$.completionPercent') as "completion_percent",
json_extract_path_text(properties, '$.replicationState') as "replication_state",
json_extract_path_text(properties, '$.sourceResourceLocation') as "source_resource_location",
json_extract_path_text(properties, '$.securityProfile') as "security_profile",
json_extract_path_text(properties, '$.logicalSectorSize') as "logical_sector_size",
subscriptionId,
resourceGroupName,
restorePointCollectionName,
vmRestorePointName,
diskRestorePointName
FROM azure.compute.disk_restore_points
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND restorePointCollectionName = 'replace-me' AND vmRestorePointName = 'replace-me';
```

</TabItem>
</Tabs>
