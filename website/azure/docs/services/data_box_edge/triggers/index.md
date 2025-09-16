--- 
title: triggers
hide_title: false
hide_table_of_contents: false
keywords:
  - triggers
  - data_box_edge
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

Creates, updates, deletes, gets or lists a <code>triggers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>triggers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_box_edge.triggers" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_data_box_edge_device', value: 'list_by_data_box_edge_device' }
    ]}
>
<TabItem value="get">

The trigger.

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
    <td>The object name.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Trigger Kind.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of Trigger</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The hierarchical type of the object.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_data_box_edge_device">

List all the triggers configured in the device

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
    <td>The object name.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Trigger Kind.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of Trigger</td>
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
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-deviceName"><code>deviceName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td>Get a specific trigger by name.</td>
</tr>
<tr>
    <td><a href="#list_by_data_box_edge_device"><CopyableCode code="list_by_data_box_edge_device" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-deviceName"><code>deviceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Lists all the triggers configured in the device.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-deviceName"><code>deviceName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-data__kind"><code>data__kind</code></a></td>
    <td></td>
    <td>Creates or updates a trigger.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-deviceName"><code>deviceName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td>Deletes the trigger on the gateway device.</td>
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
<tr id="parameter-name">
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The trigger name.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The resource group name.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription ID.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>Specify $filter='CustomContextTag eq &lt;tag&gt;' to filter on custom context tag property</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_data_box_edge_device', value: 'list_by_data_box_edge_device' }
    ]}
>
<TabItem value="get">

Get a specific trigger by name.

```sql
SELECT
id,
name,
kind,
systemData,
type
FROM azure.data_box_edge.triggers
WHERE deviceName = '{{ deviceName }}' -- required
AND name = '{{ name }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_data_box_edge_device">

Lists all the triggers configured in the device.

```sql
SELECT
id,
name,
kind,
systemData,
type
FROM azure.data_box_edge.triggers
WHERE deviceName = '{{ deviceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND $filter = '{{ $filter }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_or_update"
    values={[
        { label: 'create_or_update', value: 'create_or_update' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_or_update">

Creates or updates a trigger.

```sql
INSERT INTO azure.data_box_edge.triggers (
data__kind,
deviceName,
name,
subscriptionId,
resourceGroupName
)
SELECT 
'{{ kind }}' /* required */,
'{{ deviceName }}',
'{{ name }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}'
RETURNING
id,
name,
kind,
systemData,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: triggers
  props:
    - name: deviceName
      value: string
      description: Required parameter for the triggers resource.
    - name: name
      value: string
      description: Required parameter for the triggers resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the triggers resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the triggers resource.
    - name: kind
      value: string
      description: |
        Trigger Kind.
      valid_values: ['FileEvent', 'PeriodicTimerEvent']
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete"
    values={[
        { label: 'delete', value: 'delete' }
    ]}
>
<TabItem value="delete">

Deletes the trigger on the gateway device.

```sql
DELETE FROM azure.data_box_edge.triggers
WHERE deviceName = '{{ deviceName }}' --required
AND name = '{{ name }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
;
```
</TabItem>
</Tabs>
