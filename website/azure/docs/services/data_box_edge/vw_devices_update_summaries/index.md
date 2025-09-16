--- 
title: vw_devices_update_summaries
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_devices_update_summaries
  - data_box_edge
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

Creates, updates, deletes, gets or lists a <code>vw_devices_update_summaries</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_devices_update_summaries</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_box_edge.vw_devices_update_summaries" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.deviceVersionNumber') as "device_version_number",
JSON_EXTRACT(properties, '$.friendlyDeviceVersionName') as "friendly_device_version_name",
JSON_EXTRACT(properties, '$.deviceLastScannedDateTime') as "device_last_scanned_date_time",
JSON_EXTRACT(properties, '$.lastCompletedScanJobDateTime') as "last_completed_scan_job_date_time",
JSON_EXTRACT(properties, '$.lastSuccessfulScanJobTime') as "last_successful_scan_job_time",
JSON_EXTRACT(properties, '$.lastCompletedDownloadJobDateTime') as "last_completed_download_job_date_time",
JSON_EXTRACT(properties, '$.lastCompletedDownloadJobId') as "last_completed_download_job_id",
JSON_EXTRACT(properties, '$.lastDownloadJobStatus') as "last_download_job_status",
JSON_EXTRACT(properties, '$.lastSuccessfulInstallJobDateTime') as "last_successful_install_job_date_time",
JSON_EXTRACT(properties, '$.lastCompletedInstallJobDateTime') as "last_completed_install_job_date_time",
JSON_EXTRACT(properties, '$.lastCompletedInstallJobId') as "last_completed_install_job_id",
JSON_EXTRACT(properties, '$.lastInstallJobStatus') as "last_install_job_status",
JSON_EXTRACT(properties, '$.totalNumberOfUpdatesAvailable') as "total_number_of_updates_available",
JSON_EXTRACT(properties, '$.totalNumberOfUpdatesPendingDownload') as "total_number_of_updates_pending_download",
JSON_EXTRACT(properties, '$.totalNumberOfUpdatesPendingInstall') as "total_number_of_updates_pending_install",
JSON_EXTRACT(properties, '$.rebootBehavior') as "reboot_behavior",
JSON_EXTRACT(properties, '$.ongoingUpdateOperation') as "ongoing_update_operation",
JSON_EXTRACT(properties, '$.inProgressDownloadJobId') as "in_progress_download_job_id",
JSON_EXTRACT(properties, '$.inProgressInstallJobId') as "in_progress_install_job_id",
JSON_EXTRACT(properties, '$.inProgressDownloadJobStartedDateTime') as "in_progress_download_job_started_date_time",
JSON_EXTRACT(properties, '$.inProgressInstallJobStartedDateTime') as "in_progress_install_job_started_date_time",
JSON_EXTRACT(properties, '$.updateTitles') as "update_titles",
JSON_EXTRACT(properties, '$.updates') as "updates",
JSON_EXTRACT(properties, '$.totalUpdateSizeInBytes') as "total_update_size_in_bytes",
JSON_EXTRACT(properties, '$.totalTimeInMinutes') as "total_time_in_minutes",
subscriptionId,
resourceGroupName,
deviceName
FROM azure.data_box_edge.devices_update_summaries
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND deviceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.deviceVersionNumber') as "device_version_number",
json_extract_path_text(properties, '$.friendlyDeviceVersionName') as "friendly_device_version_name",
json_extract_path_text(properties, '$.deviceLastScannedDateTime') as "device_last_scanned_date_time",
json_extract_path_text(properties, '$.lastCompletedScanJobDateTime') as "last_completed_scan_job_date_time",
json_extract_path_text(properties, '$.lastSuccessfulScanJobTime') as "last_successful_scan_job_time",
json_extract_path_text(properties, '$.lastCompletedDownloadJobDateTime') as "last_completed_download_job_date_time",
json_extract_path_text(properties, '$.lastCompletedDownloadJobId') as "last_completed_download_job_id",
json_extract_path_text(properties, '$.lastDownloadJobStatus') as "last_download_job_status",
json_extract_path_text(properties, '$.lastSuccessfulInstallJobDateTime') as "last_successful_install_job_date_time",
json_extract_path_text(properties, '$.lastCompletedInstallJobDateTime') as "last_completed_install_job_date_time",
json_extract_path_text(properties, '$.lastCompletedInstallJobId') as "last_completed_install_job_id",
json_extract_path_text(properties, '$.lastInstallJobStatus') as "last_install_job_status",
json_extract_path_text(properties, '$.totalNumberOfUpdatesAvailable') as "total_number_of_updates_available",
json_extract_path_text(properties, '$.totalNumberOfUpdatesPendingDownload') as "total_number_of_updates_pending_download",
json_extract_path_text(properties, '$.totalNumberOfUpdatesPendingInstall') as "total_number_of_updates_pending_install",
json_extract_path_text(properties, '$.rebootBehavior') as "reboot_behavior",
json_extract_path_text(properties, '$.ongoingUpdateOperation') as "ongoing_update_operation",
json_extract_path_text(properties, '$.inProgressDownloadJobId') as "in_progress_download_job_id",
json_extract_path_text(properties, '$.inProgressInstallJobId') as "in_progress_install_job_id",
json_extract_path_text(properties, '$.inProgressDownloadJobStartedDateTime') as "in_progress_download_job_started_date_time",
json_extract_path_text(properties, '$.inProgressInstallJobStartedDateTime') as "in_progress_install_job_started_date_time",
json_extract_path_text(properties, '$.updateTitles') as "update_titles",
json_extract_path_text(properties, '$.updates') as "updates",
json_extract_path_text(properties, '$.totalUpdateSizeInBytes') as "total_update_size_in_bytes",
json_extract_path_text(properties, '$.totalTimeInMinutes') as "total_time_in_minutes",
subscriptionId,
resourceGroupName,
deviceName
FROM azure.data_box_edge.devices_update_summaries
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND deviceName = 'replace-me';
```

</TabItem>
</Tabs>
