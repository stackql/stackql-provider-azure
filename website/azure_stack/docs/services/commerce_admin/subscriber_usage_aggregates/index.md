--- 
title: subscriber_usage_aggregates
hide_title: false
hide_table_of_contents: false
keywords:
  - subscriber_usage_aggregates
  - commerce_admin
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

Creates, updates, deletes, gets or lists a <code>subscriber_usage_aggregates</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>subscriber_usage_aggregates</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.commerce_admin.subscriber_usage_aggregates" /></td></tr>
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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>URI of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Location where resource is location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties for aggregate usage.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>List of key-value pairs.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-reportedStartTime"><code>reportedStartTime</code></a>, <a href="#parameter-reportedEndTime"><code>reportedEndTime</code></a></td>
    <td><a href="#parameter-aggregationGranularity"><code>aggregationGranularity</code></a>, <a href="#parameter-subscriberId"><code>subscriberId</code></a>, <a href="#parameter-continuationToken"><code>continuationToken</code></a></td>
    <td>Gets a collection of SubscriberUsageAggregates, which are UsageAggregates from users.</td>
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
<tr id="parameter-reportedEndTime">
    <td><CopyableCode code="reportedEndTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The reported end time (exclusive).</td>
</tr>
<tr id="parameter-reportedStartTime">
    <td><CopyableCode code="reportedStartTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The reported start time (inclusive).</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription credentials which uniquely identify Microsoft Azure subscription.The subscription ID forms part of the URI for every service call.</td>
</tr>
<tr id="parameter-aggregationGranularity">
    <td><CopyableCode code="aggregationGranularity" /></td>
    <td><code>string</code></td>
    <td>The aggregation granularity.</td>
</tr>
<tr id="parameter-continuationToken">
    <td><CopyableCode code="continuationToken" /></td>
    <td><code>string</code></td>
    <td>The continuation token.</td>
</tr>
<tr id="parameter-subscriberId">
    <td><CopyableCode code="subscriberId" /></td>
    <td><code>string</code></td>
    <td>The tenant subscription identifier.</td>
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

Gets a collection of SubscriberUsageAggregates, which are UsageAggregates from users.

```sql
SELECT
id,
name,
location,
properties,
tags,
type
FROM azure_stack.commerce_admin.subscriber_usage_aggregates
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND reportedStartTime = '{{ reportedStartTime }}' -- required
AND reportedEndTime = '{{ reportedEndTime }}' -- required
AND aggregationGranularity = '{{ aggregationGranularity }}'
AND subscriberId = '{{ subscriberId }}'
AND continuationToken = '{{ continuationToken }}'
;
```
</TabItem>
</Tabs>
