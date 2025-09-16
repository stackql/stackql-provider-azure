--- 
title: vw_costs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_costs
  - dev_test_labs
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

Creates, updates, deletes, gets or lists a <code>vw_costs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_costs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_test_labs.vw_costs" /></td></tr>
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
tags as tags,
JSON_EXTRACT(properties, '$.targetCost') as "target_cost",
JSON_EXTRACT(properties, '$.labCostSummary') as "lab_cost_summary",
JSON_EXTRACT(properties, '$.labCostDetails') as "lab_cost_details",
JSON_EXTRACT(properties, '$.resourceCosts') as "resource_costs",
JSON_EXTRACT(properties, '$.currencyCode') as "currency_code",
JSON_EXTRACT(properties, '$.startDateTime') as "start_date_time",
JSON_EXTRACT(properties, '$.endDateTime') as "end_date_time",
JSON_EXTRACT(properties, '$.createdDate') as "created_date",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.uniqueIdentifier') as "unique_identifier",
subscriptionId,
resourceGroupName,
labName,
name
FROM azure.dev_test_labs.costs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND labName = 'replace-me' AND name = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
tags as tags,
json_extract_path_text(properties, '$.targetCost') as "target_cost",
json_extract_path_text(properties, '$.labCostSummary') as "lab_cost_summary",
json_extract_path_text(properties, '$.labCostDetails') as "lab_cost_details",
json_extract_path_text(properties, '$.resourceCosts') as "resource_costs",
json_extract_path_text(properties, '$.currencyCode') as "currency_code",
json_extract_path_text(properties, '$.startDateTime') as "start_date_time",
json_extract_path_text(properties, '$.endDateTime') as "end_date_time",
json_extract_path_text(properties, '$.createdDate') as "created_date",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.uniqueIdentifier') as "unique_identifier",
subscriptionId,
resourceGroupName,
labName,
name
FROM azure.dev_test_labs.costs
WHERE subscriptionId = 'replace-me' AND resourceGroupName = 'replace-me' AND labName = 'replace-me' AND name = 'replace-me';
```

</TabItem>
</Tabs>
