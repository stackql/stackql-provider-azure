--- 
title: returns
hide_title: false
hide_table_of_contents: false
keywords:
  - returns
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

Creates, updates, deletes, gets or lists a <code>returns</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>returns</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.reservations.returns" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#post"><CopyableCode code="post" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-reservationOrderId"><code>reservationOrderId</code></a></td>
    <td></td>
    <td>Return a reservation and get refund information.</td>
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
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="post"
    values={[
        { label: 'post', value: 'post' }
    ]}
>
<TabItem value="post">

Return a reservation and get refund information.

```sql
EXEC azure.reservations.returns.post 
@reservationOrderId='{{ reservationOrderId }}' --required 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
</Tabs>
