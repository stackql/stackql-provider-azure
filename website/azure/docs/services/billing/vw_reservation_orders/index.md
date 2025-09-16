--- 
title: vw_reservation_orders
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_reservation_orders
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

Creates, updates, deletes, gets or lists a <code>vw_reservation_orders</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_reservation_orders</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.vw_reservation_orders" /></td></tr>
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
etag as etag,
tags as tags,
JSON_EXTRACT(properties, '$.displayName') as "display_name",
JSON_EXTRACT(properties, '$.enrollmentId') as "enrollment_id",
JSON_EXTRACT(properties, '$.customerId') as "customer_id",
JSON_EXTRACT(properties, '$.billingProfileId') as "billing_profile_id",
JSON_EXTRACT(properties, '$.billingAccountId') as "billing_account_id",
JSON_EXTRACT(properties, '$.requestDateTime') as "request_date_time",
JSON_EXTRACT(properties, '$.createdDateTime') as "created_date_time",
JSON_EXTRACT(properties, '$.expiryDate') as "expiry_date",
JSON_EXTRACT(properties, '$.expiryDateTime') as "expiry_date_time",
JSON_EXTRACT(properties, '$.benefitStartTime') as "benefit_start_time",
JSON_EXTRACT(properties, '$.originalQuantity') as "original_quantity",
JSON_EXTRACT(properties, '$.term') as "term",
JSON_EXTRACT(properties, '$.provisioningState') as "provisioning_state",
JSON_EXTRACT(properties, '$.billingPlan') as "billing_plan",
JSON_EXTRACT(properties, '$.planInformation') as "plan_information",
JSON_EXTRACT(properties, '$.reservations') as "reservations",
JSON_EXTRACT(properties, '$.reviewDateTime') as "review_date_time",
JSON_EXTRACT(properties, '$.extendedStatusInfo') as "extended_status_info",
JSON_EXTRACT(properties, '$.productCode') as "product_code",
billingAccountName,
reservationOrderId
FROM azure.billing.reservation_orders
WHERE billingAccountName = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
etag as etag,
tags as tags,
json_extract_path_text(properties, '$.displayName') as "display_name",
json_extract_path_text(properties, '$.enrollmentId') as "enrollment_id",
json_extract_path_text(properties, '$.customerId') as "customer_id",
json_extract_path_text(properties, '$.billingProfileId') as "billing_profile_id",
json_extract_path_text(properties, '$.billingAccountId') as "billing_account_id",
json_extract_path_text(properties, '$.requestDateTime') as "request_date_time",
json_extract_path_text(properties, '$.createdDateTime') as "created_date_time",
json_extract_path_text(properties, '$.expiryDate') as "expiry_date",
json_extract_path_text(properties, '$.expiryDateTime') as "expiry_date_time",
json_extract_path_text(properties, '$.benefitStartTime') as "benefit_start_time",
json_extract_path_text(properties, '$.originalQuantity') as "original_quantity",
json_extract_path_text(properties, '$.term') as "term",
json_extract_path_text(properties, '$.provisioningState') as "provisioning_state",
json_extract_path_text(properties, '$.billingPlan') as "billing_plan",
json_extract_path_text(properties, '$.planInformation') as "plan_information",
json_extract_path_text(properties, '$.reservations') as "reservations",
json_extract_path_text(properties, '$.reviewDateTime') as "review_date_time",
json_extract_path_text(properties, '$.extendedStatusInfo') as "extended_status_info",
json_extract_path_text(properties, '$.productCode') as "product_code",
billingAccountName,
reservationOrderId
FROM azure.billing.reservation_orders
WHERE billingAccountName = 'replace-me';
```

</TabItem>
</Tabs>
