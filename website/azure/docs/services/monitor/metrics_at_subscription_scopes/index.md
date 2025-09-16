--- 
title: metrics_at_subscription_scopes
hide_title: false
hide_table_of_contents: false
keywords:
  - metrics_at_subscription_scopes
  - monitor
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

Creates, updates, deletes, gets or lists a <code>metrics_at_subscription_scopes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>metrics_at_subscription_scopes</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.monitor.metrics_at_subscription_scopes" /></td></tr>
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

Successful request to get the list of metric values.

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
    <td>The metric Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>object</code></td>
    <td>The name and the display name of the metric, i.e. it is localizable string.</td>
</tr>
<tr>
    <td><CopyableCode code="displayDescription" /></td>
    <td><code>string</code></td>
    <td>Detailed description of this metric.</td>
</tr>
<tr>
    <td><CopyableCode code="errorCode" /></td>
    <td><code>string</code></td>
    <td>'Success' or the error details on query failures for this metric.</td>
</tr>
<tr>
    <td><CopyableCode code="errorMessage" /></td>
    <td><code>string</code></td>
    <td>Error message encountered querying this specific metric.</td>
</tr>
<tr>
    <td><CopyableCode code="timeseries" /></td>
    <td><code>array</code></td>
    <td>The time series returned when a data query is performed.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The resource type of the metric resource.</td>
</tr>
<tr>
    <td><CopyableCode code="unit" /></td>
    <td><code>string</code></td>
    <td>The unit of the metric.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-region"><code>region</code></a></td>
    <td><a href="#parameter-timespan"><code>timespan</code></a>, <a href="#parameter-interval"><code>interval</code></a>, <a href="#parameter-metricnames"><code>metricnames</code></a>, <a href="#parameter-aggregation"><code>aggregation</code></a>, <a href="#parameter-top"><code>top</code></a>, <a href="#parameter-orderby"><code>orderby</code></a>, <a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-resultType"><code>resultType</code></a>, <a href="#parameter-metricnamespace"><code>metricnamespace</code></a>, <a href="#parameter-AutoAdjustTimegrain"><code>AutoAdjustTimegrain</code></a>, <a href="#parameter-ValidateDimensions"><code>ValidateDimensions</code></a>, <a href="#parameter-rollupby"><code>rollupby</code></a></td>
    <td>**Lists the metric data for a subscription**.</td>
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
<tr id="parameter-region">
    <td><CopyableCode code="region" /></td>
    <td><code>string</code></td>
    <td>The region where the metrics you want reside.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The **$filter** is used to reduce the set of metric data returned.<br />Example:<br />Metric contains metadata A, B and C.<br />- Return all time series of C where A = a1 and B = b1 or b2<br />**$filter=A eq ‘a1’ and B eq ‘b1’ or B eq ‘b2’ and C eq ‘*’**<br />- Invalid variant:<br />**$filter=A eq ‘a1’ and B eq ‘b1’ and C eq ‘*’ or B = ‘b2’**<br />This is invalid because the logical or operator cannot separate two different metadata names.<br />- Return all time series where A = a1, B = b1 and C = c1:<br />**$filter=A eq ‘a1’ and B eq ‘b1’ and C eq ‘c1’**<br />- Return all time series where A = a1<br />**$filter=A eq ‘a1’ and B eq ‘*’ and C eq ‘*’**.</td>
</tr>
<tr id="parameter-AutoAdjustTimegrain">
    <td><CopyableCode code="AutoAdjustTimegrain" /></td>
    <td><code>boolean</code></td>
    <td>When set to true, if the timespan passed in is not supported by this metric, the API will return the result using the closest supported timespan. When set to false, an error is returned for invalid timespan parameters. Defaults to false.</td>
</tr>
<tr id="parameter-ValidateDimensions">
    <td><CopyableCode code="ValidateDimensions" /></td>
    <td><code>boolean</code></td>
    <td>When set to false, invalid filter parameter values will be ignored. When set to true, an error is returned for invalid filter parameters. Defaults to true.</td>
</tr>
<tr id="parameter-aggregation">
    <td><CopyableCode code="aggregation" /></td>
    <td><code>string</code></td>
    <td>The list of aggregation types (comma separated) to retrieve.</td>
</tr>
<tr id="parameter-interval">
    <td><CopyableCode code="interval" /></td>
    <td><code>string</code></td>
    <td>The interval (i.e. timegrain) of the query in ISO 8601 duration format. Defaults to PT1M. Special case for 'FULL' value that returns single datapoint for entire time span requested. *Examples: PT15M, PT1H, P1D, FULL*</td>
</tr>
<tr id="parameter-metricnames">
    <td><CopyableCode code="metricnames" /></td>
    <td><code>string</code></td>
    <td>The names of the metrics (comma separated) to retrieve.</td>
</tr>
<tr id="parameter-metricnamespace">
    <td><CopyableCode code="metricnamespace" /></td>
    <td><code>string</code></td>
    <td>Metric namespace to query metric definitions for.</td>
</tr>
<tr id="parameter-orderby">
    <td><CopyableCode code="orderby" /></td>
    <td><code>string</code></td>
    <td>The aggregation to use for sorting results and the direction of the sort. Only one order can be specified. *Examples: sum asc*</td>
</tr>
<tr id="parameter-resultType">
    <td><CopyableCode code="resultType" /></td>
    <td><code>string</code></td>
    <td>Reduces the set of data collected. The syntax allowed depends on the operation. See the operation's description for details.</td>
</tr>
<tr id="parameter-rollupby">
    <td><CopyableCode code="rollupby" /></td>
    <td><code>string</code></td>
    <td>Dimension name(s) to rollup results by. For example if you only want to see metric values with a filter like 'City eq Seattle or City eq Tacoma' but don't want to see separate values for each city, you can specify 'RollUpBy=City' to see the results for Seattle and Tacoma rolled up into one timeseries.</td>
</tr>
<tr id="parameter-timespan">
    <td><CopyableCode code="timespan" /></td>
    <td><code>string</code></td>
    <td>The timespan of the query. It is a string with the following format 'startDateTime_ISO/endDateTime_ISO'.</td>
</tr>
<tr id="parameter-top">
    <td><CopyableCode code="top" /></td>
    <td><code>integer (int32)</code></td>
    <td>The maximum number of records to retrieve per resource ID in the request. Valid only if filter is specified. Defaults to 10.</td>
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

**Lists the metric data for a subscription**.

```sql
SELECT
id,
name,
displayDescription,
errorCode,
errorMessage,
timeseries,
type,
unit
FROM azure.monitor.metrics_at_subscription_scopes
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND region = '{{ region }}' -- required
AND timespan = '{{ timespan }}'
AND interval = '{{ interval }}'
AND metricnames = '{{ metricnames }}'
AND aggregation = '{{ aggregation }}'
AND top = '{{ top }}'
AND orderby = '{{ orderby }}'
AND $filter = '{{ $filter }}'
AND resultType = '{{ resultType }}'
AND metricnamespace = '{{ metricnamespace }}'
AND AutoAdjustTimegrain = '{{ AutoAdjustTimegrain }}'
AND ValidateDimensions = '{{ ValidateDimensions }}'
AND rollupby = '{{ rollupby }}'
;
```
</TabItem>
</Tabs>
