--- 
title: vw_ltr_backup_operations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_ltr_backup_operations
  - postgresql
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

Creates, updates, deletes, gets or lists a <code>vw_ltr_backup_operations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_ltr_backup_operations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.postgresql.vw_ltr_backup_operations" /></td></tr>
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
JSON_EXTRACT(properties, '$.datasourceSizeInBytes') as "datasource_size_in_bytes",
JSON_EXTRACT(properties, '$.dataTransferredInBytes') as "data_transferred_in_bytes",
JSON_EXTRACT(properties, '$.backupName') as "backup_name",
JSON_EXTRACT(properties, '$.backupMetadata') as "backup_metadata",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.endTime') as "end_time",
JSON_EXTRACT(properties, '$.percentComplete') as "percent_complete",
JSON_EXTRACT(properties, '$.errorCode') as "error_code",
JSON_EXTRACT(properties, '$.errorMessage') as "error_message",
subscriptionId,
resourceGroupName,
serverName,
backupName
FROM azure.postgresql.ltr_backup_operations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.datasourceSizeInBytes') as "datasource_size_in_bytes",
json_extract_path_text(properties, '$.dataTransferredInBytes') as "data_transferred_in_bytes",
json_extract_path_text(properties, '$.backupName') as "backup_name",
json_extract_path_text(properties, '$.backupMetadata') as "backup_metadata",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.endTime') as "end_time",
json_extract_path_text(properties, '$.percentComplete') as "percent_complete",
json_extract_path_text(properties, '$.errorCode') as "error_code",
json_extract_path_text(properties, '$.errorMessage') as "error_message",
subscriptionId,
resourceGroupName,
serverName,
backupName
FROM azure.postgresql.ltr_backup_operations
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
</Tabs>
