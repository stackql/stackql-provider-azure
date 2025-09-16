--- 
title: vw_sql_role_definitions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_sql_role_definitions
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

Creates, updates, deletes, gets or lists a <code>vw_sql_role_definitions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_sql_role_definitions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cosmos_db.vw_sql_role_definitions" /></td></tr>
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
JSON_EXTRACT(properties, '$.assignableScopes') as "assignable_scopes",
JSON_EXTRACT(properties, '$.permissions') as "permissions",
subscriptionId,
resourceGroupName,
accountName,
roleDefinitionId
FROM azure.cosmos_db.sql_role_definitions
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
json_extract_path_text(properties, '$.assignableScopes') as "assignable_scopes",
json_extract_path_text(properties, '$.permissions') as "permissions",
subscriptionId,
resourceGroupName,
accountName,
roleDefinitionId
FROM azure.cosmos_db.sql_role_definitions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
