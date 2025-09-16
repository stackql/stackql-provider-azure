--- 
title: vw_balances_for_billing_period_by_billing_accounts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_balances_for_billing_period_by_billing_accounts
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

Creates, updates, deletes, gets or lists a <code>vw_balances_for_billing_period_by_billing_accounts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_balances_for_billing_period_by_billing_accounts</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.consumption.vw_balances_for_billing_period_by_billing_accounts" /></td></tr>
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
JSON_EXTRACT(properties, '$.currency') as "currency",
JSON_EXTRACT(properties, '$.beginningBalance') as "beginning_balance",
JSON_EXTRACT(properties, '$.endingBalance') as "ending_balance",
JSON_EXTRACT(properties, '$.newPurchases') as "new_purchases",
JSON_EXTRACT(properties, '$.adjustments') as "adjustments",
JSON_EXTRACT(properties, '$.utilized') as "utilized",
JSON_EXTRACT(properties, '$.serviceOverage') as "service_overage",
JSON_EXTRACT(properties, '$.chargesBilledSeparately') as "charges_billed_separately",
JSON_EXTRACT(properties, '$.totalOverage') as "total_overage",
JSON_EXTRACT(properties, '$.totalUsage') as "total_usage",
JSON_EXTRACT(properties, '$.azureMarketplaceServiceCharges') as "azure_marketplace_service_charges",
JSON_EXTRACT(properties, '$.billingFrequency') as "billing_frequency",
JSON_EXTRACT(properties, '$.priceHidden') as "price_hidden",
JSON_EXTRACT(properties, '$.overageRefund') as "overage_refund",
JSON_EXTRACT(properties, '$.newPurchasesDetails') as "new_purchases_details",
JSON_EXTRACT(properties, '$.adjustmentDetails') as "adjustment_details",
billingAccountId,
billingPeriodName
FROM azure.consumption.balances_for_billing_period_by_billing_accounts
WHERE billingAccountId = 'replace-me' AND billingPeriodName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
json_extract_path_text(properties, '$.currency') as "currency",
json_extract_path_text(properties, '$.beginningBalance') as "beginning_balance",
json_extract_path_text(properties, '$.endingBalance') as "ending_balance",
json_extract_path_text(properties, '$.newPurchases') as "new_purchases",
json_extract_path_text(properties, '$.adjustments') as "adjustments",
json_extract_path_text(properties, '$.utilized') as "utilized",
json_extract_path_text(properties, '$.serviceOverage') as "service_overage",
json_extract_path_text(properties, '$.chargesBilledSeparately') as "charges_billed_separately",
json_extract_path_text(properties, '$.totalOverage') as "total_overage",
json_extract_path_text(properties, '$.totalUsage') as "total_usage",
json_extract_path_text(properties, '$.azureMarketplaceServiceCharges') as "azure_marketplace_service_charges",
json_extract_path_text(properties, '$.billingFrequency') as "billing_frequency",
json_extract_path_text(properties, '$.priceHidden') as "price_hidden",
json_extract_path_text(properties, '$.overageRefund') as "overage_refund",
json_extract_path_text(properties, '$.newPurchasesDetails') as "new_purchases_details",
json_extract_path_text(properties, '$.adjustmentDetails') as "adjustment_details",
billingAccountId,
billingPeriodName
FROM azure.consumption.balances_for_billing_period_by_billing_accounts
WHERE billingAccountId = 'replace-me' AND billingPeriodName = 'replace-me';
```

</TabItem>
</Tabs>
