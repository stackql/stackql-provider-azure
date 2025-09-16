--- 
title: vw_graph_queries
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_graph_queries
  - resource_graph
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

Creates, updates, deletes, gets or lists a <code>vw_graph_queries</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_graph_queries</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.resource_graph.vw_graph_queries" /></td></tr>
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
etag as etag,
tags as tags,
JSON_EXTRACT(properties, '$.timeModified') as "time_modified",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.query') as "query",
JSON_EXTRACT(properties, '$.resultKind') as "result_kind",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.resource_graph.graph_queries
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
etag as etag,
tags as tags,
json_extract_path_text(properties, '$.timeModified') as "time_modified",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.query') as "query",
json_extract_path_text(properties, '$.resultKind') as "result_kind",
subscriptionId,
resourceGroupName,
resourceName
FROM azure.resource_graph.graph_queries
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
