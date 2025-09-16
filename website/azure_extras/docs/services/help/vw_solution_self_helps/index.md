--- 
title: vw_solution_self_helps
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_solution_self_helps
  - help
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_solution_self_helps</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_solution_self_helps</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.help.vw_solution_self_helps" /></td></tr>
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
JSON_EXTRACT(properties, '$.solutionId') as "solution_id",
JSON_EXTRACT(properties, '$.title') as "title",
JSON_EXTRACT(properties, '$.content') as "content",
JSON_EXTRACT(properties, '$.replacementMaps') as "replacement_maps",
JSON_EXTRACT(properties, '$.sections') as "sections",
solutionId
FROM azure_extras.help.solution_self_helps
WHERE solutionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.solutionId') as "solution_id",
json_extract_path_text(properties, '$.title') as "title",
json_extract_path_text(properties, '$.content') as "content",
json_extract_path_text(properties, '$.replacementMaps') as "replacement_maps",
json_extract_path_text(properties, '$.sections') as "sections",
solutionId
FROM azure_extras.help.solution_self_helps
WHERE solutionId = 'replace-me';
```

</TabItem>
</Tabs>
