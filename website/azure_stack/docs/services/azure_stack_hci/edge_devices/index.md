--- 
title: edge_devices
hide_title: false
hide_table_of_contents: false
keywords:
  - edge_devices
  - azure_stack_hci
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists an <code>edge_devices</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>edge_devices</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.azure_stack_hci.edge_devices" /></td></tr>
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

ARM operation completed successfully.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The resource-specific properties for this resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

ARM operation completed successfully.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The resource-specific properties for this resource.</td>
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
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-edgeDeviceName"><code>edgeDeviceName</code></a></td>
    <td></td>
    <td>Get a EdgeDevice</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a></td>
    <td></td>
    <td>List EdgeDevice resources by parent</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-edgeDeviceName"><code>edgeDeviceName</code></a></td>
    <td></td>
    <td>Create a EdgeDevice</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-edgeDeviceName"><code>edgeDeviceName</code></a></td>
    <td></td>
    <td>Delete a EdgeDevice</td>
</tr>
<tr>
    <td><a href="#validate"><CopyableCode code="validate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-edgeDeviceName"><code>edgeDeviceName</code></a>, <a href="#parameter-edgeDeviceIds"><code>edgeDeviceIds</code></a></td>
    <td></td>
    <td>A long-running resource action.</td>
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
<tr id="parameter-edgeDeviceName">
    <td><CopyableCode code="edgeDeviceName" /></td>
    <td><code>string</code></td>
    <td>Name of Device</td>
</tr>
<tr id="parameter-resourceUri">
    <td><CopyableCode code="resourceUri" /></td>
    <td><code>string</code></td>
    <td>The fully qualified Azure Resource manager identifier of the resource.</td>
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

Get a EdgeDevice

```sql
SELECT
properties
FROM azure_stack.azure_stack_hci.edge_devices
WHERE resourceUri = '{{ resourceUri }}' -- required
AND edgeDeviceName = '{{ edgeDeviceName }}' -- required
;
```
</TabItem>
<TabItem value="list">

List EdgeDevice resources by parent

```sql
SELECT
properties
FROM azure_stack.azure_stack_hci.edge_devices
WHERE resourceUri = '{{ resourceUri }}' -- required
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

Create a EdgeDevice

```sql
INSERT INTO azure_stack.azure_stack_hci.edge_devices (
data__properties,
resourceUri,
edgeDeviceName
)
SELECT 
'{{ properties }}',
'{{ resourceUri }}',
'{{ edgeDeviceName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: edge_devices
  props:
    - name: resourceUri
      value: string
      description: Required parameter for the edge_devices resource.
    - name: edgeDeviceName
      value: string
      description: Required parameter for the edge_devices resource.
    - name: properties
      value: object
      description: |
        The resource-specific properties for this resource.
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

Delete a EdgeDevice

```sql
DELETE FROM azure_stack.azure_stack_hci.edge_devices
WHERE resourceUri = '{{ resourceUri }}' --required
AND edgeDeviceName = '{{ edgeDeviceName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="validate"
    values={[
        { label: 'validate', value: 'validate' }
    ]}
>
<TabItem value="validate">

A long-running resource action.

```sql
EXEC azure_stack.azure_stack_hci.edge_devices.validate 
@resourceUri='{{ resourceUri }}' --required, 
@edgeDeviceName='{{ edgeDeviceName }}' --required 
@@json=
'{
"edgeDeviceIds": "{{ edgeDeviceIds }}", 
"additionalInfo": "{{ additionalInfo }}"
}'
;
```
</TabItem>
</Tabs>
