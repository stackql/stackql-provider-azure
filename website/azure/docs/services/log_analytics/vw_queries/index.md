--- 
title: vw_queries
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_queries
  - log_analytics
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

Creates, updates, deletes, gets or lists a <code>vw_queries</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_queries</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.log_analytics.vw_queries" /></td></tr>
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
systemData as system_data,
JSON_EXTRACT(properties, '$.id') as "id",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.timeCreated') as "time_created",
JSON_EXTRACT(properties, '$.timeModified') as "time_modified",
JSON_EXTRACT(properties, '$.author') as "author",
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.body') as "body",
JSON_EXTRACT(properties, '$.related') as "related",
JSON_EXTRACT(properties, '$.tags') as "tags",
JSON_EXTRACT(properties, '$.properties') as "properties",
subscriptionId,
resourceGroupName,
queryPackName,
id
FROM azure.log_analytics.queries
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND queryPackName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.id') as "id",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.timeCreated') as "time_created",
json_extract_path_text(properties, '$.timeModified') as "time_modified",
json_extract_path_text(properties, '$.author') as "author",
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.body') as "body",
json_extract_path_text(properties, '$.related') as "related",
json_extract_path_text(properties, '$.tags') as "tags",
json_extract_path_text(properties, '$.properties') as "properties",
subscriptionId,
resourceGroupName,
queryPackName,
id
FROM azure.log_analytics.queries
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND queryPackName = 'replace-me';
```

</TabItem>
</Tabs>
