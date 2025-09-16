--- 
title: reservation_orders
hide_title: false
hide_table_of_contents: false
keywords:
  - reservation_orders
  - reservations
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

Creates, updates, deletes, gets or lists a <code>reservation_orders</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>reservation_orders</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.reservations.reservation_orders" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Get the details of the `ReservationOrder`.

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
    <td>Identifier of the reservation</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the reservation</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>integer (int32)</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of a reservation order.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of resource. "Microsoft.Capacity/reservations"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

List of `ReservationOrder`s

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
    <td>Identifier of the reservation</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the reservation</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>integer (int32)</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of a reservation order.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of resource. "Microsoft.Capacity/reservations"</td>
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
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-reservationOrderId"><code>reservationOrderId</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>Get the details of the `ReservationOrder`.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td></td>
    <td>List of all the `ReservationOrder`s that the user has access to in the current tenant.</td>
</tr>
<tr>
    <td><a href="#calculate"><CopyableCode code="calculate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td></td>
    <td></td>
    <td>Calculate price for placing a `ReservationOrder`.</td>
</tr>
<tr>
    <td><a href="#purchase"><CopyableCode code="purchase" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-reservationOrderId"><code>reservationOrderId</code></a></td>
    <td></td>
    <td>Purchase `ReservationOrder` and create resource under the specified URI.</td>
</tr>
<tr>
    <td><a href="#change_directory"><CopyableCode code="change_directory" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-reservationOrderId"><code>reservationOrderId</code></a></td>
    <td></td>
    <td>Change directory (tenant) of `ReservationOrder` and all `Reservation` under it to specified tenant id</td>
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
<tr id="parameter-reservationOrderId">
    <td><CopyableCode code="reservationOrderId" /></td>
    <td><code>string</code></td>
    <td>Order Id of the reservation</td>
</tr>
<tr id="parameter-$expand">
    <td><CopyableCode code="$expand" /></td>
    <td><code>string</code></td>
    <td>May be used to expand the planInformation.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Get the details of the `ReservationOrder`.

```sql
SELECT
id,
name,
etag,
properties,
systemData,
type
FROM azure.reservations.reservation_orders
WHERE reservationOrderId = '{{ reservationOrderId }}' -- required
AND $expand = '{{ $expand }}'
;
```
</TabItem>
<TabItem value="list">

List of all the `ReservationOrder`s that the user has access to in the current tenant.

```sql
SELECT
id,
name,
etag,
properties,
systemData,
type
FROM azure.reservations.reservation_orders
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="calculate"
    values={[
        { label: 'calculate', value: 'calculate' },
        { label: 'purchase', value: 'purchase' },
        { label: 'change_directory', value: 'change_directory' }
    ]}
>
<TabItem value="calculate">

Calculate price for placing a `ReservationOrder`.

```sql
EXEC azure.reservations.reservation_orders.calculate 
@@json=
'{
"sku": "{{ sku }}", 
"location": "{{ location }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="purchase">

Purchase `ReservationOrder` and create resource under the specified URI.

```sql
EXEC azure.reservations.reservation_orders.purchase 
@reservationOrderId='{{ reservationOrderId }}' --required 
@@json=
'{
"sku": "{{ sku }}", 
"location": "{{ location }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="change_directory">

Change directory (tenant) of `ReservationOrder` and all `Reservation` under it to specified tenant id

```sql
EXEC azure.reservations.reservation_orders.change_directory 
@reservationOrderId='{{ reservationOrderId }}' --required 
@@json=
'{
"destinationTenantId": "{{ destinationTenantId }}"
}'
;
```
</TabItem>
</Tabs>
