--- 
title: iscsi_disks_metrics
hide_title: false
hide_table_of_contents: false
keywords:
  - iscsi_disks_metrics
  - storsimple_1200_series
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

Creates, updates, deletes, gets or lists an <code>iscsi_disks_metrics</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>iscsi_disks_metrics</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.storsimple_1200_series.iscsi_disks_metrics" /></td></tr>
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

The collection of metrics.

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
    <td>The name of the metrics</td>
</tr>
<tr>
    <td><CopyableCode code="dimensions" /></td>
    <td><code>array</code></td>
    <td>The Metric dimension which indicates the source of the metric</td>
</tr>
<tr>
    <td><CopyableCode code="endTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The metric end time</td>
</tr>
<tr>
    <td><CopyableCode code="primaryAggregation" /></td>
    <td><code>string</code></td>
    <td>The metric aggregation type</td>
</tr>
<tr>
    <td><CopyableCode code="resourceId" /></td>
    <td><code>string</code></td>
    <td>The id of metric source</td>
</tr>
<tr>
    <td><CopyableCode code="startTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The metric start time</td>
</tr>
<tr>
    <td><CopyableCode code="timeGrain" /></td>
    <td><code>string</code></td>
    <td>The time grain, time grain indicates frequency of the metric data</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The Type of the metric data</td>
</tr>
<tr>
    <td><CopyableCode code="unit" /></td>
    <td><code>string</code></td>
    <td>The unit of the metric data</td>
</tr>
<tr>
    <td><CopyableCode code="values" /></td>
    <td><code>array</code></td>
    <td>The metric data</td>
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
    <td><a href="#parameter-deviceName"><code>deviceName</code></a>, <a href="#parameter-iscsiServerName"><code>iscsiServerName</code></a>, <a href="#parameter-diskName"><code>diskName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managerName"><code>managerName</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Gets the iSCSI disk metrics</td>
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
<tr id="parameter-deviceName">
    <td><CopyableCode code="deviceName" /></td>
    <td><code>string</code></td>
    <td>The device name.</td>
</tr>
<tr id="parameter-diskName">
    <td><CopyableCode code="diskName" /></td>
    <td><code>string</code></td>
    <td>The iSCSI disk name.</td>
</tr>
<tr id="parameter-iscsiServerName">
    <td><CopyableCode code="iscsiServerName" /></td>
    <td><code>string</code></td>
    <td>The iSCSI server name.</td>
</tr>
<tr id="parameter-managerName">
    <td><CopyableCode code="managerName" /></td>
    <td><code>string</code></td>
    <td>The manager name</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The resource group name</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription id</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>OData Filter options</td>
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

Gets the iSCSI disk metrics

```sql
SELECT
name,
dimensions,
endTime,
primaryAggregation,
resourceId,
startTime,
timeGrain,
type,
unit,
values
FROM azure_extras.storsimple_1200_series.iscsi_disks_metrics
WHERE deviceName = '{{ deviceName }}' -- required
AND iscsiServerName = '{{ iscsiServerName }}' -- required
AND diskName = '{{ diskName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND managerName = '{{ managerName }}' -- required
AND $filter = '{{ $filter }}'
;
```
</TabItem>
</Tabs>
