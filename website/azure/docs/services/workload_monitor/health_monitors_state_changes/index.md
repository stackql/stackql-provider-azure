--- 
title: health_monitors_state_changes
hide_title: false
hide_table_of_contents: false
keywords:
  - health_monitors_state_changes
  - workload_monitor
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

Creates, updates, deletes, gets or lists a <code>health_monitors_state_changes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>health_monitors_state_changes</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.workload_monitor.health_monitors_state_changes" /></td></tr>
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

The health monitor state change matching the specified criteria.

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
    <td>The resource Id. (example: /subscriptions/bc27da3b-3ba2-4e00-a6ec-1fde64aa1e21/resourceGroups/tugamidiAlerts/providers/Microsoft.Compute/virtualMachines/linuxEUS/providers/Microsoft.WorkloadMonitor/monitors/logical-disks|C@3A)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The resource name. (example: logical-disks|C@3A)</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the monitor's state change.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The resource type. (example: Microsoft.WorkloadMonitor/monitors)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

The health monitor state changes matching the specified criteria.

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
    <td>The resource Id. (example: /subscriptions/bc27da3b-3ba2-4e00-a6ec-1fde64aa1e21/resourceGroups/tugamidiAlerts/providers/Microsoft.Compute/virtualMachines/linuxEUS/providers/Microsoft.WorkloadMonitor/monitors/logical-disks|C@3A)</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The resource name. (example: logical-disks|C@3A)</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the monitor's state change.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The resource type. (example: Microsoft.WorkloadMonitor/monitors)</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-providerName"><code>providerName</code></a>, <a href="#parameter-resourceCollectionName"><code>resourceCollectionName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-monitorId"><code>monitorId</code></a>, <a href="#parameter-timestampUnix"><code>timestampUnix</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-$expand"><code>$expand</code></a></td>
    <td></td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-providerName"><code>providerName</code></a>, <a href="#parameter-resourceCollectionName"><code>resourceCollectionName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-monitorId"><code>monitorId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$expand"><code>$expand</code></a>, <a href="#parameter-startTimestampUtc"><code>startTimestampUtc</code></a>, <a href="#parameter-endTimestampUtc"><code>endTimestampUtc</code></a></td>
    <td></td>
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
<tr id="parameter-monitorId">
    <td><CopyableCode code="monitorId" /></td>
    <td><code>string</code></td>
    <td>The monitor Id of the virtual machine.</td>
</tr>
<tr id="parameter-providerName">
    <td><CopyableCode code="providerName" /></td>
    <td><code>string</code></td>
    <td>The provider name (ex: Microsoft.Compute for virtual machines).</td>
</tr>
<tr id="parameter-resourceCollectionName">
    <td><CopyableCode code="resourceCollectionName" /></td>
    <td><code>string</code></td>
    <td>The resource collection name (ex: virtualMachines for virtual machines).</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The resource group of the virtual machine.</td>
</tr>
<tr id="parameter-resourceName">
    <td><CopyableCode code="resourceName" /></td>
    <td><code>string</code></td>
    <td>The name of the virtual machine.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription Id of the virtual machine.</td>
</tr>
<tr id="parameter-timestampUnix">
    <td><CopyableCode code="timestampUnix" /></td>
    <td><code>string</code></td>
    <td>The timestamp of the state change (unix format).</td>
</tr>
<tr id="parameter-$expand">
    <td><CopyableCode code="$expand" /></td>
    <td><code>string</code></td>
    <td>Optionally expand the monitor’s evidence and/or configuration. Example: $expand=evidence,configuration.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>Optionally filter by heartbeat condition. Example: $filter=isHeartbeat eq false.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>The API version to use for the operation.</td>
</tr>
<tr id="parameter-endTimestampUtc">
    <td><CopyableCode code="endTimestampUtc" /></td>
    <td><code>string (date-time)</code></td>
    <td>The end of the time window.</td>
</tr>
<tr id="parameter-startTimestampUtc">
    <td><CopyableCode code="startTimestampUtc" /></td>
    <td><code>string (date-time)</code></td>
    <td>The start of the time window.</td>
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

The health monitor state change matching the specified criteria.

```sql
SELECT
id,
name,
properties,
type
FROM azure.workload_monitor.health_monitors_state_changes
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND providerName = '{{ providerName }}' -- required
AND resourceCollectionName = '{{ resourceCollectionName }}' -- required
AND resourceName = '{{ resourceName }}' -- required
AND monitorId = '{{ monitorId }}' -- required
AND timestampUnix = '{{ timestampUnix }}' -- required
AND api-version = '{{ api-version }}'
AND $expand = '{{ $expand }}'
;
```
</TabItem>
<TabItem value="list">

The health monitor state changes matching the specified criteria.

```sql
SELECT
id,
name,
properties,
type
FROM azure.workload_monitor.health_monitors_state_changes
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND providerName = '{{ providerName }}' -- required
AND resourceCollectionName = '{{ resourceCollectionName }}' -- required
AND resourceName = '{{ resourceName }}' -- required
AND monitorId = '{{ monitorId }}' -- required
AND api-version = '{{ api-version }}'
AND $filter = '{{ $filter }}'
AND $expand = '{{ $expand }}'
AND startTimestampUtc = '{{ startTimestampUtc }}'
AND endTimestampUtc = '{{ endTimestampUtc }}'
;
```
</TabItem>
</Tabs>
