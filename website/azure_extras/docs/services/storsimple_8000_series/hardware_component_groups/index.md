--- 
title: hardware_component_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - hardware_component_groups
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

Creates, updates, deletes, gets or lists a <code>hardware_component_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>hardware_component_groups</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.storsimple_8000_series.hardware_component_groups" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_by_device"
    values={[
        { label: 'list_by_device', value: 'list_by_device' }
    ]}
>
<TabItem value="list_by_device">

Successfully fetched hardware component groups.

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
    <td>The path ID that uniquely identifies the object.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the object.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The Kind of the object. Currently only Series8000 is supported</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the hardware component group.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The hierarchical type of the object.</td>
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
    <td><a href="#list_by_device"><CopyableCode code="list_by_device" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-deviceName"><code>deviceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managerName"><code>managerName</code></a></td>
    <td></td>
    <td>Lists the hardware component groups at device-level.</td>
</tr>
<tr>
    <td><a href="#change_controller_power_state"><CopyableCode code="change_controller_power_state" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-deviceName"><code>deviceName</code></a>, <a href="#parameter-hardwareComponentGroupName"><code>hardwareComponentGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managerName"><code>managerName</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td></td>
    <td>Changes the power state of the controller.</td>
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
    <td>The device name</td>
</tr>
<tr id="parameter-hardwareComponentGroupName">
    <td><CopyableCode code="hardwareComponentGroupName" /></td>
    <td><code>string</code></td>
    <td>The hardware component group name.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_by_device"
    values={[
        { label: 'list_by_device', value: 'list_by_device' }
    ]}
>
<TabItem value="list_by_device">

Lists the hardware component groups at device-level.

```sql
SELECT
id,
name,
kind,
properties,
type
FROM azure_extras.storsimple_8000_series.hardware_component_groups
WHERE deviceName = '{{ deviceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND managerName = '{{ managerName }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="change_controller_power_state"
    values={[
        { label: 'change_controller_power_state', value: 'change_controller_power_state' }
    ]}
>
<TabItem value="change_controller_power_state">

Changes the power state of the controller.

```sql
EXEC azure_extras.storsimple_8000_series.hardware_component_groups.change_controller_power_state 
@deviceName='{{ deviceName }}' --required, 
@hardwareComponentGroupName='{{ hardwareComponentGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@managerName='{{ managerName }}' --required 
@@json=
'{
"kind": "{{ kind }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
</Tabs>
