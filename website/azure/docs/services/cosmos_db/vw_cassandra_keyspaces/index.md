--- 
title: vw_cassandra_keyspaces
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_cassandra_keyspaces
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

Creates, updates, deletes, gets or lists a <code>vw_cassandra_keyspaces</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_cassandra_keyspaces</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cosmos_db.vw_cassandra_keyspaces" /></td></tr>
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
JSON_EXTRACT(properties, '$.options') as "options",
subscriptionId,
resourceGroupName,
accountName,
keyspaceName
FROM azure.cosmos_db.cassandra_keyspaces
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
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
json_extract_path_text(properties, '$.options') as "options",
subscriptionId,
resourceGroupName,
accountName,
keyspaceName
FROM azure.cosmos_db.cassandra_keyspaces
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND accountName = 'replace-me';
```

</TabItem>
</Tabs>
