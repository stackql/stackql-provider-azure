--- 
title: jobs
hide_title: false
hide_table_of_contents: false
keywords:
  - jobs
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

Creates, updates, deletes, gets or lists a <code>jobs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>jobs</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.storsimple_1200_series.jobs" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_device', value: 'list_by_device' },
        { label: 'list_by_manager', value: 'list_by_manager' }
    ]}
>
<TabItem value="get">

The job.

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
    <td>The identifier.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name.</td>
</tr>
<tr>
    <td><CopyableCode code="endTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The UTC time at which the job completed</td>
</tr>
<tr>
    <td><CopyableCode code="error" /></td>
    <td><code>object</code></td>
    <td>The Error details.</td>
</tr>
<tr>
    <td><CopyableCode code="percentComplete" /></td>
    <td><code>integer (int32)</code></td>
    <td>The percentage of the job that is already complete</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Other properties of the job</td>
</tr>
<tr>
    <td><CopyableCode code="startTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The UTC time at which the job was started</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Current status of the job</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_device">

The collection of jobs.

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
    <td>The identifier.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name.</td>
</tr>
<tr>
    <td><CopyableCode code="endTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The UTC time at which the job completed</td>
</tr>
<tr>
    <td><CopyableCode code="error" /></td>
    <td><code>object</code></td>
    <td>The Error details.</td>
</tr>
<tr>
    <td><CopyableCode code="percentComplete" /></td>
    <td><code>integer (int32)</code></td>
    <td>The percentage of the job that is already complete</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Other properties of the job</td>
</tr>
<tr>
    <td><CopyableCode code="startTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The UTC time at which the job was started</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Current status of the job</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_manager">

The collection of jobs.

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
    <td>The identifier.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name.</td>
</tr>
<tr>
    <td><CopyableCode code="endTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The UTC time at which the job completed</td>
</tr>
<tr>
    <td><CopyableCode code="error" /></td>
    <td><code>object</code></td>
    <td>The Error details.</td>
</tr>
<tr>
    <td><CopyableCode code="percentComplete" /></td>
    <td><code>integer (int32)</code></td>
    <td>The percentage of the job that is already complete</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Other properties of the job</td>
</tr>
<tr>
    <td><CopyableCode code="startTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The UTC time at which the job was started</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Current status of the job</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type.</td>
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
    <td><a href="#parameter-deviceName"><code>deviceName</code></a>, <a href="#parameter-jobName"><code>jobName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managerName"><code>managerName</code></a></td>
    <td></td>
    <td>Returns the properties of the specified job name.</td>
</tr>
<tr>
    <td><a href="#list_by_device"><CopyableCode code="list_by_device" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-deviceName"><code>deviceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managerName"><code>managerName</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Retrieves all the jobs in a device.</td>
</tr>
<tr>
    <td><a href="#list_by_manager"><CopyableCode code="list_by_manager" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managerName"><code>managerName</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Retrieves all the jobs in a manager.</td>
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
<tr id="parameter-jobName">
    <td><CopyableCode code="jobName" /></td>
    <td><code>string</code></td>
    <td>The job name.</td>
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
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_device', value: 'list_by_device' },
        { label: 'list_by_manager', value: 'list_by_manager' }
    ]}
>
<TabItem value="get">

Returns the properties of the specified job name.

```sql
SELECT
id,
name,
endTime,
error,
percentComplete,
properties,
startTime,
status,
type
FROM azure_extras.storsimple_1200_series.jobs
WHERE deviceName = '{{ deviceName }}' -- required
AND jobName = '{{ jobName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND managerName = '{{ managerName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_device">

Retrieves all the jobs in a device.

```sql
SELECT
id,
name,
endTime,
error,
percentComplete,
properties,
startTime,
status,
type
FROM azure_extras.storsimple_1200_series.jobs
WHERE deviceName = '{{ deviceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND managerName = '{{ managerName }}' -- required
AND $filter = '{{ $filter }}'
;
```
</TabItem>
<TabItem value="list_by_manager">

Retrieves all the jobs in a manager.

```sql
SELECT
id,
name,
endTime,
error,
percentComplete,
properties,
startTime,
status,
type
FROM azure_extras.storsimple_1200_series.jobs
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND managerName = '{{ managerName }}' -- required
AND $filter = '{{ $filter }}'
;
```
</TabItem>
</Tabs>
