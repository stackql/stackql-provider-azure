--- 
title: reservations
hide_title: false
hide_table_of_contents: false
keywords:
  - reservations
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

Creates, updates, deletes, gets or lists a <code>reservations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>reservations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.reservations.reservations" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' },
        { label: 'list_all', value: 'list_all' }
    ]}
>
<TabItem value="get">

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
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Resource Provider type to be reserved.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The Azure region where the reserved resource lives.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties associated to this reservation </td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The name of sku</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

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
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Resource Provider type to be reserved.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The Azure region where the reserved resource lives.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties associated to this reservation </td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The name of sku</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_all">

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
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Resource Provider type to be reserved.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The Azure region where the reserved resource lives.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties associated to this reservation </td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The name of sku</td>
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
    <td><a href="#parameter-reservationOrderId"><code>reservationOrderId</code></a>, <a href="#parameter-reservationId"><code>reservationId</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>Get specific `Reservation` details.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-reservationOrderId"><code>reservationOrderId</code></a></td>
    <td></td>
    <td>List `Reservation`s within a single `ReservationOrder`.</td>
</tr>
<tr>
    <td><a href="#list_all"><CopyableCode code="list_all" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$orderby"><code>$orderby</code></a>, <a href="#parameter-refreshSummary"><code>refreshSummary</code></a>, <a href="#parameter-$skiptoken"><code>$skiptoken</code></a>, <a href="#parameter-selectedState"><code>selectedState</code></a>, <a href="#parameter-take"><code>take</code></a></td>
    <td>List the reservations and the roll up counts of reservations group by provisioning states that the user has access to in the current tenant.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-reservationOrderId"><code>reservationOrderId</code></a>, <a href="#parameter-reservationId"><code>reservationId</code></a></td>
    <td></td>
    <td>Updates the applied scopes of the `Reservation`.</td>
</tr>
<tr>
    <td><a href="#available_scopes"><CopyableCode code="available_scopes" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-reservationOrderId"><code>reservationOrderId</code></a>, <a href="#parameter-reservationId"><code>reservationId</code></a></td>
    <td></td>
    <td>Check whether the scopes from request is valid for `Reservation`.<br /></td>
</tr>
<tr>
    <td><a href="#split"><CopyableCode code="split" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-reservationOrderId"><code>reservationOrderId</code></a></td>
    <td></td>
    <td>Split a `Reservation` into two `Reservation`s with specified quantity distribution.</td>
</tr>
<tr>
    <td><a href="#merge"><CopyableCode code="merge" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-reservationOrderId"><code>reservationOrderId</code></a></td>
    <td></td>
    <td>Merge the specified `Reservation`s into a new `Reservation`. The two `Reservation`s being merged must have same properties.</td>
</tr>
<tr>
    <td><a href="#archive"><CopyableCode code="archive" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-reservationOrderId"><code>reservationOrderId</code></a>, <a href="#parameter-reservationId"><code>reservationId</code></a></td>
    <td></td>
    <td>Archiving a `Reservation` moves it to `Archived` state.</td>
</tr>
<tr>
    <td><a href="#unarchive"><CopyableCode code="unarchive" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-reservationOrderId"><code>reservationOrderId</code></a>, <a href="#parameter-reservationId"><code>reservationId</code></a></td>
    <td></td>
    <td>Restores a `Reservation` to the state it was before archiving.<br /></td>
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
<tr id="parameter-$expand">
    <td><CopyableCode code="$expand" /></td>
    <td><code>string</code></td>
    <td>Supported value of this query is renewProperties</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>May be used to filter by reservation properties. The filter supports 'eq', 'or', and 'and'. It does not currently support 'ne', 'gt', 'le', 'ge', or 'not'. Reservation properties include sku/name, properties/&#123;appliedScopeType, archived, displayName, displayProvisioningState, effectiveDateTime, expiryDate, expiryDateTime, provisioningState, quantity, renew, reservedResourceType, term, userFriendlyAppliedScopeType, userFriendlyRenewState&#125;</td>
</tr>
<tr id="parameter-$orderby">
    <td><CopyableCode code="$orderby" /></td>
    <td><code>string</code></td>
    <td>May be used to sort order by reservation properties.</td>
</tr>
<tr id="parameter-$skiptoken">
    <td><CopyableCode code="$skiptoken" /></td>
    <td><code>number</code></td>
    <td>The number of reservations to skip from the list before returning results</td>
</tr>
<tr id="parameter-refreshSummary">
    <td><CopyableCode code="refreshSummary" /></td>
    <td><code>string</code></td>
    <td>To indicate whether to refresh the roll up counts of the reservations group by provisioning states</td>
</tr>
<tr id="parameter-selectedState">
    <td><CopyableCode code="selectedState" /></td>
    <td><code>string</code></td>
    <td>The selected provisioning state</td>
</tr>
<tr id="parameter-take">
    <td><CopyableCode code="take" /></td>
    <td><code>number</code></td>
    <td>To number of reservations to return</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' },
        { label: 'list_all', value: 'list_all' }
    ]}
>
<TabItem value="get">

Get specific `Reservation` details.

```sql
SELECT
etag,
kind,
location,
properties,
sku
FROM azure.reservations.reservations
WHERE reservationOrderId = '{{ reservationOrderId }}' -- required
AND reservationId = '{{ reservationId }}' -- required
AND $expand = '{{ $expand }}'
;
```
</TabItem>
<TabItem value="list">

List `Reservation`s within a single `ReservationOrder`.

```sql
SELECT
etag,
kind,
location,
properties,
sku
FROM azure.reservations.reservations
WHERE reservationOrderId = '{{ reservationOrderId }}' -- required
;
```
</TabItem>
<TabItem value="list_all">

List the reservations and the roll up counts of reservations group by provisioning states that the user has access to in the current tenant.

```sql
SELECT
etag,
kind,
location,
properties,
sku
FROM azure.reservations.reservations
WHERE $filter = '{{ $filter }}'
AND $orderby = '{{ $orderby }}'
AND refreshSummary = '{{ refreshSummary }}'
AND $skiptoken = '{{ $skiptoken }}'
AND selectedState = '{{ selectedState }}'
AND take = '{{ take }}'
;
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update"
    values={[
        { label: 'update', value: 'update' }
    ]}
>
<TabItem value="update">

Updates the applied scopes of the `Reservation`.

```sql
UPDATE azure.reservations.reservations
SET 
data__properties = '{{ properties }}'
WHERE 
reservationOrderId = '{{ reservationOrderId }}' --required
AND reservationId = '{{ reservationId }}' --required
RETURNING
etag,
kind,
location,
properties,
sku;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="available_scopes"
    values={[
        { label: 'available_scopes', value: 'available_scopes' },
        { label: 'split', value: 'split' },
        { label: 'merge', value: 'merge' },
        { label: 'archive', value: 'archive' },
        { label: 'unarchive', value: 'unarchive' }
    ]}
>
<TabItem value="available_scopes">

Check whether the scopes from request is valid for `Reservation`.<br />

```sql
EXEC azure.reservations.reservations.available_scopes 
@reservationOrderId='{{ reservationOrderId }}' --required, 
@reservationId='{{ reservationId }}' --required 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="split">

Split a `Reservation` into two `Reservation`s with specified quantity distribution.

```sql
EXEC azure.reservations.reservations.split 
@reservationOrderId='{{ reservationOrderId }}' --required 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="merge">

Merge the specified `Reservation`s into a new `Reservation`. The two `Reservation`s being merged must have same properties.

```sql
EXEC azure.reservations.reservations.merge 
@reservationOrderId='{{ reservationOrderId }}' --required 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="archive">

Archiving a `Reservation` moves it to `Archived` state.

```sql
EXEC azure.reservations.reservations.archive 
@reservationOrderId='{{ reservationOrderId }}' --required, 
@reservationId='{{ reservationId }}' --required
;
```
</TabItem>
<TabItem value="unarchive">

Restores a `Reservation` to the state it was before archiving.<br />

```sql
EXEC azure.reservations.reservations.unarchive 
@reservationOrderId='{{ reservationOrderId }}' --required, 
@reservationId='{{ reservationId }}' --required
;
```
</TabItem>
</Tabs>
