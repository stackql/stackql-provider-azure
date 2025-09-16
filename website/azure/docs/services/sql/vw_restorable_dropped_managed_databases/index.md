--- 
title: vw_restorable_dropped_managed_databases
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_restorable_dropped_managed_databases
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

Creates, updates, deletes, gets or lists a <code>vw_restorable_dropped_managed_databases</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_restorable_dropped_managed_databases</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.vw_restorable_dropped_managed_databases" /></td></tr>
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
tags as tags,
JSON_EXTRACT(properties, '$.databaseName') as "database_name",
JSON_EXTRACT(properties, '$.creationDate') as "creation_date",
JSON_EXTRACT(properties, '$.deletionDate') as "deletion_date",
JSON_EXTRACT(properties, '$.earliestRestoreDate') as "earliest_restore_date",
subscriptionId,
resourceGroupName,
managedInstanceName,
restorableDroppedDatabaseId
FROM azure.sql.restorable_dropped_managed_databases
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managedInstanceName = 'replace-me' AND restorableDroppedDatabaseId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
tags as tags,
json_extract_path_text(properties, '$.databaseName') as "database_name",
json_extract_path_text(properties, '$.creationDate') as "creation_date",
json_extract_path_text(properties, '$.deletionDate') as "deletion_date",
json_extract_path_text(properties, '$.earliestRestoreDate') as "earliest_restore_date",
subscriptionId,
resourceGroupName,
managedInstanceName,
restorableDroppedDatabaseId
FROM azure.sql.restorable_dropped_managed_databases
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND managedInstanceName = 'replace-me' AND restorableDroppedDatabaseId = 'replace-me';
```

</TabItem>
</Tabs>
