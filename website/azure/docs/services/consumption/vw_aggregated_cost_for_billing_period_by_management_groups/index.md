--- 
title: vw_aggregated_cost_for_billing_period_by_management_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_aggregated_cost_for_billing_period_by_management_groups
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

Creates, updates, deletes, gets or lists a <code>vw_aggregated_cost_for_billing_period_by_management_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_aggregated_cost_for_billing_period_by_management_groups</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.consumption.vw_aggregated_cost_for_billing_period_by_management_groups" /></td></tr>
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
JSON_EXTRACT(properties, '$.billingPeriodId') as "billing_period_id",
JSON_EXTRACT(properties, '$.usageStart') as "usage_start",
JSON_EXTRACT(properties, '$.usageEnd') as "usage_end",
JSON_EXTRACT(properties, '$.azureCharges') as "azure_charges",
JSON_EXTRACT(properties, '$.marketplaceCharges') as "marketplace_charges",
JSON_EXTRACT(properties, '$.chargesBilledSeparately') as "charges_billed_separately",
JSON_EXTRACT(properties, '$.currency') as "currency",
JSON_EXTRACT(properties, '$.children') as "children",
JSON_EXTRACT(properties, '$.includedSubscriptions') as "included_subscriptions",
JSON_EXTRACT(properties, '$.excludedSubscriptions') as "excluded_subscriptions",
managementGroupId,
billingPeriodName
FROM azure.consumption.aggregated_cost_for_billing_period_by_management_groups
WHERE managementGroupId = 'replace-me' AND billingPeriodName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.billingPeriodId') as "billing_period_id",
json_extract_path_text(properties, '$.usageStart') as "usage_start",
json_extract_path_text(properties, '$.usageEnd') as "usage_end",
json_extract_path_text(properties, '$.azureCharges') as "azure_charges",
json_extract_path_text(properties, '$.marketplaceCharges') as "marketplace_charges",
json_extract_path_text(properties, '$.chargesBilledSeparately') as "charges_billed_separately",
json_extract_path_text(properties, '$.currency') as "currency",
json_extract_path_text(properties, '$.children') as "children",
json_extract_path_text(properties, '$.includedSubscriptions') as "included_subscriptions",
json_extract_path_text(properties, '$.excludedSubscriptions') as "excluded_subscriptions",
managementGroupId,
billingPeriodName
FROM azure.consumption.aggregated_cost_for_billing_period_by_management_groups
WHERE managementGroupId = 'replace-me' AND billingPeriodName = 'replace-me';
```

</TabItem>
</Tabs>
