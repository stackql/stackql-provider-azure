--- 
title: vw_mongodb_database_throughputs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_mongodb_database_throughputs
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

Creates, updates, deletes, gets or lists a <code>vw_mongodb_database_throughputs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_mongodb_database_throughputs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cosmos_db.vw_mongodb_database_throughputs" /></td></tr>
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
location as location,
type as type,
tags as tags,
identity as identity,
JSON_EXTRACT(properties, '$.resource') as "resource",
subscriptionId,
resourceGroupName,
accountName,
databaseName
FROM azure.cosmos_db.mongodb_database_throughputs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me' AND databaseName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
tags as tags,
identity as identity,
json_extract_path_text(properties, '$.resource') as "resource",
subscriptionId,
resourceGroupName,
accountName,
databaseName
FROM azure.cosmos_db.mongodb_database_throughputs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me' AND databaseName = 'replace-me';
```

</TabItem>
</Tabs>
