--- 
title: vw_credits
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_credits
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

Creates, updates, deletes, gets or lists a <code>vw_credits</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_credits</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.consumption.vw_credits" /></td></tr>
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
JSON_EXTRACT(properties, '$.balanceSummary') as "balance_summary",
JSON_EXTRACT(properties, '$.pendingCreditAdjustments') as "pending_credit_adjustments",
JSON_EXTRACT(properties, '$.expiredCredit') as "expired_credit",
JSON_EXTRACT(properties, '$.pendingEligibleCharges') as "pending_eligible_charges",
JSON_EXTRACT(properties, '$.creditCurrency') as "credit_currency",
JSON_EXTRACT(properties, '$.billingCurrency') as "billing_currency",
JSON_EXTRACT(properties, '$.reseller') as "reseller",
JSON_EXTRACT(properties, '$.isEstimatedBalance') as "is_estimated_balance",
JSON_EXTRACT(properties, '$.eTag') as "e_tag",
billingAccountId,
billingProfileId
FROM azure.consumption.credits
WHERE billingAccountId = 'replace-me' AND billingProfileId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
json_extract_path_text(properties, '$.balanceSummary') as "balance_summary",
json_extract_path_text(properties, '$.pendingCreditAdjustments') as "pending_credit_adjustments",
json_extract_path_text(properties, '$.expiredCredit') as "expired_credit",
json_extract_path_text(properties, '$.pendingEligibleCharges') as "pending_eligible_charges",
json_extract_path_text(properties, '$.creditCurrency') as "credit_currency",
json_extract_path_text(properties, '$.billingCurrency') as "billing_currency",
json_extract_path_text(properties, '$.reseller') as "reseller",
json_extract_path_text(properties, '$.isEstimatedBalance') as "is_estimated_balance",
json_extract_path_text(properties, '$.eTag') as "e_tag",
billingAccountId,
billingProfileId
FROM azure.consumption.credits
WHERE billingAccountId = 'replace-me' AND billingProfileId = 'replace-me';
```

</TabItem>
</Tabs>
