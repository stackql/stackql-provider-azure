--- 
title: vw_android_mam_policy_by_names
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_android_mam_policy_by_names
  - intune
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

Creates, updates, deletes, gets or lists a <code>vw_android_mam_policy_by_names</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_android_mam_policy_by_names</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.intune.vw_android_mam_policy_by_names" /></td></tr>
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
type as type,
tags as tags,
JSON_EXTRACT(properties, '$.friendlyName') as "friendly_name",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.appSharingFromLevel') as "app_sharing_from_level",
JSON_EXTRACT(properties, '$.appSharingToLevel') as "app_sharing_to_level",
JSON_EXTRACT(properties, '$.authentication') as "authentication",
JSON_EXTRACT(properties, '$.clipboardSharingLevel') as "clipboard_sharing_level",
JSON_EXTRACT(properties, '$.dataBackup') as "data_backup",
JSON_EXTRACT(properties, '$.fileSharingSaveAs') as "file_sharing_save_as",
JSON_EXTRACT(properties, '$.pin') as "pin",
JSON_EXTRACT(properties, '$.pinNumRetry') as "pin_num_retry",
JSON_EXTRACT(properties, '$.deviceCompliance') as "device_compliance",
JSON_EXTRACT(properties, '$.managedBrowser') as "managed_browser",
JSON_EXTRACT(properties, '$.accessRecheckOfflineTimeout') as "access_recheck_offline_timeout",
JSON_EXTRACT(properties, '$.accessRecheckOnlineTimeout') as "access_recheck_online_timeout",
JSON_EXTRACT(properties, '$.offlineWipeTimeout') as "offline_wipe_timeout",
JSON_EXTRACT(properties, '$.numOfApps') as "num_of_apps",
JSON_EXTRACT(properties, '$.groupStatus') as "group_status",
JSON_EXTRACT(properties, '$.lastModifiedTime') as "last_modified_time",
JSON_EXTRACT(properties, '$.screenCapture') as "screen_capture",
JSON_EXTRACT(properties, '$.fileEncryption') as "file_encryption",
hostName,
policyName
FROM azure_extras.intune.android_mam_policy_by_names
WHERE hostName = 'replace-me' AND policyName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
tags as tags,
json_extract_path_text(properties, '$.friendlyName') as "friendly_name",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.appSharingFromLevel') as "app_sharing_from_level",
json_extract_path_text(properties, '$.appSharingToLevel') as "app_sharing_to_level",
json_extract_path_text(properties, '$.authentication') as "authentication",
json_extract_path_text(properties, '$.clipboardSharingLevel') as "clipboard_sharing_level",
json_extract_path_text(properties, '$.dataBackup') as "data_backup",
json_extract_path_text(properties, '$.fileSharingSaveAs') as "file_sharing_save_as",
json_extract_path_text(properties, '$.pin') as "pin",
json_extract_path_text(properties, '$.pinNumRetry') as "pin_num_retry",
json_extract_path_text(properties, '$.deviceCompliance') as "device_compliance",
json_extract_path_text(properties, '$.managedBrowser') as "managed_browser",
json_extract_path_text(properties, '$.accessRecheckOfflineTimeout') as "access_recheck_offline_timeout",
json_extract_path_text(properties, '$.accessRecheckOnlineTimeout') as "access_recheck_online_timeout",
json_extract_path_text(properties, '$.offlineWipeTimeout') as "offline_wipe_timeout",
json_extract_path_text(properties, '$.numOfApps') as "num_of_apps",
json_extract_path_text(properties, '$.groupStatus') as "group_status",
json_extract_path_text(properties, '$.lastModifiedTime') as "last_modified_time",
json_extract_path_text(properties, '$.screenCapture') as "screen_capture",
json_extract_path_text(properties, '$.fileEncryption') as "file_encryption",
hostName,
policyName
FROM azure_extras.intune.android_mam_policy_by_names
WHERE hostName = 'replace-me' AND policyName = 'replace-me';
```

</TabItem>
</Tabs>
