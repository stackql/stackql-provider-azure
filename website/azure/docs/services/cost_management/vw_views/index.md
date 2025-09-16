--- 
title: vw_views
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_views
  - cost_management
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

Creates, updates, deletes, gets or lists a <code>vw_views</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_views</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cost_management.vw_views" /></td></tr>
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
eTag as e_tag,
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.scope') as "scope",
JSON_EXTRACT(properties, '$.createdOn') as "created_on",
JSON_EXTRACT(properties, '$.modifiedOn') as "modified_on",
JSON_EXTRACT(properties, '$.dateRange') as "date_range",
JSON_EXTRACT(properties, '$.currency') as "currency",
JSON_EXTRACT(properties, '$.query') as "query",
JSON_EXTRACT(properties, '$.chart') as "chart",
JSON_EXTRACT(properties, '$.accumulated') as "accumulated",
JSON_EXTRACT(properties, '$.metric') as "metric",
JSON_EXTRACT(properties, '$.kpis') as "kpis",
JSON_EXTRACT(properties, '$.pivots') as "pivots",
scope,
viewName
FROM azure.cost_management.views
WHERE scope = 'replace-me' AND viewName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
eTag as e_tag,
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.scope') as "scope",
json_extract_path_text(properties, '$.createdOn') as "created_on",
json_extract_path_text(properties, '$.modifiedOn') as "modified_on",
json_extract_path_text(properties, '$.dateRange') as "date_range",
json_extract_path_text(properties, '$.currency') as "currency",
json_extract_path_text(properties, '$.query') as "query",
json_extract_path_text(properties, '$.chart') as "chart",
json_extract_path_text(properties, '$.accumulated') as "accumulated",
json_extract_path_text(properties, '$.metric') as "metric",
json_extract_path_text(properties, '$.kpis') as "kpis",
json_extract_path_text(properties, '$.pivots') as "pivots",
scope,
viewName
FROM azure.cost_management.views
WHERE scope = 'replace-me' AND viewName = 'replace-me';
```

</TabItem>
</Tabs>
