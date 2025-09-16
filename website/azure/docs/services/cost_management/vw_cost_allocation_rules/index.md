--- 
title: vw_cost_allocation_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_cost_allocation_rules
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

Creates, updates, deletes, gets or lists a <code>vw_cost_allocation_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_cost_allocation_rules</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cost_management.vw_cost_allocation_rules" /></td></tr>
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
JSON_EXTRACT(properties, '$.description') as "description",
JSON_EXTRACT(properties, '$.details') as "details",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.createdDate') as "created_date",
JSON_EXTRACT(properties, '$.updatedDate') as "updated_date",
billingAccountId,
ruleName
FROM azure.cost_management.cost_allocation_rules
WHERE billingAccountId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.description') as "description",
json_extract_path_text(properties, '$.details') as "details",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.createdDate') as "created_date",
json_extract_path_text(properties, '$.updatedDate') as "updated_date",
billingAccountId,
ruleName
FROM azure.cost_management.cost_allocation_rules
WHERE billingAccountId = 'replace-me';
```

</TabItem>
</Tabs>
