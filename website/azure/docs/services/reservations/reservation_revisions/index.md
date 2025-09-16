--- 
title: reservation_revisions
hide_title: false
hide_table_of_contents: false
keywords:
  - reservation_revisions
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

Creates, updates, deletes, gets or lists a <code>reservation_revisions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>reservation_revisions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.reservations.reservation_revisions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

List of all the revisions for the `Reservation`.

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
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-reservationOrderId"><code>reservationOrderId</code></a>, <a href="#parameter-reservationId"><code>reservationId</code></a></td>
    <td></td>
    <td>List of all the revisions for the `Reservation`.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

List of all the revisions for the `Reservation`.

```sql
SELECT
etag,
kind,
location,
properties,
sku
FROM azure.reservations.reservation_revisions
WHERE reservationOrderId = '{{ reservationOrderId }}' -- required
AND reservationId = '{{ reservationId }}' -- required
;
```
</TabItem>
</Tabs>
