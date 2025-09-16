--- 
title: vw_managed_database_restore_details
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_managed_database_restore_details
  - sql
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

Creates, updates, deletes, gets or lists a <code>vw_managed_database_restore_details</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_managed_database_restore_details</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_managed_database_restore_details" /></td></tr>
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
JSON_EXTRACT(properties, '$.type') as "type",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.blockReason') as "block_reason",
JSON_EXTRACT(properties, '$.lastUploadedFileName') as "last_uploaded_file_name",
JSON_EXTRACT(properties, '$.lastUploadedFileTime') as "last_uploaded_file_time",
JSON_EXTRACT(properties, '$.lastRestoredFileName') as "last_restored_file_name",
JSON_EXTRACT(properties, '$.lastRestoredFileTime') as "last_restored_file_time",
JSON_EXTRACT(properties, '$.percentCompleted') as "percent_completed",
JSON_EXTRACT(properties, '$.currentRestoredSizeMB') as "current_restored_size_mb",
JSON_EXTRACT(properties, '$.currentRestorePlanSizeMB') as "current_restore_plan_size_mb",
JSON_EXTRACT(properties, '$.currentBackupType') as "current_backup_type",
JSON_EXTRACT(properties, '$.currentRestoringFileName') as "current_restoring_file_name",
JSON_EXTRACT(properties, '$.numberOfFilesDetected') as "number_of_files_detected",
JSON_EXTRACT(properties, '$.numberOfFilesQueued') as "number_of_files_queued",
JSON_EXTRACT(properties, '$.numberOfFilesSkipped') as "number_of_files_skipped",
JSON_EXTRACT(properties, '$.numberOfFilesRestoring') as "number_of_files_restoring",
JSON_EXTRACT(properties, '$.numberOfFilesRestored') as "number_of_files_restored",
JSON_EXTRACT(properties, '$.numberOfFilesUnrestorable') as "number_of_files_unrestorable",
JSON_EXTRACT(properties, '$.fullBackupSets') as "full_backup_sets",
JSON_EXTRACT(properties, '$.diffBackupSets') as "diff_backup_sets",
JSON_EXTRACT(properties, '$.logBackupSets') as "log_backup_sets",
JSON_EXTRACT(properties, '$.unrestorableFiles') as "unrestorable_files",
subscriptionId,
resourceGroupName,
managedInstanceName,
databaseName,
restoreDetailsName
FROM azure.sql.managed_database_restore_details
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managedInstanceName = 'replace-me' AND databaseName = 'replace-me' AND restoreDetailsName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.type') as "type",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.blockReason') as "block_reason",
json_extract_path_text(properties, '$.lastUploadedFileName') as "last_uploaded_file_name",
json_extract_path_text(properties, '$.lastUploadedFileTime') as "last_uploaded_file_time",
json_extract_path_text(properties, '$.lastRestoredFileName') as "last_restored_file_name",
json_extract_path_text(properties, '$.lastRestoredFileTime') as "last_restored_file_time",
json_extract_path_text(properties, '$.percentCompleted') as "percent_completed",
json_extract_path_text(properties, '$.currentRestoredSizeMB') as "current_restored_size_mb",
json_extract_path_text(properties, '$.currentRestorePlanSizeMB') as "current_restore_plan_size_mb",
json_extract_path_text(properties, '$.currentBackupType') as "current_backup_type",
json_extract_path_text(properties, '$.currentRestoringFileName') as "current_restoring_file_name",
json_extract_path_text(properties, '$.numberOfFilesDetected') as "number_of_files_detected",
json_extract_path_text(properties, '$.numberOfFilesQueued') as "number_of_files_queued",
json_extract_path_text(properties, '$.numberOfFilesSkipped') as "number_of_files_skipped",
json_extract_path_text(properties, '$.numberOfFilesRestoring') as "number_of_files_restoring",
json_extract_path_text(properties, '$.numberOfFilesRestored') as "number_of_files_restored",
json_extract_path_text(properties, '$.numberOfFilesUnrestorable') as "number_of_files_unrestorable",
json_extract_path_text(properties, '$.fullBackupSets') as "full_backup_sets",
json_extract_path_text(properties, '$.diffBackupSets') as "diff_backup_sets",
json_extract_path_text(properties, '$.logBackupSets') as "log_backup_sets",
json_extract_path_text(properties, '$.unrestorableFiles') as "unrestorable_files",
subscriptionId,
resourceGroupName,
managedInstanceName,
databaseName,
restoreDetailsName
FROM azure.sql.managed_database_restore_details
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managedInstanceName = 'replace-me' AND databaseName = 'replace-me' AND restoreDetailsName = 'replace-me';
```

</TabItem>
</Tabs>
