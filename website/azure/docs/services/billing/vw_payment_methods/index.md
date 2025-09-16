--- 
title: vw_payment_methods
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_payment_methods
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

Creates, updates, deletes, gets or lists a <code>vw_payment_methods</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_payment_methods</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.vw_payment_methods" /></td></tr>
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
JSON_EXTRACT(properties, '$.accountHolderName') as "account_holder_name",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.expiration') as "expiration",
JSON_EXTRACT(properties, '$.family') as "family",
JSON_EXTRACT(properties, '$.lastFourDigits') as "last_four_digits",
JSON_EXTRACT(properties, '$.logos') as "logos",
JSON_EXTRACT(properties, '$.paymentMethod') as "payment_method",
JSON_EXTRACT(properties, '$.paymentMethodId') as "payment_method_id",
JSON_EXTRACT(properties, '$.paymentMethodType') as "payment_method_type",
JSON_EXTRACT(properties, '$.status') as "status",
billingAccountName,
billingProfileName,
paymentMethodName
FROM azure.billing.payment_methods
WHERE billingAccountName = 'replace-me' AND billingProfileName = 'replace-me' AND paymentMethodName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
tags as tags,
json_extract_path_text(properties, '$.accountHolderName') as "account_holder_name",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.expiration') as "expiration",
json_extract_path_text(properties, '$.family') as "family",
json_extract_path_text(properties, '$.lastFourDigits') as "last_four_digits",
json_extract_path_text(properties, '$.logos') as "logos",
json_extract_path_text(properties, '$.paymentMethod') as "payment_method",
json_extract_path_text(properties, '$.paymentMethodId') as "payment_method_id",
json_extract_path_text(properties, '$.paymentMethodType') as "payment_method_type",
json_extract_path_text(properties, '$.status') as "status",
billingAccountName,
billingProfileName,
paymentMethodName
FROM azure.billing.payment_methods
WHERE billingAccountName = 'replace-me' AND billingProfileName = 'replace-me' AND paymentMethodName = 'replace-me';
```

</TabItem>
</Tabs>
