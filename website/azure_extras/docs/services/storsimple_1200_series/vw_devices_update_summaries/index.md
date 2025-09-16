--- 
title: vw_devices_update_summaries
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_devices_update_summaries
  - storsimple_1200_series
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

Creates, updates, deletes, gets or lists a <code>vw_devices_update_summaries</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_devices_update_summaries</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.storsimple_1200_series.vw_devices_update_summaries" /></td></tr>
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
JSON_EXTRACT(properties, '$.deviceVersion') as "device_version",
JSON_EXTRACT(properties, '$.deviceLastScannedTime') as "device_last_scanned_time",
JSON_EXTRACT(properties, '$.regularUpdatesAvailable') as "regular_updates_available",
JSON_EXTRACT(properties, '$.rebootRequiredForInstall') as "reboot_required_for_install",
JSON_EXTRACT(properties, '$.totalItemsPendingForDownload') as "total_items_pending_for_download",
JSON_EXTRACT(properties, '$.totalItemsPendingForInstall') as "total_items_pending_for_install",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.lastCompletedScanTime') as "last_completed_scan_time",
JSON_EXTRACT(properties, '$.lastCompletedDownloadJobTime') as "last_completed_download_job_time",
JSON_EXTRACT(properties, '$.lastCompletedInstallJobTime') as "last_completed_install_job_time",
JSON_EXTRACT(properties, '$.inProgressDownloadJobId') as "in_progress_download_job_id",
JSON_EXTRACT(properties, '$.inProgressInstallJobId') as "in_progress_install_job_id",
JSON_EXTRACT(properties, '$.inProgressScanStartedTime') as "in_progress_scan_started_time",
JSON_EXTRACT(properties, '$.inProgressDownloadJobStartedTime') as "in_progress_download_job_started_time",
JSON_EXTRACT(properties, '$.inProgressInstallJobStartedTime') as "in_progress_install_job_started_time",
subscriptionId,
resourceGroupName,
managerName,
deviceName
FROM azure_extras.storsimple_1200_series.devices_update_summaries
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managerName = 'replace-me' AND deviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.deviceVersion') as "device_version",
json_extract_path_text(properties, '$.deviceLastScannedTime') as "device_last_scanned_time",
json_extract_path_text(properties, '$.regularUpdatesAvailable') as "regular_updates_available",
json_extract_path_text(properties, '$.rebootRequiredForInstall') as "reboot_required_for_install",
json_extract_path_text(properties, '$.totalItemsPendingForDownload') as "total_items_pending_for_download",
json_extract_path_text(properties, '$.totalItemsPendingForInstall') as "total_items_pending_for_install",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.lastCompletedScanTime') as "last_completed_scan_time",
json_extract_path_text(properties, '$.lastCompletedDownloadJobTime') as "last_completed_download_job_time",
json_extract_path_text(properties, '$.lastCompletedInstallJobTime') as "last_completed_install_job_time",
json_extract_path_text(properties, '$.inProgressDownloadJobId') as "in_progress_download_job_id",
json_extract_path_text(properties, '$.inProgressInstallJobId') as "in_progress_install_job_id",
json_extract_path_text(properties, '$.inProgressScanStartedTime') as "in_progress_scan_started_time",
json_extract_path_text(properties, '$.inProgressDownloadJobStartedTime') as "in_progress_download_job_started_time",
json_extract_path_text(properties, '$.inProgressInstallJobStartedTime') as "in_progress_install_job_started_time",
subscriptionId,
resourceGroupName,
managerName,
deviceName
FROM azure_extras.storsimple_1200_series.devices_update_summaries
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managerName = 'replace-me' AND deviceName = 'replace-me';
```

</TabItem>
</Tabs>
