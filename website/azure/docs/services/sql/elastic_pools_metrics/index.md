--- 
title: elastic_pools_metrics
hide_title: false
hide_table_of_contents: false
keywords:
  - elastic_pools_metrics
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

Creates, updates, deletes, gets or lists an <code>elastic_pools_metrics</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>elastic_pools_metrics</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.elastic_pools_metrics" /></td></tr>
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
    <td><code>object</code></td>
    <td>The name information for the metric.</td>
</tr>
<tr>
    <td><CopyableCode code="endTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The end time for the metric (ISO-8601 format).</td>
</tr>
<tr>
    <td><CopyableCode code="metricValues" /></td>
    <td><code>array</code></td>
    <td>The metric values for the specified time window and timestep.</td>
</tr>
<tr>
    <td><CopyableCode code="startTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The start time for the metric (ISO-8601 format).</td>
</tr>
<tr>
    <td><CopyableCode code="timeGrain" /></td>
    <td><code>string</code></td>
    <td>The time step to be used to summarize the metric values.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-elasticPoolName"><code>elasticPoolName</code></a>, <a href="#parameter-$filter"><code>$filter</code></a></td>
    <td></td>
    <td>Returns elastic pool  metrics.</td>
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
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>An OData filter expression that describes a subset of metrics to return.</td>
</tr>
<tr id="parameter-elasticPoolName">
    <td><CopyableCode code="elasticPoolName" /></td>
    <td><code>string</code></td>
    <td>The name of the elastic pool.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.</td>
</tr>
<tr id="parameter-serverName">
    <td><CopyableCode code="serverName" /></td>
    <td><code>string</code></td>
    <td>The name of the server.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription ID that identifies an Azure subscription.</td>
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

Returns elastic pool  metrics.

```sql
SELECT
name,
endTime,
metricValues,
startTime,
timeGrain,
unit
FROM azure.sql.elastic_pools_metrics
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND serverName = '{{ serverName }}' -- required
AND elasticPoolName = '{{ elasticPoolName }}' -- required
AND $filter = '{{ $filter }}' -- required
;
```
</TabItem>
</Tabs>
