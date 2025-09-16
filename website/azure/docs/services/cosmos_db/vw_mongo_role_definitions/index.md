--- 
title: vw_mongo_role_definitions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_mongo_role_definitions
  - cosmos_db
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

Creates, updates, deletes, gets or lists a <code>vw_mongo_role_definitions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_mongo_role_definitions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cosmos_db.vw_mongo_role_definitions" /></td></tr>
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
JSON_EXTRACT(properties, '$.roleName') as "role_name",
JSON_EXTRACT(properties, '$.type') as "type",
JSON_EXTRACT(properties, '$.databaseName') as "database_name",
JSON_EXTRACT(properties, '$.privileges') as "privileges",
JSON_EXTRACT(properties, '$.roles') as "roles",
subscriptionId,
resourceGroupName,
accountName,
mongoRoleDefinitionId
FROM azure.cosmos_db.mongo_role_definitions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.roleName') as "role_name",
json_extract_path_text(properties, '$.type') as "type",
json_extract_path_text(properties, '$.databaseName') as "database_name",
json_extract_path_text(properties, '$.privileges') as "privileges",
json_extract_path_text(properties, '$.roles') as "roles",
subscriptionId,
resourceGroupName,
accountName,
mongoRoleDefinitionId
FROM azure.cosmos_db.mongo_role_definitions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
