--- 
title: share_subscriptions_synchronization_details
hide_title: false
hide_table_of_contents: false
keywords:
  - share_subscriptions_synchronization_details
  - data_share
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

Creates, updates, deletes, gets or lists a <code>share_subscriptions_synchronization_details</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>share_subscriptions_synchronization_details</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_share.share_subscriptions_synchronization_details" /></td></tr>
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
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the data set</td>
</tr>
<tr>
    <td><CopyableCode code="dataSetId" /></td>
    <td><code>string</code></td>
    <td>Id of data set</td>
</tr>
<tr>
    <td><CopyableCode code="dataSetType" /></td>
    <td><code>string</code></td>
    <td>Type of the data set</td>
</tr>
<tr>
    <td><CopyableCode code="durationMs" /></td>
    <td><code>integer (int32)</code></td>
    <td>Duration of data set level copy</td>
</tr>
<tr>
    <td><CopyableCode code="endTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>End time of data set level copy</td>
</tr>
<tr>
    <td><CopyableCode code="filesRead" /></td>
    <td><code>integer (int64)</code></td>
    <td>The number of files read from the source data set</td>
</tr>
<tr>
    <td><CopyableCode code="filesWritten" /></td>
    <td><code>integer (int64)</code></td>
    <td>The number of files written into the sink data set</td>
</tr>
<tr>
    <td><CopyableCode code="message" /></td>
    <td><code>string</code></td>
    <td>Error message if any</td>
</tr>
<tr>
    <td><CopyableCode code="rowsCopied" /></td>
    <td><code>integer (int64)</code></td>
    <td>The number of files copied into the sink data set</td>
</tr>
<tr>
    <td><CopyableCode code="rowsRead" /></td>
    <td><code>integer (int64)</code></td>
    <td>The number of rows read from the source data set.</td>
</tr>
<tr>
    <td><CopyableCode code="sizeRead" /></td>
    <td><code>integer (int64)</code></td>
    <td>The size of the data read from the source data set in bytes</td>
</tr>
<tr>
    <td><CopyableCode code="sizeWritten" /></td>
    <td><code>integer (int64)</code></td>
    <td>The size of the data written into the sink data set in bytes</td>
</tr>
<tr>
    <td><CopyableCode code="startTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Start time of data set level copy</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Raw Status</td>
</tr>
<tr>
    <td><CopyableCode code="vCore" /></td>
    <td><code>integer (int64)</code></td>
    <td>The vCore units consumed for the data set synchronization</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-shareSubscriptionName"><code>shareSubscriptionName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-$skipToken"><code>$skipToken</code></a>, <a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$orderby"><code>$orderby</code></a></td>
    <td>List synchronization details</td>
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
<tr id="parameter-accountName">
    <td><CopyableCode code="accountName" /></td>
    <td><code>string</code></td>
    <td>The name of the share account.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The resource group name.</td>
</tr>
<tr id="parameter-shareSubscriptionName">
    <td><CopyableCode code="shareSubscriptionName" /></td>
    <td><code>string</code></td>
    <td>The name of the share subscription.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription identifier</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>Filters the results using OData syntax.</td>
</tr>
<tr id="parameter-$orderby">
    <td><CopyableCode code="$orderby" /></td>
    <td><code>string</code></td>
    <td>Sorts the results using OData syntax.</td>
</tr>
<tr id="parameter-$skipToken">
    <td><CopyableCode code="$skipToken" /></td>
    <td><code>string</code></td>
    <td>Continuation token</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>The api version to use.</td>
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

List synchronization details

```sql
SELECT
name,
dataSetId,
dataSetType,
durationMs,
endTime,
filesRead,
filesWritten,
message,
rowsCopied,
rowsRead,
sizeRead,
sizeWritten,
startTime,
status,
vCore
FROM azure.data_share.share_subscriptions_synchronization_details
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND shareSubscriptionName = '{{ shareSubscriptionName }}' -- required
AND api-version = '{{ api-version }}'
AND $skipToken = '{{ $skipToken }}'
AND $filter = '{{ $filter }}'
AND $orderby = '{{ $orderby }}'
;
```
</TabItem>
</Tabs>
