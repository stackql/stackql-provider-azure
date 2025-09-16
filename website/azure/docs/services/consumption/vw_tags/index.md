--- 
title: vw_tags
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_tags
  - consumption
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

Creates, updates, deletes, gets or lists a <code>vw_tags</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_tags</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.consumption.vw_tags" /></td></tr>
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
JSON_EXTRACT(properties, '$.tags') as "tags",
JSON_EXTRACT(properties, '$.nextLink') as "next_link",
JSON_EXTRACT(properties, '$.previousLink') as "previous_link",
scope
FROM azure.consumption.tags
WHERE scope = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.tags') as "tags",
json_extract_path_text(properties, '$.nextLink') as "next_link",
json_extract_path_text(properties, '$.previousLink') as "previous_link",
scope
FROM azure.consumption.tags
WHERE scope = 'replace-me';
```

</TabItem>
</Tabs>
