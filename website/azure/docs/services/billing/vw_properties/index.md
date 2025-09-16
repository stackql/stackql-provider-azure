--- 
title: vw_properties
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_properties
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

Creates, updates, deletes, gets or lists a <code>vw_properties</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_properties</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.vw_properties" /></td></tr>
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
JSON_EXTRACT(properties, '$.billingAccountAgreementType') as "billing_account_agreement_type",
JSON_EXTRACT(properties, '$.billingAccountDisplayName') as "billing_account_display_name",
JSON_EXTRACT(properties, '$.billingAccountId') as "billing_account_id",
JSON_EXTRACT(properties, '$.accountAdminNotificationEmailAddress') as "account_admin_notification_email_address",
JSON_EXTRACT(properties, '$.billingAccountSoldToCountry') as "billing_account_sold_to_country",
JSON_EXTRACT(properties, '$.billingAccountStatus') as "billing_account_status",
JSON_EXTRACT(properties, '$.billingAccountStatusReasonCode') as "billing_account_status_reason_code",
JSON_EXTRACT(properties, '$.billingAccountType') as "billing_account_type",
JSON_EXTRACT(properties, '$.billingAccountSubType') as "billing_account_sub_type",
JSON_EXTRACT(properties, '$.billingCurrency') as "billing_currency",
JSON_EXTRACT(properties, '$.billingProfileDisplayName') as "billing_profile_display_name",
JSON_EXTRACT(properties, '$.billingProfileId') as "billing_profile_id",
JSON_EXTRACT(properties, '$.billingProfileSpendingLimit') as "billing_profile_spending_limit",
JSON_EXTRACT(properties, '$.billingProfileSpendingLimitDetails') as "billing_profile_spending_limit_details",
JSON_EXTRACT(properties, '$.billingProfileStatus') as "billing_profile_status",
JSON_EXTRACT(properties, '$.billingProfileStatusReasonCode') as "billing_profile_status_reason_code",
JSON_EXTRACT(properties, '$.billingProfilePaymentMethodFamily') as "billing_profile_payment_method_family",
JSON_EXTRACT(properties, '$.billingProfilePaymentMethodType') as "billing_profile_payment_method_type",
JSON_EXTRACT(properties, '$.billingTenantId') as "billing_tenant_id",
JSON_EXTRACT(properties, '$.costCenter') as "cost_center",
JSON_EXTRACT(properties, '$.customerDisplayName') as "customer_display_name",
JSON_EXTRACT(properties, '$.customerId') as "customer_id",
JSON_EXTRACT(properties, '$.customerStatus') as "customer_status",
JSON_EXTRACT(properties, '$.invoiceSectionDisplayName') as "invoice_section_display_name",
JSON_EXTRACT(properties, '$.invoiceSectionId') as "invoice_section_id",
JSON_EXTRACT(properties, '$.invoiceSectionStatus') as "invoice_section_status",
JSON_EXTRACT(properties, '$.invoiceSectionStatusReasonCode') as "invoice_section_status_reason_code",
JSON_EXTRACT(properties, '$.isTransitionedBillingAccount') as "is_transitioned_billing_account",
JSON_EXTRACT(properties, '$.skuDescription') as "sku_description",
JSON_EXTRACT(properties, '$.skuId') as "sku_id",
JSON_EXTRACT(properties, '$.subscriptionBillingStatus') as "subscription_billing_status",
JSON_EXTRACT(properties, '$.subscriptionBillingStatusDetails') as "subscription_billing_status_details",
JSON_EXTRACT(properties, '$.subscriptionBillingType') as "subscription_billing_type",
JSON_EXTRACT(properties, '$.subscriptionServiceUsageAddress') as "subscription_service_usage_address",
JSON_EXTRACT(properties, '$.subscriptionWorkloadType') as "subscription_workload_type",
JSON_EXTRACT(properties, '$.enrollmentDetails') as "enrollment_details",
JSON_EXTRACT(properties, '$.isAccountAdmin') as "is_account_admin",
JSON_EXTRACT(properties, '$.productId') as "product_id",
JSON_EXTRACT(properties, '$.productName') as "product_name",
subscriptionId
FROM azure.billing.properties
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
tags as tags,
json_extract_path_text(properties, '$.billingAccountAgreementType') as "billing_account_agreement_type",
json_extract_path_text(properties, '$.billingAccountDisplayName') as "billing_account_display_name",
json_extract_path_text(properties, '$.billingAccountId') as "billing_account_id",
json_extract_path_text(properties, '$.accountAdminNotificationEmailAddress') as "account_admin_notification_email_address",
json_extract_path_text(properties, '$.billingAccountSoldToCountry') as "billing_account_sold_to_country",
json_extract_path_text(properties, '$.billingAccountStatus') as "billing_account_status",
json_extract_path_text(properties, '$.billingAccountStatusReasonCode') as "billing_account_status_reason_code",
json_extract_path_text(properties, '$.billingAccountType') as "billing_account_type",
json_extract_path_text(properties, '$.billingAccountSubType') as "billing_account_sub_type",
json_extract_path_text(properties, '$.billingCurrency') as "billing_currency",
json_extract_path_text(properties, '$.billingProfileDisplayName') as "billing_profile_display_name",
json_extract_path_text(properties, '$.billingProfileId') as "billing_profile_id",
json_extract_path_text(properties, '$.billingProfileSpendingLimit') as "billing_profile_spending_limit",
json_extract_path_text(properties, '$.billingProfileSpendingLimitDetails') as "billing_profile_spending_limit_details",
json_extract_path_text(properties, '$.billingProfileStatus') as "billing_profile_status",
json_extract_path_text(properties, '$.billingProfileStatusReasonCode') as "billing_profile_status_reason_code",
json_extract_path_text(properties, '$.billingProfilePaymentMethodFamily') as "billing_profile_payment_method_family",
json_extract_path_text(properties, '$.billingProfilePaymentMethodType') as "billing_profile_payment_method_type",
json_extract_path_text(properties, '$.billingTenantId') as "billing_tenant_id",
json_extract_path_text(properties, '$.costCenter') as "cost_center",
json_extract_path_text(properties, '$.customerDisplayName') as "customer_display_name",
json_extract_path_text(properties, '$.customerId') as "customer_id",
json_extract_path_text(properties, '$.customerStatus') as "customer_status",
json_extract_path_text(properties, '$.invoiceSectionDisplayName') as "invoice_section_display_name",
json_extract_path_text(properties, '$.invoiceSectionId') as "invoice_section_id",
json_extract_path_text(properties, '$.invoiceSectionStatus') as "invoice_section_status",
json_extract_path_text(properties, '$.invoiceSectionStatusReasonCode') as "invoice_section_status_reason_code",
json_extract_path_text(properties, '$.isTransitionedBillingAccount') as "is_transitioned_billing_account",
json_extract_path_text(properties, '$.skuDescription') as "sku_description",
json_extract_path_text(properties, '$.skuId') as "sku_id",
json_extract_path_text(properties, '$.subscriptionBillingStatus') as "subscription_billing_status",
json_extract_path_text(properties, '$.subscriptionBillingStatusDetails') as "subscription_billing_status_details",
json_extract_path_text(properties, '$.subscriptionBillingType') as "subscription_billing_type",
json_extract_path_text(properties, '$.subscriptionServiceUsageAddress') as "subscription_service_usage_address",
json_extract_path_text(properties, '$.subscriptionWorkloadType') as "subscription_workload_type",
json_extract_path_text(properties, '$.enrollmentDetails') as "enrollment_details",
json_extract_path_text(properties, '$.isAccountAdmin') as "is_account_admin",
json_extract_path_text(properties, '$.productId') as "product_id",
json_extract_path_text(properties, '$.productName') as "product_name",
subscriptionId
FROM azure.billing.properties
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
