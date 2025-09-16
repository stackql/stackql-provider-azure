--- 
title: vw_reservations
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_reservations
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

Creates, updates, deletes, gets or lists a <code>vw_reservations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_reservations</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.vw_reservations" /></td></tr>
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
location as location,
etag as etag,
tags as tags,
sku as sku,
JSON_EXTRACT(properties, '$.reservedResourceType') as "reserved_resource_type",
JSON_EXTRACT(properties, '$.instanceFlexibility') as "instance_flexibility",
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.appliedScopes') as "applied_scopes",
JSON_EXTRACT(properties, '$.appliedScopeType') as "applied_scope_type",
JSON_EXTRACT(properties, '$.archived') as "archived",
JSON_EXTRACT(properties, '$.capabilities') as "capabilities",
JSON_EXTRACT(properties, '$.quantity') as "quantity",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.effectiveDateTime') as "effective_date_time",
JSON_EXTRACT(properties, '$.benefitStartTime') as "benefit_start_time",
JSON_EXTRACT(properties, '$.lastUpdatedDateTime') as "last_updated_date_time",
JSON_EXTRACT(properties, '$.expiryDate') as "expiry_date",
JSON_EXTRACT(properties, '$.expiryDateTime') as "expiry_date_time",
JSON_EXTRACT(properties, '$.reviewDateTime') as "review_date_time",
JSON_EXTRACT(properties, '$.skuDescription') as "sku_description",
JSON_EXTRACT(properties, '$.extendedStatusInfo') as "extended_status_info",
JSON_EXTRACT(properties, '$.billingPlan') as "billing_plan",
JSON_EXTRACT(properties, '$.displayProvisioningState') as "display_provisioning_state",
JSON_EXTRACT(properties, '$.provisioningSubState') as "provisioning_sub_state",
JSON_EXTRACT(properties, '$.purchaseDate') as "purchase_date",
JSON_EXTRACT(properties, '$.purchaseDateTime') as "purchase_date_time",
JSON_EXTRACT(properties, '$.splitProperties') as "split_properties",
JSON_EXTRACT(properties, '$.mergeProperties') as "merge_properties",
JSON_EXTRACT(properties, '$.swapProperties') as "swap_properties",
JSON_EXTRACT(properties, '$.appliedScopeProperties') as "applied_scope_properties",
JSON_EXTRACT(properties, '$.billingScopeId') as "billing_scope_id",
JSON_EXTRACT(properties, '$.renew') as "renew",
JSON_EXTRACT(properties, '$.renewSource') as "renew_source",
JSON_EXTRACT(properties, '$.renewDestination') as "renew_destination",
JSON_EXTRACT(properties, '$.renewProperties') as "renew_properties",
JSON_EXTRACT(properties, '$.term') as "term",
JSON_EXTRACT(properties, '$.userFriendlyAppliedScopeType') as "user_friendly_applied_scope_type",
JSON_EXTRACT(properties, '$.userFriendlyRenewState') as "user_friendly_renew_state",
JSON_EXTRACT(properties, '$.utilization') as "utilization",
JSON_EXTRACT(properties, '$.productCode') as "product_code",
billingAccountName,
reservationOrderId,
reservationId
FROM azure.billing.reservations
WHERE billingAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
location as location,
etag as etag,
tags as tags,
sku as sku,
json_extract_path_text(properties, '$.reservedResourceType') as "reserved_resource_type",
json_extract_path_text(properties, '$.instanceFlexibility') as "instance_flexibility",
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.appliedScopes') as "applied_scopes",
json_extract_path_text(properties, '$.appliedScopeType') as "applied_scope_type",
json_extract_path_text(properties, '$.archived') as "archived",
json_extract_path_text(properties, '$.capabilities') as "capabilities",
json_extract_path_text(properties, '$.quantity') as "quantity",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.effectiveDateTime') as "effective_date_time",
json_extract_path_text(properties, '$.benefitStartTime') as "benefit_start_time",
json_extract_path_text(properties, '$.lastUpdatedDateTime') as "last_updated_date_time",
json_extract_path_text(properties, '$.expiryDate') as "expiry_date",
json_extract_path_text(properties, '$.expiryDateTime') as "expiry_date_time",
json_extract_path_text(properties, '$.reviewDateTime') as "review_date_time",
json_extract_path_text(properties, '$.skuDescription') as "sku_description",
json_extract_path_text(properties, '$.extendedStatusInfo') as "extended_status_info",
json_extract_path_text(properties, '$.billingPlan') as "billing_plan",
json_extract_path_text(properties, '$.displayProvisioningState') as "display_provisioning_state",
json_extract_path_text(properties, '$.provisioningSubState') as "provisioning_sub_state",
json_extract_path_text(properties, '$.purchaseDate') as "purchase_date",
json_extract_path_text(properties, '$.purchaseDateTime') as "purchase_date_time",
json_extract_path_text(properties, '$.splitProperties') as "split_properties",
json_extract_path_text(properties, '$.mergeProperties') as "merge_properties",
json_extract_path_text(properties, '$.swapProperties') as "swap_properties",
json_extract_path_text(properties, '$.appliedScopeProperties') as "applied_scope_properties",
json_extract_path_text(properties, '$.billingScopeId') as "billing_scope_id",
json_extract_path_text(properties, '$.renew') as "renew",
json_extract_path_text(properties, '$.renewSource') as "renew_source",
json_extract_path_text(properties, '$.renewDestination') as "renew_destination",
json_extract_path_text(properties, '$.renewProperties') as "renew_properties",
json_extract_path_text(properties, '$.term') as "term",
json_extract_path_text(properties, '$.userFriendlyAppliedScopeType') as "user_friendly_applied_scope_type",
json_extract_path_text(properties, '$.userFriendlyRenewState') as "user_friendly_renew_state",
json_extract_path_text(properties, '$.utilization') as "utilization",
json_extract_path_text(properties, '$.productCode') as "product_code",
billingAccountName,
reservationOrderId,
reservationId
FROM azure.billing.reservations
WHERE billingAccountName = 'replace-me';
```

</TabItem>
</Tabs>
