--- 
title: usage_aggregates
hide_title: false
hide_table_of_contents: false
keywords:
  - usage_aggregates
  - commerce
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>usage_aggregates</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>usage_aggregates</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.commerce.usage_aggregates" /></td></tr>
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

Normal response for a successful query. The response body will contain the data that matches the filters specified in the query parameters.

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
    <td>Unique Id for the usage aggregate.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the usage aggregate.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Usage data.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of the resource being returned.</td>
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
    <td><a href="#parameter-reportedStartTime"><code>reportedStartTime</code></a>, <a href="#parameter-reportedEndTime"><code>reportedEndTime</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-showDetails"><code>showDetails</code></a>, <a href="#parameter-aggregationGranularity"><code>aggregationGranularity</code></a>, <a href="#parameter-continuationToken"><code>continuationToken</code></a></td>
    <td>Query aggregated Azure subscription consumption data for a date range.</td>
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
    <td>The end of the time range to retrieve data for.</td>
</tr>
<tr id="parameter-reportedStartTime">
    <td><CopyableCode code="reportedStartTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The start of the time range to retrieve data for.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>It uniquely identifies Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
<tr id="parameter-aggregationGranularity">
    <td><CopyableCode code="aggregationGranularity" /></td>
    <td><code>string</code></td>
    <td>`Daily` (default) returns the data in daily granularity, `Hourly` returns the data in hourly granularity.</td>
</tr>
<tr id="parameter-continuationToken">
    <td><CopyableCode code="continuationToken" /></td>
    <td><code>string</code></td>
    <td>Used when a continuation token string is provided in the response body of the previous call, enabling paging through a large result set. If not present, the data is retrieved from the beginning of the day/hour (based on the granularity) passed in. </td>
</tr>
<tr id="parameter-showDetails">
    <td><CopyableCode code="showDetails" /></td>
    <td><code>boolean</code></td>
    <td>`True` returns usage data in instance-level detail, `false` causes server-side aggregation with fewer details. For example, if you have 3 website instances, by default you will get 3 line items for website consumption. If you specify showDetails = false, the data will be aggregated as a single line item for website consumption within the time period (for the given subscriptionId, meterId, usageStartTime and usageEndTime).</td>
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

Query aggregated Azure subscription consumption data for a date range.

```sql
SELECT
id,
name,
properties,
type
FROM azure_extras.commerce.usage_aggregates
WHERE reportedStartTime = '{{ reportedStartTime }}' -- required
AND reportedEndTime = '{{ reportedEndTime }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND showDetails = '{{ showDetails }}'
AND aggregationGranularity = '{{ aggregationGranularity }}'
AND continuationToken = '{{ continuationToken }}'
;
```
</TabItem>
</Tabs>
