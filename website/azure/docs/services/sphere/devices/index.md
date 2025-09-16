--- 
title: devices
hide_title: false
hide_table_of_contents: false
keywords:
  - devices
  - sphere
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

Creates, updates, deletes, gets or lists a <code>devices</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>devices</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sphere.devices" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_device_group', value: 'list_by_device_group' }
    ]}
>
<TabItem value="get">

Azure operation completed successfully.

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
<TabItem value="list_by_device_group">

Azure operation completed successfully.

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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-catalogName"><code>catalogName</code></a>, <a href="#parameter-productName"><code>productName</code></a>, <a href="#parameter-deviceGroupName"><code>deviceGroupName</code></a>, <a href="#parameter-deviceName"><code>deviceName</code></a></td>
    <td></td>
    <td>Get a Device. Use '.unassigned' or '.default' for the device group and product names when a device does not belong to a device group and product.</td>
</tr>
<tr>
    <td><a href="#list_by_device_group"><CopyableCode code="list_by_device_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-catalogName"><code>catalogName</code></a>, <a href="#parameter-productName"><code>productName</code></a>, <a href="#parameter-deviceGroupName"><code>deviceGroupName</code></a></td>
    <td></td>
    <td>List Device resources by DeviceGroup. '.default' and '.unassigned' are system defined values and cannot be used for product or device group name.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-catalogName"><code>catalogName</code></a>, <a href="#parameter-productName"><code>productName</code></a>, <a href="#parameter-deviceGroupName"><code>deviceGroupName</code></a>, <a href="#parameter-deviceName"><code>deviceName</code></a></td>
    <td></td>
    <td>Create a Device. Use '.unassigned' or '.default' for the device group and product names to claim a device to the catalog only.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-catalogName"><code>catalogName</code></a>, <a href="#parameter-productName"><code>productName</code></a>, <a href="#parameter-deviceGroupName"><code>deviceGroupName</code></a>, <a href="#parameter-deviceName"><code>deviceName</code></a></td>
    <td></td>
    <td>Update a Device. Use '.unassigned' or '.default' for the device group and product names to move a device to the catalog level.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-catalogName"><code>catalogName</code></a>, <a href="#parameter-productName"><code>productName</code></a>, <a href="#parameter-deviceGroupName"><code>deviceGroupName</code></a>, <a href="#parameter-deviceName"><code>deviceName</code></a></td>
    <td></td>
    <td>Delete a Device</td>
</tr>
<tr>
    <td><a href="#generate_capability_image"><CopyableCode code="generate_capability_image" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-catalogName"><code>catalogName</code></a>, <a href="#parameter-productName"><code>productName</code></a>, <a href="#parameter-deviceGroupName"><code>deviceGroupName</code></a>, <a href="#parameter-deviceName"><code>deviceName</code></a>, <a href="#parameter-capabilities"><code>capabilities</code></a></td>
    <td></td>
    <td>Generates the capability image for the device. Use '.unassigned' or '.default' for the device group and product names to generate the image for a device that does not belong to a specific device group and product.</td>
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
<tr id="parameter-catalogName">
    <td><CopyableCode code="catalogName" /></td>
    <td><code>string</code></td>
    <td>Name of catalog</td>
</tr>
<tr id="parameter-deviceGroupName">
    <td><CopyableCode code="deviceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of device group.</td>
</tr>
<tr id="parameter-deviceName">
    <td><CopyableCode code="deviceName" /></td>
    <td><code>string</code></td>
    <td>Device name</td>
</tr>
<tr id="parameter-productName">
    <td><CopyableCode code="productName" /></td>
    <td><code>string</code></td>
    <td>Name of product.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_device_group', value: 'list_by_device_group' }
    ]}
>
<TabItem value="get">

Get a Device. Use '.unassigned' or '.default' for the device group and product names when a device does not belong to a device group and product.

```sql
SELECT
properties
FROM azure.sphere.devices
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND catalogName = '{{ catalogName }}' -- required
AND productName = '{{ productName }}' -- required
AND deviceGroupName = '{{ deviceGroupName }}' -- required
AND deviceName = '{{ deviceName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_device_group">

List Device resources by DeviceGroup. '.default' and '.unassigned' are system defined values and cannot be used for product or device group name.

```sql
SELECT
properties
FROM azure.sphere.devices
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND catalogName = '{{ catalogName }}' -- required
AND productName = '{{ productName }}' -- required
AND deviceGroupName = '{{ deviceGroupName }}' -- required
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

Create a Device. Use '.unassigned' or '.default' for the device group and product names to claim a device to the catalog only.

```sql
INSERT INTO azure.sphere.devices (
data__properties,
subscriptionId,
resourceGroupName,
catalogName,
productName,
deviceGroupName,
deviceName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ catalogName }}',
'{{ productName }}',
'{{ deviceGroupName }}',
'{{ deviceName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: devices
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the devices resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the devices resource.
    - name: catalogName
      value: string
      description: Required parameter for the devices resource.
    - name: productName
      value: string
      description: Required parameter for the devices resource.
    - name: deviceGroupName
      value: string
      description: Required parameter for the devices resource.
    - name: deviceName
      value: string
      description: Required parameter for the devices resource.
    - name: properties
      value: object
      description: |
        The resource-specific properties for this resource.
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update"
    values={[
        { label: 'update', value: 'update' }
    ]}
>
<TabItem value="update">

Update a Device. Use '.unassigned' or '.default' for the device group and product names to move a device to the catalog level.

```sql
UPDATE azure.sphere.devices
SET 
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND catalogName = '{{ catalogName }}' --required
AND productName = '{{ productName }}' --required
AND deviceGroupName = '{{ deviceGroupName }}' --required
AND deviceName = '{{ deviceName }}' --required
RETURNING
properties;
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

Delete a Device

```sql
DELETE FROM azure.sphere.devices
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND catalogName = '{{ catalogName }}' --required
AND productName = '{{ productName }}' --required
AND deviceGroupName = '{{ deviceGroupName }}' --required
AND deviceName = '{{ deviceName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="generate_capability_image"
    values={[
        { label: 'generate_capability_image', value: 'generate_capability_image' }
    ]}
>
<TabItem value="generate_capability_image">

Generates the capability image for the device. Use '.unassigned' or '.default' for the device group and product names to generate the image for a device that does not belong to a specific device group and product.

```sql
EXEC azure.sphere.devices.generate_capability_image 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@catalogName='{{ catalogName }}' --required, 
@productName='{{ productName }}' --required, 
@deviceGroupName='{{ deviceGroupName }}' --required, 
@deviceName='{{ deviceName }}' --required 
@@json=
'{
"capabilities": "{{ capabilities }}"
}'
;
```
</TabItem>
</Tabs>
