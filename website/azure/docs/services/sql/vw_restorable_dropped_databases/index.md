--- 
title: vw_restorable_dropped_databases
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_restorable_dropped_databases
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

Creates, updates, deletes, gets or lists a <code>vw_restorable_dropped_databases</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_restorable_dropped_databases</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_restorable_dropped_databases" /></td></tr>
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
sku as sku,
tags as tags,
JSON_EXTRACT(properties, '$.databaseName') as "database_name",
JSON_EXTRACT(properties, '$.maxSizeBytes') as "max_size_bytes",
JSON_EXTRACT(properties, '$.creationDate') as "creation_date",
JSON_EXTRACT(properties, '$.deletionDate') as "deletion_date",
JSON_EXTRACT(properties, '$.earliestRestoreDate') as "earliest_restore_date",
JSON_EXTRACT(properties, '$.backupStorageRedundancy') as "backup_storage_redundancy",
JSON_EXTRACT(properties, '$.keys') as "keys",
subscriptionId,
resourceGroupName,
serverName,
restorableDroppedDatabaseId
FROM azure.sql.restorable_dropped_databases
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
sku as sku,
tags as tags,
json_extract_path_text(properties, '$.databaseName') as "database_name",
json_extract_path_text(properties, '$.maxSizeBytes') as "max_size_bytes",
json_extract_path_text(properties, '$.creationDate') as "creation_date",
json_extract_path_text(properties, '$.deletionDate') as "deletion_date",
json_extract_path_text(properties, '$.earliestRestoreDate') as "earliest_restore_date",
json_extract_path_text(properties, '$.backupStorageRedundancy') as "backup_storage_redundancy",
json_extract_path_text(properties, '$.keys') as "keys",
subscriptionId,
resourceGroupName,
serverName,
restorableDroppedDatabaseId
FROM azure.sql.restorable_dropped_databases
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me';
```

</TabItem>
</Tabs>
