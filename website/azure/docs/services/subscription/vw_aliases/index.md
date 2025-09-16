--- 
title: vw_aliases
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_aliases
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

Creates, updates, deletes, gets or lists a <code>vw_aliases</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_aliases</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.subscription.vw_aliases" /></td></tr>
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
JSON_EXTRACT(properties, '$.subscriptionId') as "subscription_id",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.acceptOwnershipUrl') as "accept_ownership_url",
JSON_EXTRACT(properties, '$.acceptOwnershipState') as "accept_ownership_state",
JSON_EXTRACT(properties, '$.billingScope') as "billing_scope",
JSON_EXTRACT(properties, '$.workload') as "workload",
JSON_EXTRACT(properties, '$.resellerId') as "reseller_id",
JSON_EXTRACT(properties, '$.subscriptionOwnerId') as "subscription_owner_id",
JSON_EXTRACT(properties, '$.managementGroupId') as "management_group_id",
JSON_EXTRACT(properties, '$.createdTime') as "created_time",
JSON_EXTRACT(properties, '$.tags') as "tags",
aliasName
FROM azure.subscription.aliases
WHERE aliasName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.subscriptionId') as "subscription_id",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.acceptOwnershipUrl') as "accept_ownership_url",
json_extract_path_text(properties, '$.acceptOwnershipState') as "accept_ownership_state",
json_extract_path_text(properties, '$.billingScope') as "billing_scope",
json_extract_path_text(properties, '$.workload') as "workload",
json_extract_path_text(properties, '$.resellerId') as "reseller_id",
json_extract_path_text(properties, '$.subscriptionOwnerId') as "subscription_owner_id",
json_extract_path_text(properties, '$.managementGroupId') as "management_group_id",
json_extract_path_text(properties, '$.createdTime') as "created_time",
json_extract_path_text(properties, '$.tags') as "tags",
aliasName
FROM azure.subscription.aliases
WHERE aliasName = 'replace-me';
```

</TabItem>
</Tabs>
