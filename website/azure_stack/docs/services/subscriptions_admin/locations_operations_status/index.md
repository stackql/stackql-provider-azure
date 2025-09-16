--- 
title: locations_operations_status
hide_title: false
hide_table_of_contents: false
keywords:
  - locations_operations_status
  - subscriptions_admin
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

Creates, updates, deletes, gets or lists a <code>locations_operations_status</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>locations_operations_status</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.subscriptions_admin.locations_operations_status" /></td></tr>
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
    <td><code>object</code></td>
    <td>The operation status identifier.</td>
</tr>
<tr>
    <td><CopyableCode code="endTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The end time of the operation.</td>
</tr>
<tr>
    <td><CopyableCode code="error" /></td>
    <td><code>object</code></td>
    <td>The operation error.</td>
</tr>
<tr>
    <td><CopyableCode code="percentComplete" /></td>
    <td><code>number</code></td>
    <td>The completion percentage of the operation.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The internal operation properties.</td>
</tr>
<tr>
    <td><CopyableCode code="responseContent" /></td>
    <td><code>object</code></td>
    <td>The content of the response.</td>
</tr>
<tr>
    <td><CopyableCode code="retryAfter" /></td>
    <td><code>string</code></td>
    <td>The amount of time clients should wait..</td>
</tr>
<tr>
    <td><CopyableCode code="startTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The start time of the operation.</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>The status of the operation.</td>
</tr>
<tr>
    <td><CopyableCode code="terminalHttpStatusCode" /></td>
    <td><code>string</code></td>
    <td>The terminal http status code for the operation.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-operationsStatusName"><code>operationsStatusName</code></a></td>
    <td></td>
    <td>Get the operation status.</td>
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
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The AzureStack location.</td>
</tr>
<tr id="parameter-operationsStatusName">
    <td><CopyableCode code="operationsStatusName" /></td>
    <td><code>string</code></td>
    <td>The operation status name.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription credentials which uniquely identify Microsoft Azure subscription.The subscription ID forms part of the URI for every service call.</td>
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

Get the operation status.

```sql
SELECT
id,
endTime,
error,
percentComplete,
properties,
responseContent,
retryAfter,
startTime,
status,
terminalHttpStatusCode
FROM azure_stack.subscriptions_admin.locations_operations_status
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND location = '{{ location }}' -- required
AND operationsStatusName = '{{ operationsStatusName }}' -- required
;
```
</TabItem>
</Tabs>
