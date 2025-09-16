--- 
title: managed_instances_by_managed_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - managed_instances_by_managed_instances
  - sql
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

Creates, updates, deletes, gets or lists a <code>managed_instances_by_managed_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>managed_instances_by_managed_instances</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.managed_instances_by_managed_instances" /></td></tr>
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

Successfully retrieved top queries for managed instance.

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
    <td><CopyableCode code="aggregationFunction" /></td>
    <td><code>string</code></td>
    <td>Aggregation function used to calculate query metrics.</td>
</tr>
<tr>
    <td><CopyableCode code="endTime" /></td>
    <td><code>string</code></td>
    <td>The end time for the metric (ISO-8601 format).</td>
</tr>
<tr>
    <td><CopyableCode code="intervalType" /></td>
    <td><code>string</code></td>
    <td>Interval type (length).</td>
</tr>
<tr>
    <td><CopyableCode code="numberOfQueries" /></td>
    <td><code>integer (int32)</code></td>
    <td>Requested number of top queries.</td>
</tr>
<tr>
    <td><CopyableCode code="observationMetric" /></td>
    <td><code>string</code></td>
    <td>Metric used to rank queries.</td>
</tr>
<tr>
    <td><CopyableCode code="queries" /></td>
    <td><code>array</code></td>
    <td>List of top resource consuming queries with appropriate metric data</td>
</tr>
<tr>
    <td><CopyableCode code="startTime" /></td>
    <td><code>string</code></td>
    <td>The start time for the metric (ISO-8601 format).</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-numberOfQueries"><code>numberOfQueries</code></a>, <a href="#parameter-databases"><code>databases</code></a>, <a href="#parameter-startTime"><code>startTime</code></a>, <a href="#parameter-endTime"><code>endTime</code></a>, <a href="#parameter-interval"><code>interval</code></a>, <a href="#parameter-aggregationFunction"><code>aggregationFunction</code></a>, <a href="#parameter-observationMetric"><code>observationMetric</code></a></td>
    <td>Get top resource consuming queries of a managed instance.</td>
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
<tr id="parameter-managedInstanceName">
    <td><CopyableCode code="managedInstanceName" /></td>
    <td><code>string</code></td>
    <td>The name of the managed instance.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription ID that identifies an Azure subscription.</td>
</tr>
<tr id="parameter-aggregationFunction">
    <td><CopyableCode code="aggregationFunction" /></td>
    <td><code>string</code></td>
    <td>Aggregation function to be used, default value is 'sum'</td>
</tr>
<tr id="parameter-databases">
    <td><CopyableCode code="databases" /></td>
    <td><code>string</code></td>
    <td>Comma separated list of databases to be included into search. All DB's are included if this parameter is not specified.</td>
</tr>
<tr id="parameter-endTime">
    <td><CopyableCode code="endTime" /></td>
    <td><code>string</code></td>
    <td>End time for observed period.</td>
</tr>
<tr id="parameter-interval">
    <td><CopyableCode code="interval" /></td>
    <td><code>string</code></td>
    <td>The time step to be used to summarize the metric values. Default value is PT1H</td>
</tr>
<tr id="parameter-numberOfQueries">
    <td><CopyableCode code="numberOfQueries" /></td>
    <td><code>integer (int32)</code></td>
    <td>How many 'top queries' to return. Default is 5.</td>
</tr>
<tr id="parameter-observationMetric">
    <td><CopyableCode code="observationMetric" /></td>
    <td><code>string</code></td>
    <td>Metric to be used for ranking top queries. Default is 'cpu'</td>
</tr>
<tr id="parameter-startTime">
    <td><CopyableCode code="startTime" /></td>
    <td><code>string</code></td>
    <td>Start time for observed period.</td>
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

Get top resource consuming queries of a managed instance.

```sql
SELECT
aggregationFunction,
endTime,
intervalType,
numberOfQueries,
observationMetric,
queries,
startTime
FROM azure.sql.managed_instances_by_managed_instances
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND managedInstanceName = '{{ managedInstanceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND numberOfQueries = '{{ numberOfQueries }}'
AND databases = '{{ databases }}'
AND startTime = '{{ startTime }}'
AND endTime = '{{ endTime }}'
AND interval = '{{ interval }}'
AND aggregationFunction = '{{ aggregationFunction }}'
AND observationMetric = '{{ observationMetric }}'
;
```
</TabItem>
</Tabs>
