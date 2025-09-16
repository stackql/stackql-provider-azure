--- 
title: vw_accounts
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_accounts
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

Creates, updates, deletes, gets or lists a <code>vw_accounts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_accounts</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.vw_accounts" /></td></tr>
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
JSON_EXTRACT(properties, '$.accountStatus') as "account_status",
JSON_EXTRACT(properties, '$.accountType') as "account_type",
JSON_EXTRACT(properties, '$.accountSubType') as "account_sub_type",
JSON_EXTRACT(properties, '$.accountStatusReasonCode') as "account_status_reason_code",
JSON_EXTRACT(properties, '$.agreementType') as "agreement_type",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.enrollmentDetails') as "enrollment_details",
JSON_EXTRACT(properties, '$.hasReadAccess') as "has_read_access",
JSON_EXTRACT(properties, '$.hasNoBillingProfiles') as "has_no_billing_profiles",
JSON_EXTRACT(properties, '$.notificationEmailAddress') as "notification_email_address",
JSON_EXTRACT(properties, '$.primaryBillingTenantId') as "primary_billing_tenant_id",
JSON_EXTRACT(properties, '$.soldTo') as "sold_to",
JSON_EXTRACT(properties, '$.registrationNumber') as "registration_number",
JSON_EXTRACT(properties, '$.billingRelationshipTypes') as "billing_relationship_types",
JSON_EXTRACT(properties, '$.qualifications') as "qualifications",
JSON_EXTRACT(properties, '$.taxIds') as "tax_ids",
billingAccountName
FROM azure.billing.accounts
WHERE billingAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.accountStatus') as "account_status",
json_extract_path_text(properties, '$.accountType') as "account_type",
json_extract_path_text(properties, '$.accountSubType') as "account_sub_type",
json_extract_path_text(properties, '$.accountStatusReasonCode') as "account_status_reason_code",
json_extract_path_text(properties, '$.agreementType') as "agreement_type",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.enrollmentDetails') as "enrollment_details",
json_extract_path_text(properties, '$.hasReadAccess') as "has_read_access",
json_extract_path_text(properties, '$.hasNoBillingProfiles') as "has_no_billing_profiles",
json_extract_path_text(properties, '$.notificationEmailAddress') as "notification_email_address",
json_extract_path_text(properties, '$.primaryBillingTenantId') as "primary_billing_tenant_id",
json_extract_path_text(properties, '$.soldTo') as "sold_to",
json_extract_path_text(properties, '$.registrationNumber') as "registration_number",
json_extract_path_text(properties, '$.billingRelationshipTypes') as "billing_relationship_types",
json_extract_path_text(properties, '$.qualifications') as "qualifications",
json_extract_path_text(properties, '$.taxIds') as "tax_ids",
billingAccountName
FROM azure.billing.accounts
WHERE billingAccountName = 'replace-me';
```

</TabItem>
</Tabs>
