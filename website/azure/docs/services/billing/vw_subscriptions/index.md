--- 
title: vw_subscriptions
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_subscriptions
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

Creates, updates, deletes, gets or lists a <code>vw_subscriptions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_subscriptions</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.vw_subscriptions" /></td></tr>
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
JSON_EXTRACT(properties, '$.autoRenew') as "auto_renew",
JSON_EXTRACT(properties, '$.beneficiaryTenantId') as "beneficiary_tenant_id",
JSON_EXTRACT(properties, '$.beneficiary') as "beneficiary",
JSON_EXTRACT(properties, '$.billingFrequency') as "billing_frequency",
JSON_EXTRACT(properties, '$.billingProfileId') as "billing_profile_id",
JSON_EXTRACT(properties, '$.billingPolicies') as "billing_policies",
JSON_EXTRACT(properties, '$.billingProfileDisplayName') as "billing_profile_display_name",
JSON_EXTRACT(properties, '$.billingProfileName') as "billing_profile_name",
JSON_EXTRACT(properties, '$.consumptionCostCenter') as "consumption_cost_center",
JSON_EXTRACT(properties, '$.customerId') as "customer_id",
JSON_EXTRACT(properties, '$.customerDisplayName') as "customer_display_name",
JSON_EXTRACT(properties, '$.customerName') as "customer_name",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.enrollmentAccountId') as "enrollment_account_id",
JSON_EXTRACT(properties, '$.enrollmentAccountDisplayName') as "enrollment_account_display_name",
JSON_EXTRACT(properties, '$.enrollmentAccountSubscriptionDetails') as "enrollment_account_subscription_details",
JSON_EXTRACT(properties, '$.invoiceSectionId') as "invoice_section_id",
JSON_EXTRACT(properties, '$.invoiceSectionDisplayName') as "invoice_section_display_name",
JSON_EXTRACT(properties, '$.invoiceSectionName') as "invoice_section_name",
JSON_EXTRACT(properties, '$.lastMonthCharges') as "last_month_charges",
JSON_EXTRACT(properties, '$.monthToDateCharges') as "month_to_date_charges",
JSON_EXTRACT(properties, '$.nextBillingCycleDetails') as "next_billing_cycle_details",
JSON_EXTRACT(properties, '$.offerId') as "offer_id",
JSON_EXTRACT(properties, '$.productCategory') as "product_category",
JSON_EXTRACT(properties, '$.productType') as "product_type",
JSON_EXTRACT(properties, '$.productTypeId') as "product_type_id",
JSON_EXTRACT(properties, '$.purchaseDate') as "purchase_date",
JSON_EXTRACT(properties, '$.quantity') as "quantity",
JSON_EXTRACT(properties, '$.reseller') as "reseller",
JSON_EXTRACT(properties, '$.renewalTermDetails') as "renewal_term_details",
JSON_EXTRACT(properties, '$.skuId') as "sku_id",
JSON_EXTRACT(properties, '$.skuDescription') as "sku_description",
JSON_EXTRACT(properties, '$.systemOverrides') as "system_overrides",
JSON_EXTRACT(properties, '$.resourceUri') as "resource_uri",
JSON_EXTRACT(properties, '$.termDuration') as "term_duration",
JSON_EXTRACT(properties, '$.termStartDate') as "term_start_date",
JSON_EXTRACT(properties, '$.termEndDate') as "term_end_date",
JSON_EXTRACT(properties, '$.provisioningTenantId') as "provisioning_tenant_id",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.operationStatus') as "operation_status",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.subscriptionId') as "subscription_id",
JSON_EXTRACT(properties, '$.suspensionReasons') as "suspension_reasons",
JSON_EXTRACT(properties, '$.suspensionReasonDetails') as "suspension_reason_details",
billingAccountName,
billingProfileName,
billingSubscriptionName
FROM azure.billing.subscriptions
WHERE billingAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
tags as tags,
json_extract_path_text(properties, '$.autoRenew') as "auto_renew",
json_extract_path_text(properties, '$.beneficiaryTenantId') as "beneficiary_tenant_id",
json_extract_path_text(properties, '$.beneficiary') as "beneficiary",
json_extract_path_text(properties, '$.billingFrequency') as "billing_frequency",
json_extract_path_text(properties, '$.billingProfileId') as "billing_profile_id",
json_extract_path_text(properties, '$.billingPolicies') as "billing_policies",
json_extract_path_text(properties, '$.billingProfileDisplayName') as "billing_profile_display_name",
json_extract_path_text(properties, '$.billingProfileName') as "billing_profile_name",
json_extract_path_text(properties, '$.consumptionCostCenter') as "consumption_cost_center",
json_extract_path_text(properties, '$.customerId') as "customer_id",
json_extract_path_text(properties, '$.customerDisplayName') as "customer_display_name",
json_extract_path_text(properties, '$.customerName') as "customer_name",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.enrollmentAccountId') as "enrollment_account_id",
json_extract_path_text(properties, '$.enrollmentAccountDisplayName') as "enrollment_account_display_name",
json_extract_path_text(properties, '$.enrollmentAccountSubscriptionDetails') as "enrollment_account_subscription_details",
json_extract_path_text(properties, '$.invoiceSectionId') as "invoice_section_id",
json_extract_path_text(properties, '$.invoiceSectionDisplayName') as "invoice_section_display_name",
json_extract_path_text(properties, '$.invoiceSectionName') as "invoice_section_name",
json_extract_path_text(properties, '$.lastMonthCharges') as "last_month_charges",
json_extract_path_text(properties, '$.monthToDateCharges') as "month_to_date_charges",
json_extract_path_text(properties, '$.nextBillingCycleDetails') as "next_billing_cycle_details",
json_extract_path_text(properties, '$.offerId') as "offer_id",
json_extract_path_text(properties, '$.productCategory') as "product_category",
json_extract_path_text(properties, '$.productType') as "product_type",
json_extract_path_text(properties, '$.productTypeId') as "product_type_id",
json_extract_path_text(properties, '$.purchaseDate') as "purchase_date",
json_extract_path_text(properties, '$.quantity') as "quantity",
json_extract_path_text(properties, '$.reseller') as "reseller",
json_extract_path_text(properties, '$.renewalTermDetails') as "renewal_term_details",
json_extract_path_text(properties, '$.skuId') as "sku_id",
json_extract_path_text(properties, '$.skuDescription') as "sku_description",
json_extract_path_text(properties, '$.systemOverrides') as "system_overrides",
json_extract_path_text(properties, '$.resourceUri') as "resource_uri",
json_extract_path_text(properties, '$.termDuration') as "term_duration",
json_extract_path_text(properties, '$.termStartDate') as "term_start_date",
json_extract_path_text(properties, '$.termEndDate') as "term_end_date",
json_extract_path_text(properties, '$.provisioningTenantId') as "provisioning_tenant_id",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.operationStatus') as "operation_status",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.subscriptionId') as "subscription_id",
json_extract_path_text(properties, '$.suspensionReasons') as "suspension_reasons",
json_extract_path_text(properties, '$.suspensionReasonDetails') as "suspension_reason_details",
billingAccountName,
billingProfileName,
billingSubscriptionName
FROM azure.billing.subscriptions
WHERE billingAccountName = 'replace-me';
```

</TabItem>
</Tabs>
