--- 
title: vw_role_assignments
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_role_assignments
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

Creates, updates, deletes, gets or lists a <code>vw_role_assignments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_role_assignments</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.vw_role_assignments" /></td></tr>
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
JSON_EXTRACT(properties, '$.createdOn') as "created_on",
JSON_EXTRACT(properties, '$.createdByPrincipalTenantId') as "created_by_principal_tenant_id",
JSON_EXTRACT(properties, '$.createdByPrincipalId') as "created_by_principal_id",
JSON_EXTRACT(properties, '$.createdByPrincipalPuid') as "created_by_principal_puid",
JSON_EXTRACT(properties, '$.createdByUserEmailAddress') as "created_by_user_email_address",
JSON_EXTRACT(properties, '$.modifiedOn') as "modified_on",
JSON_EXTRACT(properties, '$.modifiedByPrincipalPuid') as "modified_by_principal_puid",
JSON_EXTRACT(properties, '$.modifiedByUserEmailAddress') as "modified_by_user_email_address",
JSON_EXTRACT(properties, '$.modifiedByPrincipalId') as "modified_by_principal_id",
JSON_EXTRACT(properties, '$.modifiedByPrincipalTenantId') as "modified_by_principal_tenant_id",
JSON_EXTRACT(properties, '$.principalPuid') as "principal_puid",
JSON_EXTRACT(properties, '$.principalId') as "principal_id",
JSON_EXTRACT(properties, '$.principalTenantId') as "principal_tenant_id",
JSON_EXTRACT(properties, '$.roleDefinitionId') as "role_definition_id",
JSON_EXTRACT(properties, '$.scope') as "scope",
JSON_EXTRACT(properties, '$.userAuthenticationType') as "user_authentication_type",
JSON_EXTRACT(properties, '$.userEmailAddress') as "user_email_address",
JSON_EXTRACT(properties, '$.principalTenantName') as "principal_tenant_name",
JSON_EXTRACT(properties, '$.principalDisplayName') as "principal_display_name",
JSON_EXTRACT(properties, '$.principalType') as "principal_type",
JSON_EXTRACT(properties, '$.billingRequestId') as "billing_request_id",
JSON_EXTRACT(properties, '$.billingAccountId') as "billing_account_id",
JSON_EXTRACT(properties, '$.billingAccountDisplayName') as "billing_account_display_name",
JSON_EXTRACT(properties, '$.billingProfileId') as "billing_profile_id",
JSON_EXTRACT(properties, '$.billingProfileDisplayName') as "billing_profile_display_name",
JSON_EXTRACT(properties, '$.invoiceSectionId') as "invoice_section_id",
JSON_EXTRACT(properties, '$.invoiceSectionDisplayName') as "invoice_section_display_name",
JSON_EXTRACT(properties, '$.customerId') as "customer_id",
JSON_EXTRACT(properties, '$.customerDisplayName') as "customer_display_name",
billingAccountName,
billingProfileName,
customerName,
billingRoleAssignmentName
FROM azure.billing.role_assignments
WHERE billingAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.createdOn') as "created_on",
json_extract_path_text(properties, '$.createdByPrincipalTenantId') as "created_by_principal_tenant_id",
json_extract_path_text(properties, '$.createdByPrincipalId') as "created_by_principal_id",
json_extract_path_text(properties, '$.createdByPrincipalPuid') as "created_by_principal_puid",
json_extract_path_text(properties, '$.createdByUserEmailAddress') as "created_by_user_email_address",
json_extract_path_text(properties, '$.modifiedOn') as "modified_on",
json_extract_path_text(properties, '$.modifiedByPrincipalPuid') as "modified_by_principal_puid",
json_extract_path_text(properties, '$.modifiedByUserEmailAddress') as "modified_by_user_email_address",
json_extract_path_text(properties, '$.modifiedByPrincipalId') as "modified_by_principal_id",
json_extract_path_text(properties, '$.modifiedByPrincipalTenantId') as "modified_by_principal_tenant_id",
json_extract_path_text(properties, '$.principalPuid') as "principal_puid",
json_extract_path_text(properties, '$.principalId') as "principal_id",
json_extract_path_text(properties, '$.principalTenantId') as "principal_tenant_id",
json_extract_path_text(properties, '$.roleDefinitionId') as "role_definition_id",
json_extract_path_text(properties, '$.scope') as "scope",
json_extract_path_text(properties, '$.userAuthenticationType') as "user_authentication_type",
json_extract_path_text(properties, '$.userEmailAddress') as "user_email_address",
json_extract_path_text(properties, '$.principalTenantName') as "principal_tenant_name",
json_extract_path_text(properties, '$.principalDisplayName') as "principal_display_name",
json_extract_path_text(properties, '$.principalType') as "principal_type",
json_extract_path_text(properties, '$.billingRequestId') as "billing_request_id",
json_extract_path_text(properties, '$.billingAccountId') as "billing_account_id",
json_extract_path_text(properties, '$.billingAccountDisplayName') as "billing_account_display_name",
json_extract_path_text(properties, '$.billingProfileId') as "billing_profile_id",
json_extract_path_text(properties, '$.billingProfileDisplayName') as "billing_profile_display_name",
json_extract_path_text(properties, '$.invoiceSectionId') as "invoice_section_id",
json_extract_path_text(properties, '$.invoiceSectionDisplayName') as "invoice_section_display_name",
json_extract_path_text(properties, '$.customerId') as "customer_id",
json_extract_path_text(properties, '$.customerDisplayName') as "customer_display_name",
billingAccountName,
billingProfileName,
customerName,
billingRoleAssignmentName
FROM azure.billing.role_assignments
WHERE billingAccountName = 'replace-me';
```

</TabItem>
</Tabs>
