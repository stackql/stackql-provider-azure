--- 
title: vw_jobs
hide_title: false
hide_table_of_contents: false
keywords:
  - vw_jobs
  - data_box
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

Creates, updates, deletes, gets or lists a <code>vw_jobs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vw_jobs</code></td></tr>
<tr><td><b>Type</b></td><td>View</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_box.vw_jobs" /></td></tr>
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
tags as tags,
sku as sku,
identity as identity,
type as type,
systemData as system_data,
JSON_EXTRACT(properties, '$.transferType') as "transfer_type",
JSON_EXTRACT(properties, '$.isCancellable') as "is_cancellable",
JSON_EXTRACT(properties, '$.isDeletable') as "is_deletable",
JSON_EXTRACT(properties, '$.isShippingAddressEditable') as "is_shipping_address_editable",
JSON_EXTRACT(properties, '$.reverseShippingDetailsUpdate') as "reverse_shipping_details_update",
JSON_EXTRACT(properties, '$.reverseTransportPreferenceUpdate') as "reverse_transport_preference_update",
JSON_EXTRACT(properties, '$.isPrepareToShipEnabled') as "is_prepare_to_ship_enabled",
JSON_EXTRACT(properties, '$.status') as "status",
JSON_EXTRACT(properties, '$.delayedStage') as "delayed_stage",
JSON_EXTRACT(properties, '$.startTime') as "start_time",
JSON_EXTRACT(properties, '$.error') as "error",
JSON_EXTRACT(properties, '$.details') as "details",
JSON_EXTRACT(properties, '$.cancellationReason') as "cancellation_reason",
JSON_EXTRACT(properties, '$.deliveryType') as "delivery_type",
JSON_EXTRACT(properties, '$.deliveryInfo') as "delivery_info",
JSON_EXTRACT(properties, '$.isCancellableWithoutFee') as "is_cancellable_without_fee",
JSON_EXTRACT(properties, '$.allDevicesLost') as "all_devices_lost",
subscriptionId,
resourceGroupName,
jobName
FROM azure.data_box.jobs
WHERE subscriptionId = 'replace-me';
```

</TabItem>
<TabItem value="Postgres">

```sql
SELECT
id as id,
name as name,
location as location,
tags as tags,
sku as sku,
identity as identity,
type as type,
systemData as system_data,
json_extract_path_text(properties, '$.transferType') as "transfer_type",
json_extract_path_text(properties, '$.isCancellable') as "is_cancellable",
json_extract_path_text(properties, '$.isDeletable') as "is_deletable",
json_extract_path_text(properties, '$.isShippingAddressEditable') as "is_shipping_address_editable",
json_extract_path_text(properties, '$.reverseShippingDetailsUpdate') as "reverse_shipping_details_update",
json_extract_path_text(properties, '$.reverseTransportPreferenceUpdate') as "reverse_transport_preference_update",
json_extract_path_text(properties, '$.isPrepareToShipEnabled') as "is_prepare_to_ship_enabled",
json_extract_path_text(properties, '$.status') as "status",
json_extract_path_text(properties, '$.delayedStage') as "delayed_stage",
json_extract_path_text(properties, '$.startTime') as "start_time",
json_extract_path_text(properties, '$.error') as "error",
json_extract_path_text(properties, '$.details') as "details",
json_extract_path_text(properties, '$.cancellationReason') as "cancellation_reason",
json_extract_path_text(properties, '$.deliveryType') as "delivery_type",
json_extract_path_text(properties, '$.deliveryInfo') as "delivery_info",
json_extract_path_text(properties, '$.isCancellableWithoutFee') as "is_cancellable_without_fee",
json_extract_path_text(properties, '$.allDevicesLost') as "all_devices_lost",
subscriptionId,
resourceGroupName,
jobName
FROM azure.data_box.jobs
WHERE subscriptionId = 'replace-me';
```

</TabItem>
</Tabs>
