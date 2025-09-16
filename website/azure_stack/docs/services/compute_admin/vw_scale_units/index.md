--- 
title: vw_scale_units
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_scale_units
  - compute_admin
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>vw_scale_units</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_scale_units</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.compute_admin.vw_scale_units" /></td></tr>
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
JSON_EXTRACT(properties, '$.scaleUnitName') as "scale_unit_name",
JSON_EXTRACT(properties, '$.lastUpdatedTime') as "last_updated_time",
JSON_EXTRACT(properties, '$.nodes') as "nodes",
subscriptionId,
location,
scaleUnitName
FROM azure_stack.compute_admin.scale_units
WHERE subscriptionId = 'replace-me' AND location = 'replace-me' AND scaleUnitName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.scaleUnitName') as "scale_unit_name",
json_extract_path_text(properties, '$.lastUpdatedTime') as "last_updated_time",
json_extract_path_text(properties, '$.nodes') as "nodes",
subscriptionId,
location,
scaleUnitName
FROM azure_stack.compute_admin.scale_units
WHERE subscriptionId = 'replace-me' AND location = 'replace-me' AND scaleUnitName = 'replace-me';
```

</TabItem>
</Tabs>
