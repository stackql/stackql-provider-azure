--- 
title: vw_policy_policy_for_tenants
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_policy_policy_for_tenants
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

Creates, updates, deletes, gets or lists a <code>vw_policy_policy_for_tenants</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_policy_policy_for_tenants</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.subscription.vw_policy_policy_for_tenants" /></td></tr>
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
JSON_EXTRACT(properties, '$.policyId') as "policy_id",
JSON_EXTRACT(properties, '$.blockSubscriptionsLeavingTenant') as "block_subscriptions_leaving_tenant",
JSON_EXTRACT(properties, '$.blockSubscriptionsIntoTenant') as "block_subscriptions_into_tenant",
JSON_EXTRACT(properties, '$.exemptedPrincipals') as "exempted_principals"
FROM azure.subscription.policy_policy_for_tenants
;
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.policyId') as "policy_id",
json_extract_path_text(properties, '$.blockSubscriptionsLeavingTenant') as "block_subscriptions_leaving_tenant",
json_extract_path_text(properties, '$.blockSubscriptionsIntoTenant') as "block_subscriptions_into_tenant",
json_extract_path_text(properties, '$.exemptedPrincipals') as "exempted_principals"
FROM azure.subscription.policy_policy_for_tenants
;
```

</TabItem>
</Tabs>
