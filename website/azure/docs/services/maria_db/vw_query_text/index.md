--- 
title: vw_query_text
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_query_text
  - maria_db
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

Creates, updates, deletes, gets or lists a <code>vw_query_text</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_query_text</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.maria_db.vw_query_text" /></td></tr>
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
JSON_EXTRACT(properties, '$.queryId') as "query_id",
JSON_EXTRACT(properties, '$.queryText') as "query_text",
subscriptionId,
resourceGroupName,
serverName,
queryId,
queryIds
FROM azure.maria_db.query_text
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me' AND queryIds = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.queryId') as "query_id",
json_extract_path_text(properties, '$.queryText') as "query_text",
subscriptionId,
resourceGroupName,
serverName,
queryId,
queryIds
FROM azure.maria_db.query_text
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND serverName = 'replace-me' AND queryIds = 'replace-me';
```

</TabItem>
</Tabs>
