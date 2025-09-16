--- 
title: vw_mongo_user_definitions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_mongo_user_definitions
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

Creates, updates, deletes, gets or lists a <code>vw_mongo_user_definitions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_mongo_user_definitions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cosmos_db.vw_mongo_user_definitions" /></td></tr>
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
JSON_EXTRACT(properties, '$.userName') as "user_name",
JSON_EXTRACT(properties, '$.password') as "password",
JSON_EXTRACT(properties, '$.databaseName') as "database_name",
JSON_EXTRACT(properties, '$.customData') as "custom_data",
JSON_EXTRACT(properties, '$.roles') as "roles",
JSON_EXTRACT(properties, '$.mechanisms') as "mechanisms",
subscriptionId,
resourceGroupName,
accountName,
mongoUserDefinitionId
FROM azure.cosmos_db.mongo_user_definitions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.userName') as "user_name",
json_extract_path_text(properties, '$.password') as "password",
json_extract_path_text(properties, '$.databaseName') as "database_name",
json_extract_path_text(properties, '$.customData') as "custom_data",
json_extract_path_text(properties, '$.roles') as "roles",
json_extract_path_text(properties, '$.mechanisms') as "mechanisms",
subscriptionId,
resourceGroupName,
accountName,
mongoUserDefinitionId
FROM azure.cosmos_db.mongo_user_definitions
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
