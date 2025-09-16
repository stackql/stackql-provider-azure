--- 
title: vw_exports
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_exports
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

Creates, updates, deletes, gets or lists a <code>vw_exports</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_exports</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cost_management.vw_exports" /></td></tr>
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
eTag as e_tag,
identity as identity,
JSON_EXTRACT(properties, '$.format') as "format",
JSON_EXTRACT(properties, '$.deliveryInfo') as "delivery_info",
JSON_EXTRACT(properties, '$.definition') as "definition",
JSON_EXTRACT(properties, '$.runHistory') as "run_history",
JSON_EXTRACT(properties, '$.partitionData') as "partition_data",
JSON_EXTRACT(properties, '$.nextRunTimeEstimate') as "next_run_time_estimate",
JSON_EXTRACT(properties, '$.schedule') as "schedule",
scope,
exportName
FROM azure.cost_management.exports
WHERE scope = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
eTag as e_tag,
identity as identity,
json_extract_path_text(properties, '$.format') as "format",
json_extract_path_text(properties, '$.deliveryInfo') as "delivery_info",
json_extract_path_text(properties, '$.definition') as "definition",
json_extract_path_text(properties, '$.runHistory') as "run_history",
json_extract_path_text(properties, '$.partitionData') as "partition_data",
json_extract_path_text(properties, '$.nextRunTimeEstimate') as "next_run_time_estimate",
json_extract_path_text(properties, '$.schedule') as "schedule",
scope,
exportName
FROM azure.cost_management.exports
WHERE scope = 'replace-me';
```

</TabItem>
</Tabs>
