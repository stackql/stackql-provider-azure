--- 
title: vw_savings_plans
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_savings_plans
  - billing
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

Creates, updates, deletes, gets or lists a <code>vw_savings_plans</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_savings_plans</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.vw_savings_plans" /></td></tr>
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
tags as tags,
sku as sku,
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.displayProvisioningState') as "display_provisioning_state",
JSON_EXTRACT(properties, '$.userFriendlyAppliedScopeType') as "user_friendly_applied_scope_type",
JSON_EXTRACT(properties, '$.billingScopeId') as "billing_scope_id",
JSON_EXTRACT(properties, '$.billingProfileId') as "billing_profile_id",
JSON_EXTRACT(properties, '$.customerId') as "customer_id",
JSON_EXTRACT(properties, '$.billingAccountId') as "billing_account_id",
JSON_EXTRACT(properties, '$.term') as "term",
JSON_EXTRACT(properties, '$.renew') as "renew",
JSON_EXTRACT(properties, '$.renewSource') as "renew_source",
JSON_EXTRACT(properties, '$.renewDestination') as "renew_destination",
JSON_EXTRACT(properties, '$.renewProperties') as "renew_properties",
JSON_EXTRACT(properties, '$.billingPlan') as "billing_plan",
JSON_EXTRACT(properties, '$.appliedScopeType') as "applied_scope_type",
JSON_EXTRACT(properties, '$.appliedScopeProperties') as "applied_scope_properties",
JSON_EXTRACT(properties, '$.commitment') as "commitment",
JSON_EXTRACT(properties, '$.effectiveDateTime') as "effective_date_time",
JSON_EXTRACT(properties, '$.benefitStartTime') as "benefit_start_time",
JSON_EXTRACT(properties, '$.expiryDateTime') as "expiry_date_time",
JSON_EXTRACT(properties, '$.purchaseDateTime') as "purchase_date_time",
JSON_EXTRACT(properties, '$.utilization') as "utilization",
JSON_EXTRACT(properties, '$.extendedStatusInfo') as "extended_status_info",
JSON_EXTRACT(properties, '$.productCode') as "product_code",
billingAccountName,
savingsPlanOrderId,
savingsPlanId
FROM azure.billing.savings_plans
WHERE billingAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
tags as tags,
sku as sku,
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.displayProvisioningState') as "display_provisioning_state",
json_extract_path_text(properties, '$.userFriendlyAppliedScopeType') as "user_friendly_applied_scope_type",
json_extract_path_text(properties, '$.billingScopeId') as "billing_scope_id",
json_extract_path_text(properties, '$.billingProfileId') as "billing_profile_id",
json_extract_path_text(properties, '$.customerId') as "customer_id",
json_extract_path_text(properties, '$.billingAccountId') as "billing_account_id",
json_extract_path_text(properties, '$.term') as "term",
json_extract_path_text(properties, '$.renew') as "renew",
json_extract_path_text(properties, '$.renewSource') as "renew_source",
json_extract_path_text(properties, '$.renewDestination') as "renew_destination",
json_extract_path_text(properties, '$.renewProperties') as "renew_properties",
json_extract_path_text(properties, '$.billingPlan') as "billing_plan",
json_extract_path_text(properties, '$.appliedScopeType') as "applied_scope_type",
json_extract_path_text(properties, '$.appliedScopeProperties') as "applied_scope_properties",
json_extract_path_text(properties, '$.commitment') as "commitment",
json_extract_path_text(properties, '$.effectiveDateTime') as "effective_date_time",
json_extract_path_text(properties, '$.benefitStartTime') as "benefit_start_time",
json_extract_path_text(properties, '$.expiryDateTime') as "expiry_date_time",
json_extract_path_text(properties, '$.purchaseDateTime') as "purchase_date_time",
json_extract_path_text(properties, '$.utilization') as "utilization",
json_extract_path_text(properties, '$.extendedStatusInfo') as "extended_status_info",
json_extract_path_text(properties, '$.productCode') as "product_code",
billingAccountName,
savingsPlanOrderId,
savingsPlanId
FROM azure.billing.savings_plans
WHERE billingAccountName = 'replace-me';
```

</TabItem>
</Tabs>
