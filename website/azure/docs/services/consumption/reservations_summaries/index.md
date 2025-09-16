--- 
title: reservations_summaries
hide_title: false
hide_table_of_contents: false
keywords:
  - reservations_summaries
  - consumption
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

Creates, updates, deletes, gets or lists a <code>reservations_summaries</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>reservations_summaries</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.consumption.reservations_summaries" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_by_reservation_order_and_reservation"
    values={[
        { label: 'list_by_reservation_order_and_reservation', value: 'list_by_reservation_order_and_reservation' },
        { label: 'list_by_reservation_order', value: 'list_by_reservation_order' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list_by_reservation_order_and_reservation">

OK. The request has succeeded.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Fully qualified resource ID for the resource. Ex - /subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the reservation summary. (title: Reservation Summary properties)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_reservation_order">

OK. The request has succeeded.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Fully qualified resource ID for the resource. Ex - /subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the reservation summary. (title: Reservation Summary properties)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

OK. The request has succeeded.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Fully qualified resource ID for the resource. Ex - /subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the reservation summary. (title: Reservation Summary properties)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
</tbody>
</table>
</TabItem>
</Tabs>

## Methods

The following methods are available for this resource:

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Accessible by</th>
    <th>Required Params</th>
    <th>Optional Params</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr>
    <td><a href="#list_by_reservation_order_and_reservation"><CopyableCode code="list_by_reservation_order_and_reservation" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-reservationOrderId"><code>reservationOrderId</code></a>, <a href="#parameter-reservationId"><code>reservationId</code></a>, <a href="#parameter-grain"><code>grain</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Lists the reservations summaries for daily or monthly grain. Note: ARM has a payload size limit of 12MB, so currently callers get 400 when the response size exceeds the ARM limit. In such cases, API call should be made with smaller date ranges.</td>
</tr>
<tr>
    <td><a href="#list_by_reservation_order"><CopyableCode code="list_by_reservation_order" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-reservationOrderId"><code>reservationOrderId</code></a>, <a href="#parameter-grain"><code>grain</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Lists the reservations summaries for daily or monthly grain. Note: ARM has a payload size limit of 12MB, so currently callers get 400 when the response size exceeds the ARM limit. In such cases, API call should be made with smaller date ranges.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceScope"><code>resourceScope</code></a>, <a href="#parameter-grain"><code>grain</code></a></td>
    <td><a href="#parameter-startDate"><code>startDate</code></a>, <a href="#parameter-endDate"><code>endDate</code></a>, <a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-reservationId"><code>reservationId</code></a>, <a href="#parameter-reservationOrderId"><code>reservationOrderId</code></a></td>
    <td>Lists the reservations summaries for the defined scope daily or monthly grain. Note: ARM has a payload size limit of 12MB, so currently callers get 400 when the response size exceeds the ARM limit. In such cases, API call should be made with smaller date ranges.</td>
</tr>
</tbody>
</table>

## Parameters

Parameters can be passed in the `WHERE` clause of a query. Check the [Methods](#methods) section to see which parameters are required or optional for each operation.

<table>
<thead>
    <tr>
    <th>Name</th>
    <th>Datatype</th>
    <th>Description</th>
    </tr>
</thead>
<tbody>
<tr id="parameter-grain">
    <td><CopyableCode code="grain" /></td>
    <td><code>string</code></td>
    <td>Can be daily or monthly</td>
</tr>
<tr id="parameter-reservationId">
    <td><CopyableCode code="reservationId" /></td>
    <td><code>string</code></td>
    <td>Id of the reservation</td>
</tr>
<tr id="parameter-reservationOrderId">
    <td><CopyableCode code="reservationOrderId" /></td>
    <td><code>string</code></td>
    <td>Order Id of the reservation</td>
</tr>
<tr id="parameter-resourceScope">
    <td><CopyableCode code="resourceScope" /></td>
    <td><code>string</code></td>
    <td>The scope associated with reservations summaries operations. This includes '/providers/Microsoft.Billing/billingAccounts/&#123;billingAccountId&#125;' for BillingAccount scope (legacy), and '/providers/Microsoft.Billing/billingAccounts/&#123;billingAccountId&#125;/billingProfiles/&#123;billingProfileId&#125;' for BillingProfile scope (modern). </td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>Required only for daily grain. The properties/UsageDate for start date and end date. The filter supports 'le' and  'ge'. Not applicable when querying with billing profile</td>
</tr>
<tr id="parameter-endDate">
    <td><CopyableCode code="endDate" /></td>
    <td><code>string</code></td>
    <td>End date. Only applicable when querying with billing profile</td>
</tr>
<tr id="parameter-reservationId">
    <td><CopyableCode code="reservationId" /></td>
    <td><code>string</code></td>
    <td>Reservation Id GUID. Only valid if reservationOrderId is also provided. Filter to a specific reservation</td>
</tr>
<tr id="parameter-reservationOrderId">
    <td><CopyableCode code="reservationOrderId" /></td>
    <td><code>string</code></td>
    <td>Reservation Order Id GUID. Required if reservationId is provided. Filter to a specific reservation order</td>
</tr>
<tr id="parameter-startDate">
    <td><CopyableCode code="startDate" /></td>
    <td><code>string</code></td>
    <td>Start date. Only applicable when querying with billing profile</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_by_reservation_order_and_reservation"
    values={[
        { label: 'list_by_reservation_order_and_reservation', value: 'list_by_reservation_order_and_reservation' },
        { label: 'list_by_reservation_order', value: 'list_by_reservation_order' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list_by_reservation_order_and_reservation">

Lists the reservations summaries for daily or monthly grain. Note: ARM has a payload size limit of 12MB, so currently callers get 400 when the response size exceeds the ARM limit. In such cases, API call should be made with smaller date ranges.

```sql
SELECT
id,
name,
properties,
type
FROM azure.consumption.reservations_summaries
WHERE reservationOrderId = '{{ reservationOrderId }}' -- required
AND reservationId = '{{ reservationId }}' -- required
AND grain = '{{ grain }}' -- required
AND $filter = '{{ $filter }}'
;
```
</TabItem>
<TabItem value="list_by_reservation_order">

Lists the reservations summaries for daily or monthly grain. Note: ARM has a payload size limit of 12MB, so currently callers get 400 when the response size exceeds the ARM limit. In such cases, API call should be made with smaller date ranges.

```sql
SELECT
id,
name,
properties,
type
FROM azure.consumption.reservations_summaries
WHERE reservationOrderId = '{{ reservationOrderId }}' -- required
AND grain = '{{ grain }}' -- required
AND $filter = '{{ $filter }}'
;
```
</TabItem>
<TabItem value="list">

Lists the reservations summaries for the defined scope daily or monthly grain. Note: ARM has a payload size limit of 12MB, so currently callers get 400 when the response size exceeds the ARM limit. In such cases, API call should be made with smaller date ranges.

```sql
SELECT
id,
name,
properties,
type
FROM azure.consumption.reservations_summaries
WHERE resourceScope = '{{ resourceScope }}' -- required
AND grain = '{{ grain }}' -- required
AND startDate = '{{ startDate }}'
AND endDate = '{{ endDate }}'
AND $filter = '{{ $filter }}'
AND reservationId = '{{ reservationId }}'
AND reservationOrderId = '{{ reservationOrderId }}'
;
```
</TabItem>
</Tabs>
