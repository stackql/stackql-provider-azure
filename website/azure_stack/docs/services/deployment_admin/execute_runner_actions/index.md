--- 
title: execute_runner_actions
hide_title: false
hide_table_of_contents: false
keywords:
  - execute_runner_actions
  - deployment_admin
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists an <code>execute_runner_actions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>execute_runner_actions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.deployment_admin.execute_runner_actions" /></td></tr>
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
    <td><a href="#product"><CopyableCode code="product" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-productId"><code>productId</code></a></td>
    <td></td>
    <td>Invokes execute runner action on the product deployment</td>
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
<tr id="parameter-productId">
    <td><CopyableCode code="productId" /></td>
    <td><code>string</code></td>
    <td>The product identifier.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription credentials that uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="product"
    values={[
        { label: 'product', value: 'product' }
    ]}
>
<TabItem value="product">

Invokes execute runner action on the product deployment

```sql
EXEC azure_stack.deployment_admin.execute_runner_actions.product 
@subscriptionId='{{ subscriptionId }}' --required, 
@productId='{{ productId }}' --required 
@@json=
'{
"parameters": "{{ parameters }}"
}'
;
```
</TabItem>
</Tabs>
