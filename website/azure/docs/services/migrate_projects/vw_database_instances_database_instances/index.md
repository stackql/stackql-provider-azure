--- 
title: vw_database_instances_database_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_database_instances_database_instances
  - migrate_projects
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

Creates, updates, deletes, gets or lists a <code>vw_database_instances_database_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_database_instances_database_instances</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.migrate_projects.vw_database_instances_database_instances" /></td></tr>
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
JSON_EXTRACT(properties, '$.discoveryData') as "discovery_data",
JSON_EXTRACT(properties, '$.summary') as "summary",
JSON_EXTRACT(properties, '$.lastUpdatedTime') as "last_updated_time",
subscriptionId,
resourceGroupName,
migrateProjectName,
databaseInstanceName
FROM azure.migrate_projects.database_instances_database_instances
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND migrateProjectName = 'replace-me' AND databaseInstanceName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.discoveryData') as "discovery_data",
json_extract_path_text(properties, '$.summary') as "summary",
json_extract_path_text(properties, '$.lastUpdatedTime') as "last_updated_time",
subscriptionId,
resourceGroupName,
migrateProjectName,
databaseInstanceName
FROM azure.migrate_projects.database_instances_database_instances
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND migrateProjectName = 'replace-me' AND databaseInstanceName = 'replace-me';
```

</TabItem>
</Tabs>
