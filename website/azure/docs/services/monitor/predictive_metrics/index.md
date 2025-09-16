--- 
title: predictive_metrics
hide_title: false
hide_table_of_contents: false
keywords:
  - predictive_metrics
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

Creates, updates, deletes, gets or lists a <code>predictive_metrics</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>predictive_metrics</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.monitor.predictive_metrics" /></td></tr>
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
    <td><CopyableCode code="data" /></td>
    <td><code>array</code></td>
    <td>the value of the collection.</td>
</tr>
<tr>
    <td><CopyableCode code="interval" /></td>
    <td><code>string (duration)</code></td>
    <td>The interval (window size) for which the metric data was returned in.  This may be adjusted in the future and returned back from what was originally requested.  This is not present if a metadata request was made.</td>
</tr>
<tr>
    <td><CopyableCode code="metricName" /></td>
    <td><code>string</code></td>
    <td>The metrics being queried</td>
</tr>
<tr>
    <td><CopyableCode code="targetResourceId" /></td>
    <td><code>string</code></td>
    <td>resource of the predictive metric.</td>
</tr>
<tr>
    <td><CopyableCode code="timespan" /></td>
    <td><code>string</code></td>
    <td>The timespan for which the data was retrieved. Its value consists of two datetimes concatenated, separated by '/'.  This may be adjusted in the future and returned back from what was originally requested.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-autoscaleSettingName"><code>autoscaleSettingName</code></a>, <a href="#parameter-aggregation"><code>aggregation</code></a></td>
    <td><a href="#parameter-timespan"><code>timespan</code></a>, <a href="#parameter-interval"><code>interval</code></a>, <a href="#parameter-metricnamespace"><code>metricnamespace</code></a>, <a href="#parameter-metricnames"><code>metricnames</code></a></td>
    <td>get predictive autoscale metric future data</td>
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
<tr id="parameter-aggregation">
    <td><CopyableCode code="aggregation" /></td>
    <td><code>string</code></td>
    <td>The list of aggregation types (comma separated) to retrieve.</td>
</tr>
<tr id="parameter-autoscaleSettingName">
    <td><CopyableCode code="autoscaleSettingName" /></td>
    <td><code>string</code></td>
    <td>The autoscale setting name.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
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
<tr id="parameter-timespan">
    <td><CopyableCode code="timespan" /></td>
    <td><code>string</code></td>
    <td>The timespan of the query. It is a string with the following format 'startDateTime_ISO/endDateTime_ISO'.</td>
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

get predictive autoscale metric future data

```sql
SELECT
data,
interval,
metricName,
targetResourceId,
timespan
FROM azure.monitor.predictive_metrics
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND autoscaleSettingName = '{{ autoscaleSettingName }}' -- required
AND aggregation = '{{ aggregation }}' -- required
AND timespan = '{{ timespan }}'
AND interval = '{{ interval }}'
AND metricnamespace = '{{ metricnamespace }}'
AND metricnames = '{{ metricnames }}'
;
```
</TabItem>
</Tabs>
