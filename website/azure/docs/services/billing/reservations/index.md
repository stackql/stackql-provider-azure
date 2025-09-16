--- 
title: reservations
hide_title: false
hide_table_of_contents: false
keywords:
  - reservations
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

Creates, updates, deletes, gets or lists a <code>reservations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>reservations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.reservations" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_by_reservation_order"
    values={[
        { label: 'get_by_reservation_order', value: 'get_by_reservation_order' },
        { label: 'list_by_billing_profile', value: 'list_by_billing_profile' },
        { label: 'list_by_reservation_order', value: 'list_by_reservation_order' },
        { label: 'list_by_billing_account', value: 'list_by_billing_account' }
    ]}
>
<TabItem value="get_by_reservation_order">

Get `Reservation` details.

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
    <td><CopyableCode code="etag" /></td>
    <td><code>integer (int32)</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The location of the reservation.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties associated to this reservation</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The sku information associated to this reservation</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Tags for this reservation</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_billing_profile">

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
    <td><CopyableCode code="etag" /></td>
    <td><code>integer (int32)</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The location of the reservation.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties associated to this reservation</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The sku information associated to this reservation</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Tags for this reservation</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_reservation_order">

List `Reservation`s within a single `ReservationOrder`.

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
    <td><CopyableCode code="etag" /></td>
    <td><code>integer (int32)</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The location of the reservation.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties associated to this reservation</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The sku information associated to this reservation</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Tags for this reservation</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_billing_account">

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
    <td><CopyableCode code="etag" /></td>
    <td><code>integer (int32)</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The location of the reservation.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties associated to this reservation</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The sku information associated to this reservation</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Tags for this reservation</td>
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
    <td><a href="#get_by_reservation_order"><CopyableCode code="get_by_reservation_order" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-reservationOrderId"><code>reservationOrderId</code></a>, <a href="#parameter-reservationId"><code>reservationId</code></a></td>
    <td><a href="#parameter-expand"><code>expand</code></a></td>
    <td>Get specific Reservation details in the billing account.</td>
</tr>
<tr>
    <td><a href="#list_by_billing_profile"><CopyableCode code="list_by_billing_profile" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a></td>
    <td><a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-orderBy"><code>orderBy</code></a>, <a href="#parameter-skiptoken"><code>skiptoken</code></a>, <a href="#parameter-refreshSummary"><code>refreshSummary</code></a>, <a href="#parameter-selectedState"><code>selectedState</code></a>, <a href="#parameter-take"><code>take</code></a></td>
    <td>Lists the reservations for a billing profile and the roll up counts of reservations group by provisioning state.</td>
</tr>
<tr>
    <td><a href="#list_by_reservation_order"><CopyableCode code="list_by_reservation_order" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-reservationOrderId"><code>reservationOrderId</code></a></td>
    <td></td>
    <td>List Reservations within a single ReservationOrder in the billing account.</td>
</tr>
<tr>
    <td><a href="#list_by_billing_account"><CopyableCode code="list_by_billing_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a></td>
    <td><a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-orderBy"><code>orderBy</code></a>, <a href="#parameter-skiptoken"><code>skiptoken</code></a>, <a href="#parameter-refreshSummary"><code>refreshSummary</code></a>, <a href="#parameter-selectedState"><code>selectedState</code></a>, <a href="#parameter-take"><code>take</code></a></td>
    <td>Lists the reservations in the billing account and the roll up counts of reservations group by provisioning states.</td>
</tr>
<tr>
    <td><a href="#update_by_billing_account"><CopyableCode code="update_by_billing_account" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-reservationOrderId"><code>reservationOrderId</code></a>, <a href="#parameter-reservationId"><code>reservationId</code></a></td>
    <td></td>
    <td>Update reservation by billing account.</td>
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
<tr id="parameter-billingAccountName">
    <td><CopyableCode code="billingAccountName" /></td>
    <td><code>string</code></td>
    <td>The ID that uniquely identifies a billing account.</td>
</tr>
<tr id="parameter-billingProfileName">
    <td><CopyableCode code="billingProfileName" /></td>
    <td><code>string</code></td>
    <td>The ID that uniquely identifies a billing profile.</td>
</tr>
<tr id="parameter-reservationId">
    <td><CopyableCode code="reservationId" /></td>
    <td><code>string</code></td>
    <td>Id of the reservation item</td>
</tr>
<tr id="parameter-reservationOrderId">
    <td><CopyableCode code="reservationOrderId" /></td>
    <td><code>string</code></td>
    <td>Order Id of the reservation</td>
</tr>
<tr id="parameter-expand">
    <td><CopyableCode code="expand" /></td>
    <td><code>string</code></td>
    <td>May be used to expand the planInformation.</td>
</tr>
<tr id="parameter-filter">
    <td><CopyableCode code="filter" /></td>
    <td><code>string</code></td>
    <td>The filter query option allows clients to filter a collection of resources that are addressed by a request URL.</td>
</tr>
<tr id="parameter-orderBy">
    <td><CopyableCode code="orderBy" /></td>
    <td><code>string</code></td>
    <td>The orderby query option allows clients to request resources in a particular order.</td>
</tr>
<tr id="parameter-refreshSummary">
    <td><CopyableCode code="refreshSummary" /></td>
    <td><code>string</code></td>
    <td>To indicate whether to refresh the roll up counts of the savings plans group by provisioning states</td>
</tr>
<tr id="parameter-selectedState">
    <td><CopyableCode code="selectedState" /></td>
    <td><code>string</code></td>
    <td>The selected provisioning state</td>
</tr>
<tr id="parameter-skiptoken">
    <td><CopyableCode code="skiptoken" /></td>
    <td><code>number</code></td>
    <td>The number of savings plans to skip from the list before returning results</td>
</tr>
<tr id="parameter-take">
    <td><CopyableCode code="take" /></td>
    <td><code>number</code></td>
    <td>The number of savings plans to return</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_by_reservation_order"
    values={[
        { label: 'get_by_reservation_order', value: 'get_by_reservation_order' },
        { label: 'list_by_billing_profile', value: 'list_by_billing_profile' },
        { label: 'list_by_reservation_order', value: 'list_by_reservation_order' },
        { label: 'list_by_billing_account', value: 'list_by_billing_account' }
    ]}
>
<TabItem value="get_by_reservation_order">

Get specific Reservation details in the billing account.

```sql
SELECT
etag,
location,
properties,
sku,
tags
FROM azure.billing.reservations
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND reservationOrderId = '{{ reservationOrderId }}' -- required
AND reservationId = '{{ reservationId }}' -- required
AND expand = '{{ expand }}'
;
```
</TabItem>
<TabItem value="list_by_billing_profile">

Lists the reservations for a billing profile and the roll up counts of reservations group by provisioning state.

```sql
SELECT
etag,
location,
properties,
sku,
tags
FROM azure.billing.reservations
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND billingProfileName = '{{ billingProfileName }}' -- required
AND filter = '{{ filter }}'
AND orderBy = '{{ orderBy }}'
AND skiptoken = '{{ skiptoken }}'
AND refreshSummary = '{{ refreshSummary }}'
AND selectedState = '{{ selectedState }}'
AND take = '{{ take }}'
;
```
</TabItem>
<TabItem value="list_by_reservation_order">

List Reservations within a single ReservationOrder in the billing account.

```sql
SELECT
etag,
location,
properties,
sku,
tags
FROM azure.billing.reservations
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND reservationOrderId = '{{ reservationOrderId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_billing_account">

Lists the reservations in the billing account and the roll up counts of reservations group by provisioning states.

```sql
SELECT
etag,
location,
properties,
sku,
tags
FROM azure.billing.reservations
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND filter = '{{ filter }}'
AND orderBy = '{{ orderBy }}'
AND skiptoken = '{{ skiptoken }}'
AND refreshSummary = '{{ refreshSummary }}'
AND selectedState = '{{ selectedState }}'
AND take = '{{ take }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="update_by_billing_account"
    values={[
        { label: 'update_by_billing_account', value: 'update_by_billing_account' }
    ]}
>
<TabItem value="update_by_billing_account">

Update reservation by billing account.

```sql
EXEC azure.billing.reservations.update_by_billing_account 
@billingAccountName='{{ billingAccountName }}' --required, 
@reservationOrderId='{{ reservationOrderId }}' --required, 
@reservationId='{{ reservationId }}' --required 
@@json=
'{
"properties": "{{ properties }}", 
"sku": "{{ sku }}", 
"tags": "{{ tags }}"
}'
;
```
</TabItem>
</Tabs>
