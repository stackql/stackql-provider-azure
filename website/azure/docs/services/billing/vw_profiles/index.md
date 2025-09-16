--- 
title: vw_profiles
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_profiles
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

Creates, updates, deletes, gets or lists a <code>vw_profiles</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_profiles</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.vw_profiles" /></td></tr>
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
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.billingRelationshipType') as "billing_relationship_type",
JSON_EXTRACT(properties, '$.billTo') as "bill_to",
JSON_EXTRACT(properties, '$.currency') as "currency",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.enabledAzurePlans') as "enabled_azure_plans",
JSON_EXTRACT(properties, '$.hasReadAccess') as "has_read_access",
JSON_EXTRACT(properties, '$.indirectRelationshipInfo') as "indirect_relationship_info",
JSON_EXTRACT(properties, '$.invoiceDay') as "invoice_day",
JSON_EXTRACT(properties, '$.invoiceEmailOptIn') as "invoice_email_opt_in",
JSON_EXTRACT(properties, '$.invoiceRecipients') as "invoice_recipients",
JSON_EXTRACT(properties, '$.poNumber') as "po_number",
JSON_EXTRACT(properties, '$.shipTo') as "ship_to",
JSON_EXTRACT(properties, '$.soldTo') as "sold_to",
JSON_EXTRACT(properties, '$.spendingLimit') as "spending_limit",
JSON_EXTRACT(properties, '$.spendingLimitDetails') as "spending_limit_details",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.statusReasonCode') as "status_reason_code",
JSON_EXTRACT(properties, '$.systemId') as "system_id",
JSON_EXTRACT(properties, '$.tags') as "tags",
JSON_EXTRACT(properties, '$.targetClouds') as "target_clouds",
JSON_EXTRACT(properties, '$.currentPaymentTerm') as "current_payment_term",
JSON_EXTRACT(properties, '$.otherPaymentTerms') as "other_payment_terms",
billingAccountName,
billingProfileName
FROM azure.billing.profiles
WHERE billingAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.billingRelationshipType') as "billing_relationship_type",
json_extract_path_text(properties, '$.billTo') as "bill_to",
json_extract_path_text(properties, '$.currency') as "currency",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.enabledAzurePlans') as "enabled_azure_plans",
json_extract_path_text(properties, '$.hasReadAccess') as "has_read_access",
json_extract_path_text(properties, '$.indirectRelationshipInfo') as "indirect_relationship_info",
json_extract_path_text(properties, '$.invoiceDay') as "invoice_day",
json_extract_path_text(properties, '$.invoiceEmailOptIn') as "invoice_email_opt_in",
json_extract_path_text(properties, '$.invoiceRecipients') as "invoice_recipients",
json_extract_path_text(properties, '$.poNumber') as "po_number",
json_extract_path_text(properties, '$.shipTo') as "ship_to",
json_extract_path_text(properties, '$.soldTo') as "sold_to",
json_extract_path_text(properties, '$.spendingLimit') as "spending_limit",
json_extract_path_text(properties, '$.spendingLimitDetails') as "spending_limit_details",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.statusReasonCode') as "status_reason_code",
json_extract_path_text(properties, '$.systemId') as "system_id",
json_extract_path_text(properties, '$.tags') as "tags",
json_extract_path_text(properties, '$.targetClouds') as "target_clouds",
json_extract_path_text(properties, '$.currentPaymentTerm') as "current_payment_term",
json_extract_path_text(properties, '$.otherPaymentTerms') as "other_payment_terms",
billingAccountName,
billingProfileName
FROM azure.billing.profiles
WHERE billingAccountName = 'replace-me';
```

</TabItem>
</Tabs>
