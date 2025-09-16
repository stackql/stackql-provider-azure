--- 
title: vw_volume_containers
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_volume_containers
  - storsimple_8000_series
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_volume_containers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_volume_containers</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.storsimple_8000_series.vw_volume_containers" /></td></tr>
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
kind as kind,
JSON_EXTRACT(properties, '$.encryptionKey') as "encryption_key",
JSON_EXTRACT(properties, '$.encryptionStatus') as "encryption_status",
JSON_EXTRACT(properties, '$.volumeCount') as "volume_count",
JSON_EXTRACT(properties, '$.storageAccountCredentialId') as "storage_account_credential_id",
JSON_EXTRACT(properties, '$.ownerShipStatus') as "owner_ship_status",
JSON_EXTRACT(properties, '$.bandWidthRateInMbps') as "band_width_rate_in_mbps",
JSON_EXTRACT(properties, '$.bandwidthSettingId') as "bandwidth_setting_id",
JSON_EXTRACT(properties, '$.totalCloudStorageUsageInBytes') as "total_cloud_storage_usage_in_bytes",
subscriptionId,
resourceGroupName,
managerName,
deviceName,
volumeContainerName
FROM azure_extras.storsimple_8000_series.volume_containers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managerName = 'replace-me' AND deviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
kind as kind,
json_extract_path_text(properties, '$.encryptionKey') as "encryption_key",
json_extract_path_text(properties, '$.encryptionStatus') as "encryption_status",
json_extract_path_text(properties, '$.volumeCount') as "volume_count",
json_extract_path_text(properties, '$.storageAccountCredentialId') as "storage_account_credential_id",
json_extract_path_text(properties, '$.ownerShipStatus') as "owner_ship_status",
json_extract_path_text(properties, '$.bandWidthRateInMbps') as "band_width_rate_in_mbps",
json_extract_path_text(properties, '$.bandwidthSettingId') as "bandwidth_setting_id",
json_extract_path_text(properties, '$.totalCloudStorageUsageInBytes') as "total_cloud_storage_usage_in_bytes",
subscriptionId,
resourceGroupName,
managerName,
deviceName,
volumeContainerName
FROM azure_extras.storsimple_8000_series.volume_containers
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managerName = 'replace-me' AND deviceName = 'replace-me';
```

</TabItem>
</Tabs>
