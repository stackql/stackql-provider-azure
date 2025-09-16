--- 
title: vw_reservation_order_aliases
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_reservation_order_aliases
  - billing_benefits
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

Creates, updates, deletes, gets or lists a <code>vw_reservation_order_aliases</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_reservation_order_aliases</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing_benefits.vw_reservation_order_aliases" /></td></tr>
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
location as location,
type as type,
systemData as system_data,
sku as sku,
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.reservationOrderId') as "reservation_order_id",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.billingScopeId') as "billing_scope_id",
JSON_EXTRACT(properties, '$.term') as "term",
JSON_EXTRACT(properties, '$.billingPlan') as "billing_plan",
JSON_EXTRACT(properties, '$.appliedScopeType') as "applied_scope_type",
JSON_EXTRACT(properties, '$.appliedScopeProperties') as "applied_scope_properties",
JSON_EXTRACT(properties, '$.quantity') as "quantity",
JSON_EXTRACT(properties, '$.renew') as "renew",
JSON_EXTRACT(properties, '$.reservedResourceType') as "reserved_resource_type",
JSON_EXTRACT(properties, '$.reviewDateTime') as "review_date_time",
JSON_EXTRACT(properties, '$.reservedResourceProperties') as "reserved_resource_properties",
reservationOrderAliasName
FROM azure.billing_benefits.reservation_order_aliases
WHERE reservationOrderAliasName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
type as type,
systemData as system_data,
sku as sku,
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.reservationOrderId') as "reservation_order_id",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.billingScopeId') as "billing_scope_id",
json_extract_path_text(properties, '$.term') as "term",
json_extract_path_text(properties, '$.billingPlan') as "billing_plan",
json_extract_path_text(properties, '$.appliedScopeType') as "applied_scope_type",
json_extract_path_text(properties, '$.appliedScopeProperties') as "applied_scope_properties",
json_extract_path_text(properties, '$.quantity') as "quantity",
json_extract_path_text(properties, '$.renew') as "renew",
json_extract_path_text(properties, '$.reservedResourceType') as "reserved_resource_type",
json_extract_path_text(properties, '$.reviewDateTime') as "review_date_time",
json_extract_path_text(properties, '$.reservedResourceProperties') as "reserved_resource_properties",
reservationOrderAliasName
FROM azure.billing_benefits.reservation_order_aliases
WHERE reservationOrderAliasName = 'replace-me';
```

</TabItem>
</Tabs>
