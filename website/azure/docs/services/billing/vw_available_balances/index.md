--- 
title: vw_available_balances
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_available_balances
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

Creates, updates, deletes, gets or lists a <code>vw_available_balances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_available_balances</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.vw_available_balances" /></td></tr>
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
JSON_EXTRACT(properties, '$.amount') as "amount",
JSON_EXTRACT(properties, '$.paymentsOnAccount') as "payments_on_account",
JSON_EXTRACT(properties, '$.totalPaymentsOnAccount') as "total_payments_on_account",
billingAccountName,
billingProfileName
FROM azure.billing.available_balances
WHERE billingAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
tags as tags,
json_extract_path_text(properties, '$.amount') as "amount",
json_extract_path_text(properties, '$.paymentsOnAccount') as "payments_on_account",
json_extract_path_text(properties, '$.totalPaymentsOnAccount') as "total_payments_on_account",
billingAccountName,
billingProfileName
FROM azure.billing.available_balances
WHERE billingAccountName = 'replace-me';
```

</TabItem>
</Tabs>
