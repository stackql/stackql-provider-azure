--- 
title: services_metric_metadata
hide_title: false
hide_table_of_contents: false
keywords:
  - services_metric_metadata
  - ad_hybrid_health_service
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

Creates, updates, deletes, gets or lists a <code>services_metric_metadata</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>services_metric_metadata</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ad_hybrid_health_service.services_metric_metadata" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

The metric metadata for a given metric.

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
    <td><CopyableCode code="displayName" /></td>
    <td><code>string</code></td>
    <td>The display name for the metric.</td>
</tr>
<tr>
    <td><CopyableCode code="groupings" /></td>
    <td><code>array</code></td>
    <td>The groupings for the metrics.</td>
</tr>
<tr>
    <td><CopyableCode code="isDefault" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if the metric is a default metric or not.</td>
</tr>
<tr>
    <td><CopyableCode code="isDevOps" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if the metric is visible to DevOps or not.</td>
</tr>
<tr>
    <td><CopyableCode code="isPerfCounter" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if the metric is a performance counter metric or not.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Indicates whether the dashboard to represent the metric is a line, bar,pie, area or donut chart.</td>
</tr>
<tr>
    <td><CopyableCode code="maxValue" /></td>
    <td><code>integer</code></td>
    <td>The maximum value.</td>
</tr>
<tr>
    <td><CopyableCode code="metricName" /></td>
    <td><code>string</code></td>
    <td>The metric name</td>
</tr>
<tr>
    <td><CopyableCode code="metricsProcessorClassName" /></td>
    <td><code>string</code></td>
    <td>The name of the class which retrieve and process the metric.</td>
</tr>
<tr>
    <td><CopyableCode code="minValue" /></td>
    <td><code>integer</code></td>
    <td>The minimum value.</td>
</tr>
<tr>
    <td><CopyableCode code="valueKind" /></td>
    <td><code>string</code></td>
    <td>Indicates if the metrics is a rate,value, percent or duration type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

The list of metric metadata for a given service.

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
    <td><CopyableCode code="displayName" /></td>
    <td><code>string</code></td>
    <td>The display name for the metric.</td>
</tr>
<tr>
    <td><CopyableCode code="groupings" /></td>
    <td><code>array</code></td>
    <td>The groupings for the metrics.</td>
</tr>
<tr>
    <td><CopyableCode code="isDefault" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if the metric is a default metric or not.</td>
</tr>
<tr>
    <td><CopyableCode code="isDevOps" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if the metric is visible to DevOps or not.</td>
</tr>
<tr>
    <td><CopyableCode code="isPerfCounter" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if the metric is a performance counter metric or not.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Indicates whether the dashboard to represent the metric is a line, bar,pie, area or donut chart.</td>
</tr>
<tr>
    <td><CopyableCode code="maxValue" /></td>
    <td><code>integer</code></td>
    <td>The maximum value.</td>
</tr>
<tr>
    <td><CopyableCode code="metricName" /></td>
    <td><code>string</code></td>
    <td>The metric name</td>
</tr>
<tr>
    <td><CopyableCode code="metricsProcessorClassName" /></td>
    <td><code>string</code></td>
    <td>The name of the class which retrieve and process the metric.</td>
</tr>
<tr>
    <td><CopyableCode code="minValue" /></td>
    <td><code>integer</code></td>
    <td>The minimum value.</td>
</tr>
<tr>
    <td><CopyableCode code="valueKind" /></td>
    <td><code>string</code></td>
    <td>Indicates if the metrics is a rate,value, percent or duration type.</td>
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
    <td><a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-metricName"><code>metricName</code></a></td>
    <td></td>
    <td>Gets the service related metrics information.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-serviceName"><code>serviceName</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-perfCounter"><code>perfCounter</code></a></td>
    <td>Gets the service related metrics information.</td>
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
<tr id="parameter-metricName">
    <td><CopyableCode code="metricName" /></td>
    <td><code>string</code></td>
    <td>The metric name</td>
</tr>
<tr id="parameter-serviceName">
    <td><CopyableCode code="serviceName" /></td>
    <td><code>string</code></td>
    <td>The name of the service.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The metric metadata property filter to apply.</td>
</tr>
<tr id="parameter-perfCounter">
    <td><CopyableCode code="perfCounter" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if only performance counter metrics are requested.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Gets the service related metrics information.

```sql
SELECT
displayName,
groupings,
isDefault,
isDevOps,
isPerfCounter,
kind,
maxValue,
metricName,
metricsProcessorClassName,
minValue,
valueKind
FROM azure.ad_hybrid_health_service.services_metric_metadata
WHERE serviceName = '{{ serviceName }}' -- required
AND metricName = '{{ metricName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets the service related metrics information.

```sql
SELECT
displayName,
groupings,
isDefault,
isDevOps,
isPerfCounter,
kind,
maxValue,
metricName,
metricsProcessorClassName,
minValue,
valueKind
FROM azure.ad_hybrid_health_service.services_metric_metadata
WHERE serviceName = '{{ serviceName }}' -- required
AND $filter = '{{ $filter }}'
AND perfCounter = '{{ perfCounter }}'
;
```
</TabItem>
</Tabs>
