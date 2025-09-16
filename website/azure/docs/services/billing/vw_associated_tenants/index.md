--- 
title: vw_associated_tenants
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_associated_tenants
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

Creates, updates, deletes, gets or lists a <code>vw_associated_tenants</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_associated_tenants</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.vw_associated_tenants" /></td></tr>
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
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.tenantId') as "tenant_id",
JSON_EXTRACT(properties, '$.billingManagementState') as "billing_management_state",
JSON_EXTRACT(properties, '$.provisioningManagementState') as "provisioning_management_state",
JSON_EXTRACT(properties, '$.provisioningBillingRequestId') as "provisioning_billing_request_id",
billingAccountName,
associatedTenantName
FROM azure.billing.associated_tenants
WHERE billingAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
tags as tags,
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.tenantId') as "tenant_id",
json_extract_path_text(properties, '$.billingManagementState') as "billing_management_state",
json_extract_path_text(properties, '$.provisioningManagementState') as "provisioning_management_state",
json_extract_path_text(properties, '$.provisioningBillingRequestId') as "provisioning_billing_request_id",
billingAccountName,
associatedTenantName
FROM azure.billing.associated_tenants
WHERE billingAccountName = 'replace-me';
```

</TabItem>
</Tabs>
