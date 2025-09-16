--- 
title: vw_agreements
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_agreements
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

Creates, updates, deletes, gets or lists a <code>vw_agreements</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_agreements</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.vw_agreements" /></td></tr>
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
JSON_EXTRACT(properties, '$.acceptanceMode') as "acceptance_mode",
JSON_EXTRACT(properties, '$.agreementLink') as "agreement_link",
JSON_EXTRACT(properties, '$.billingProfileInfo') as "billing_profile_info",
JSON_EXTRACT(properties, '$.category') as "category",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.effectiveDate') as "effective_date",
JSON_EXTRACT(properties, '$.expirationDate') as "expiration_date",
JSON_EXTRACT(properties, '$.participants') as "participants",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.leadBillingAccountName') as "lead_billing_account_name",
billingAccountName,
agreementName
FROM azure.billing.agreements
WHERE billingAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
tags as tags,
json_extract_path_text(properties, '$.acceptanceMode') as "acceptance_mode",
json_extract_path_text(properties, '$.agreementLink') as "agreement_link",
json_extract_path_text(properties, '$.billingProfileInfo') as "billing_profile_info",
json_extract_path_text(properties, '$.category') as "category",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.effectiveDate') as "effective_date",
json_extract_path_text(properties, '$.expirationDate') as "expiration_date",
json_extract_path_text(properties, '$.participants') as "participants",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.leadBillingAccountName') as "lead_billing_account_name",
billingAccountName,
agreementName
FROM azure.billing.agreements
WHERE billingAccountName = 'replace-me';
```

</TabItem>
</Tabs>
