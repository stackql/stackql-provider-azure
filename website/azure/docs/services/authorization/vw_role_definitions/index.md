--- 
title: vw_role_definitions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_role_definitions
  - authorization
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

Creates, updates, deletes, gets or lists a <code>vw_role_definitions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_role_definitions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.authorization.vw_role_definitions" /></td></tr>
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
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.type') as "type",
JSON_EXTRACT(properties, '$.permissions') as "permissions",
JSON_EXTRACT(properties, '$.assignableScopes') as "assignable_scopes",
JSON_EXTRACT(properties, '$.createdOn') as "created_on",
JSON_EXTRACT(properties, '$.updatedOn') as "updated_on",
JSON_EXTRACT(properties, '$.createdBy') as "created_by",
JSON_EXTRACT(properties, '$.updatedBy') as "updated_by",
scope,
roleDefinitionId
FROM azure.authorization.role_definitions
WHERE scope = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.roleName') as "role_name",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.type') as "type",
json_extract_path_text(properties, '$.permissions') as "permissions",
json_extract_path_text(properties, '$.assignableScopes') as "assignable_scopes",
json_extract_path_text(properties, '$.createdOn') as "created_on",
json_extract_path_text(properties, '$.updatedOn') as "updated_on",
json_extract_path_text(properties, '$.createdBy') as "created_by",
json_extract_path_text(properties, '$.updatedBy') as "updated_by",
scope,
roleDefinitionId
FROM azure.authorization.role_definitions
WHERE scope = 'replace-me';
```

</TabItem>
</Tabs>
