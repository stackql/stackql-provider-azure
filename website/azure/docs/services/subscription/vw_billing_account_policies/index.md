--- 
title: vw_billing_account_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_billing_account_policies
  - subscription
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

Creates, updates, deletes, gets or lists a <code>vw_billing_account_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_billing_account_policies</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.subscription.vw_billing_account_policies" /></td></tr>
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
id as id,
name as name,
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.serviceTenants') as "service_tenants",
JSON_EXTRACT(properties, '$.allowTransfers') as "allow_transfers",
billingAccountId
FROM azure.subscription.billing_account_policies
WHERE billingAccountId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.serviceTenants') as "service_tenants",
json_extract_path_text(properties, '$.allowTransfers') as "allow_transfers",
billingAccountId
FROM azure.subscription.billing_account_policies
WHERE billingAccountId = 'replace-me';
```

</TabItem>
</Tabs>
