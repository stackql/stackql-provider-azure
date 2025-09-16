--- 
title: vw_test_results
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_test_results
  - test_base
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

Creates, updates, deletes, gets or lists a <code>vw_test_results</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_test_results</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.test_base.vw_test_results" /></td></tr>
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
JSON_EXTRACT(properties, '$.baselineTestResultId') as "baseline_test_result_id",
JSON_EXTRACT(properties, '$.packageId') as "package_id",
JSON_EXTRACT(properties, '$.applicationName') as "application_name",
JSON_EXTRACT(properties, '$.applicationVersion') as "application_version",
JSON_EXTRACT(properties, '$.osName') as "os_name",
JSON_EXTRACT(properties, '$.customImageId') as "custom_image_id",
JSON_EXTRACT(properties, '$.customImageDisplayName') as "custom_image_display_name",
JSON_EXTRACT(properties, '$.releaseName') as "release_name",
JSON_EXTRACT(properties, '$.releaseVersionDate') as "release_version_date",
JSON_EXTRACT(properties, '$.flightingRing') as "flighting_ring",
JSON_EXTRACT(properties, '$.buildVersion') as "build_version",
JSON_EXTRACT(properties, '$.buildRevision') as "build_revision",
JSON_EXTRACT(properties, '$.testType') as "test_type",
JSON_EXTRACT(properties, '$.testRunTime') as "test_run_time",
JSON_EXTRACT(properties, '$.isDownloadDataAvailable') as "is_download_data_available",
JSON_EXTRACT(properties, '$.isVideoAvailable') as "is_video_available",
JSON_EXTRACT(properties, '$.executionStatus') as "execution_status",
JSON_EXTRACT(properties, '$.testStatus') as "test_status",
JSON_EXTRACT(properties, '$.grade') as "grade",
JSON_EXTRACT(properties, '$.kbNumber') as "kb_number",
JSON_EXTRACT(properties, '$.interopMediaType') as "interop_media_type",
JSON_EXTRACT(properties, '$.interopMediaVersion') as "interop_media_version",
JSON_EXTRACT(properties, '$.packageVersion') as "package_version",
JSON_EXTRACT(properties, '$.analysisSummaries') as "analysis_summaries",
JSON_EXTRACT(properties, '$.inplaceUpgradeProperties') as "inplace_upgrade_properties",
JSON_EXTRACT(properties, '$.testStartTime') as "test_start_time",
JSON_EXTRACT(properties, '$.testEndTime') as "test_end_time",
JSON_EXTRACT(properties, '$.firstPartyApps') as "first_party_apps",
subscriptionId,
resourceGroupName,
testBaseAccountName,
packageName,
testResultName,
osUpdateType
FROM azure_extras.test_base.test_results
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND testBaseAccountName = 'replace-me' AND packageName = 'replace-me' AND osUpdateType = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.baselineTestResultId') as "baseline_test_result_id",
json_extract_path_text(properties, '$.packageId') as "package_id",
json_extract_path_text(properties, '$.applicationName') as "application_name",
json_extract_path_text(properties, '$.applicationVersion') as "application_version",
json_extract_path_text(properties, '$.osName') as "os_name",
json_extract_path_text(properties, '$.customImageId') as "custom_image_id",
json_extract_path_text(properties, '$.customImageDisplayName') as "custom_image_display_name",
json_extract_path_text(properties, '$.releaseName') as "release_name",
json_extract_path_text(properties, '$.releaseVersionDate') as "release_version_date",
json_extract_path_text(properties, '$.flightingRing') as "flighting_ring",
json_extract_path_text(properties, '$.buildVersion') as "build_version",
json_extract_path_text(properties, '$.buildRevision') as "build_revision",
json_extract_path_text(properties, '$.testType') as "test_type",
json_extract_path_text(properties, '$.testRunTime') as "test_run_time",
json_extract_path_text(properties, '$.isDownloadDataAvailable') as "is_download_data_available",
json_extract_path_text(properties, '$.isVideoAvailable') as "is_video_available",
json_extract_path_text(properties, '$.executionStatus') as "execution_status",
json_extract_path_text(properties, '$.testStatus') as "test_status",
json_extract_path_text(properties, '$.grade') as "grade",
json_extract_path_text(properties, '$.kbNumber') as "kb_number",
json_extract_path_text(properties, '$.interopMediaType') as "interop_media_type",
json_extract_path_text(properties, '$.interopMediaVersion') as "interop_media_version",
json_extract_path_text(properties, '$.packageVersion') as "package_version",
json_extract_path_text(properties, '$.analysisSummaries') as "analysis_summaries",
json_extract_path_text(properties, '$.inplaceUpgradeProperties') as "inplace_upgrade_properties",
json_extract_path_text(properties, '$.testStartTime') as "test_start_time",
json_extract_path_text(properties, '$.testEndTime') as "test_end_time",
json_extract_path_text(properties, '$.firstPartyApps') as "first_party_apps",
subscriptionId,
resourceGroupName,
testBaseAccountName,
packageName,
testResultName,
osUpdateType
FROM azure_extras.test_base.test_results
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND testBaseAccountName = 'replace-me' AND packageName = 'replace-me' AND osUpdateType = 'replace-me';
```

</TabItem>
</Tabs>
