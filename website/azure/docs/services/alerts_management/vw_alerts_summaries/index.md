--- 
title: vw_alerts_summaries
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_alerts_summaries
  - alerts_management
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

Creates, updates, deletes, gets or lists a <code>vw_alerts_summaries</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_alerts_summaries</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.alerts_management.vw_alerts_summaries" /></td></tr>
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
JSON_EXTRACT(properties, '$.total') as "total",
JSON_EXTRACT(properties, '$.smartGroupsCount') as "smart_groups_count",
JSON_EXTRACT(properties, '$.groupedby') as "groupedby",
JSON_EXTRACT(properties, '$.values') as "values",
scope,
groupby
FROM azure.alerts_management.alerts_summaries
WHERE scope = 'replace-me' AND groupby = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.total') as "total",
json_extract_path_text(properties, '$.smartGroupsCount') as "smart_groups_count",
json_extract_path_text(properties, '$.groupedby') as "groupedby",
json_extract_path_text(properties, '$.values') as "values",
scope,
groupby
FROM azure.alerts_management.alerts_summaries
WHERE scope = 'replace-me' AND groupby = 'replace-me';
```

</TabItem>
</Tabs>
