--- 
title: async_operations
hide_title: false
hide_table_of_contents: false
keywords:
  - async_operations
  - storage_admin
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

Creates, updates, deletes, gets or lists an <code>async_operations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>async_operations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.storage_admin.async_operations" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

OK -- The async operation has been returned.

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
    <td>The operation id.</td>
</tr>
<tr>
    <td><CopyableCode code="context" /></td>
    <td><code>object</code></td>
    <td>Operation context.</td>
</tr>
<tr>
    <td><CopyableCode code="httpStatus" /></td>
    <td><code>string</code></td>
    <td>Http status for the async operation.</td>
</tr>
<tr>
    <td><CopyableCode code="locationHeader" /></td>
    <td><code>string</code></td>
    <td>Location header for async operation.</td>
</tr>
<tr>
    <td><CopyableCode code="operation" /></td>
    <td><code>object</code></td>
    <td>Async operation content.</td>
</tr>
<tr>
    <td><CopyableCode code="operationEndTime" /></td>
    <td><code>string</code></td>
    <td>Operation end time.</td>
</tr>
<tr>
    <td><CopyableCode code="operationStartTime" /></td>
    <td><code>string</code></td>
    <td>Operation start time.</td>
</tr>
<tr>
    <td><CopyableCode code="response" /></td>
    <td><code>string</code></td>
    <td>Response for the async operation.</td>
</tr>
<tr>
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription id for async operation.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-asyncOperationId"><code>asyncOperationId</code></a></td>
    <td></td>
    <td>Returns the async operation specified by asyncOperationId.</td>
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
<tr id="parameter-asyncOperationId">
    <td><CopyableCode code="asyncOperationId" /></td>
    <td><code>string</code></td>
    <td>Async Operation Id.</td>
</tr>
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription Id.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Returns the async operation specified by asyncOperationId.

```sql
SELECT
id,
context,
httpStatus,
locationHeader,
operation,
operationEndTime,
operationStartTime,
response,
subscriptionId
FROM azure_stack.storage_admin.async_operations
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND location = '{{ location }}' -- required
AND asyncOperationId = '{{ asyncOperationId }}' -- required
;
```
</TabItem>
</Tabs>
