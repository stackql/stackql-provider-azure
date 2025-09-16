--- 
title: vw_budgets
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_budgets
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

Creates, updates, deletes, gets or lists a <code>vw_budgets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_budgets</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cost_management.vw_budgets" /></td></tr>
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
JSON_EXTRACT(properties, '$.category') as "category",
JSON_EXTRACT(properties, '$.amount') as "amount",
JSON_EXTRACT(properties, '$.timeGrain') as "time_grain",
JSON_EXTRACT(properties, '$.timePeriod') as "time_period",
JSON_EXTRACT(properties, '$.filter') as "filter",
JSON_EXTRACT(properties, '$.currentSpend') as "current_spend",
JSON_EXTRACT(properties, '$.notifications') as "notifications",
JSON_EXTRACT(properties, '$.forecastSpend') as "forecast_spend",
scope,
budgetName
FROM azure.cost_management.budgets
WHERE scope = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
eTag as e_tag,
json_extract_path_text(properties, '$.category') as "category",
json_extract_path_text(properties, '$.amount') as "amount",
json_extract_path_text(properties, '$.timeGrain') as "time_grain",
json_extract_path_text(properties, '$.timePeriod') as "time_period",
json_extract_path_text(properties, '$.filter') as "filter",
json_extract_path_text(properties, '$.currentSpend') as "current_spend",
json_extract_path_text(properties, '$.notifications') as "notifications",
json_extract_path_text(properties, '$.forecastSpend') as "forecast_spend",
scope,
budgetName
FROM azure.cost_management.budgets
WHERE scope = 'replace-me';
```

</TabItem>
</Tabs>
