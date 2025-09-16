--- 
title: vw_database_columns
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_database_columns
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

Creates, updates, deletes, gets or lists a <code>vw_database_columns</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_database_columns</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_database_columns" /></td></tr>
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
JSON_EXTRACT(properties, '$.columnType') as "column_type",
JSON_EXTRACT(properties, '$.temporalType') as "temporal_type",
JSON_EXTRACT(properties, '$.memoryOptimized') as "memory_optimized",
JSON_EXTRACT(properties, '$.isComputed') as "is_computed",
subscriptionId,
resourceGroupName,
serverName,
databaseName,
schemaName,
tableName,
columnName
FROM azure.sql.database_columns
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me' AND databaseName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.columnType') as "column_type",
json_extract_path_text(properties, '$.temporalType') as "temporal_type",
json_extract_path_text(properties, '$.memoryOptimized') as "memory_optimized",
json_extract_path_text(properties, '$.isComputed') as "is_computed",
subscriptionId,
resourceGroupName,
serverName,
databaseName,
schemaName,
tableName,
columnName
FROM azure.sql.database_columns
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me' AND databaseName = 'replace-me';
```

</TabItem>
</Tabs>
