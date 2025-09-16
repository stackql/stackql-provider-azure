--- 
title: metric_definitions
hide_title: false
hide_table_of_contents: false
keywords:
  - metric_definitions
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

Creates, updates, deletes, gets or lists a <code>metric_definitions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>metric_definitions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.monitor.metric_definitions" /></td></tr>
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

Successful request to get the list of metric definitions

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
    <td>The resource identifier of the metric definition.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>object</code></td>
    <td>The name and the display name of the metric, i.e. it is a localizable string.</td>
</tr>
<tr>
    <td><CopyableCode code="category" /></td>
    <td><code>string</code></td>
    <td>Custom category name for this metric.</td>
</tr>
<tr>
    <td><CopyableCode code="dimensions" /></td>
    <td><code>array</code></td>
    <td>The name and the display name of the dimension, i.e. it is a localizable string.</td>
</tr>
<tr>
    <td><CopyableCode code="displayDescription" /></td>
    <td><code>string</code></td>
    <td>Detailed description of this metric.</td>
</tr>
<tr>
    <td><CopyableCode code="isDimensionRequired" /></td>
    <td><code>boolean</code></td>
    <td>Flag to indicate whether the dimension is required.</td>
</tr>
<tr>
    <td><CopyableCode code="metricAvailabilities" /></td>
    <td><code>array</code></td>
    <td>The collection of what aggregation intervals are available to be queried.</td>
</tr>
<tr>
    <td><CopyableCode code="metricClass" /></td>
    <td><code>string</code></td>
    <td>The class of the metric.</td>
</tr>
<tr>
    <td><CopyableCode code="namespace" /></td>
    <td><code>string</code></td>
    <td>The namespace the metric belongs to.</td>
</tr>
<tr>
    <td><CopyableCode code="primaryAggregationType" /></td>
    <td><code>string</code></td>
    <td>The primary aggregation type value defining how to use the values for display.</td>
</tr>
<tr>
    <td><CopyableCode code="resourceId" /></td>
    <td><code>string</code></td>
    <td>The resource identifier of the resource that emitted the metric.</td>
</tr>
<tr>
    <td><CopyableCode code="supportedAggregationTypes" /></td>
    <td><code>array</code></td>
    <td>The collection of what aggregation types are supported.</td>
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
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a></td>
    <td><a href="#parameter-metricnamespace"><code>metricnamespace</code></a></td>
    <td>Lists the metric definitions for the resource.</td>
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
<tr id="parameter-resourceUri">
    <td><CopyableCode code="resourceUri" /></td>
    <td><code>string</code></td>
    <td>The identifier of the resource.</td>
</tr>
<tr id="parameter-metricnamespace">
    <td><CopyableCode code="metricnamespace" /></td>
    <td><code>string</code></td>
    <td>Metric namespace to query metric definitions for.</td>
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

Lists the metric definitions for the resource.

```sql
SELECT
id,
name,
category,
dimensions,
displayDescription,
isDimensionRequired,
metricAvailabilities,
metricClass,
namespace,
primaryAggregationType,
resourceId,
supportedAggregationTypes,
unit
FROM azure.monitor.metric_definitions
WHERE resourceUri = '{{ resourceUri }}' -- required
AND metricnamespace = '{{ metricnamespace }}'
;
```
</TabItem>
</Tabs>
