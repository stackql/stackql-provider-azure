--- 
title: devices_failover_targets
hide_title: false
hide_table_of_contents: false
keywords:
  - devices_failover_targets
  - storsimple_8000_series
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

Creates, updates, deletes, gets or lists a <code>devices_failover_targets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>devices_failover_targets</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.storsimple_8000_series.devices_failover_targets" /></td></tr>
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

The list of target devices and their eligibility for failover.

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
    <td><CopyableCode code="availableLocalStorageInBytes" /></td>
    <td><code>integer (int64)</code></td>
    <td>The amount of free local storage available on the device in bytes.</td>
</tr>
<tr>
    <td><CopyableCode code="availableTieredStorageInBytes" /></td>
    <td><code>integer (int64)</code></td>
    <td>The amount of free tiered storage available for the device in bytes.</td>
</tr>
<tr>
    <td><CopyableCode code="dataContainersCount" /></td>
    <td><code>integer (int32)</code></td>
    <td>The count of data containers on the device.</td>
</tr>
<tr>
    <td><CopyableCode code="deviceId" /></td>
    <td><code>string</code></td>
    <td>The path ID of the device.</td>
</tr>
<tr>
    <td><CopyableCode code="deviceLocation" /></td>
    <td><code>string</code></td>
    <td>The geo location (applicable only for cloud appliances) of the device.</td>
</tr>
<tr>
    <td><CopyableCode code="deviceSoftwareVersion" /></td>
    <td><code>string</code></td>
    <td>The software version of the device.</td>
</tr>
<tr>
    <td><CopyableCode code="deviceStatus" /></td>
    <td><code>string</code></td>
    <td>The status of the device.</td>
</tr>
<tr>
    <td><CopyableCode code="eligibilityResult" /></td>
    <td><code>object</code></td>
    <td>The eligibility result of the device, as a failover target device.</td>
</tr>
<tr>
    <td><CopyableCode code="friendlyDeviceSoftwareVersion" /></td>
    <td><code>string</code></td>
    <td>The friendly name for the current version of software on the device.</td>
</tr>
<tr>
    <td><CopyableCode code="modelDescription" /></td>
    <td><code>string</code></td>
    <td>The model number of the device.</td>
</tr>
<tr>
    <td><CopyableCode code="volumesCount" /></td>
    <td><code>integer (int32)</code></td>
    <td>The count of volumes on the device.</td>
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
    <td><a href="#parameter-sourceDeviceName"><code>sourceDeviceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managerName"><code>managerName</code></a></td>
    <td></td>
    <td>Given a list of volume containers to be failed over from a source device, this method returns the eligibility result, as a failover target, for all devices under that resource.</td>
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
<tr id="parameter-sourceDeviceName">
    <td><CopyableCode code="sourceDeviceName" /></td>
    <td><code>string</code></td>
    <td>The source device name on which failover is performed.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription id</td>
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

Given a list of volume containers to be failed over from a source device, this method returns the eligibility result, as a failover target, for all devices under that resource.

```sql
SELECT
availableLocalStorageInBytes,
availableTieredStorageInBytes,
dataContainersCount,
deviceId,
deviceLocation,
deviceSoftwareVersion,
deviceStatus,
eligibilityResult,
friendlyDeviceSoftwareVersion,
modelDescription,
volumesCount
FROM azure_extras.storsimple_8000_series.devices_failover_targets
WHERE sourceDeviceName = '{{ sourceDeviceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND managerName = '{{ managerName }}' -- required
;
```
</TabItem>
</Tabs>
