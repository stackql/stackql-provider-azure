--- 
title: device_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - device_groups
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

Creates, updates, deletes, gets or lists a <code>device_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>device_groups</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sphere.device_groups" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_product', value: 'list_by_product' }
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
<TabItem value="list_by_product">

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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-catalogName"><code>catalogName</code></a>, <a href="#parameter-productName"><code>productName</code></a>, <a href="#parameter-deviceGroupName"><code>deviceGroupName</code></a></td>
    <td></td>
    <td>Get a DeviceGroup. '.default' and '.unassigned' are system defined values and cannot be used for product or device group name.</td>
</tr>
<tr>
    <td><a href="#list_by_product"><CopyableCode code="list_by_product" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-catalogName"><code>catalogName</code></a>, <a href="#parameter-productName"><code>productName</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$top"><code>$top</code></a>, <a href="#parameter-$skip"><code>$skip</code></a>, <a href="#parameter-$maxpagesize"><code>$maxpagesize</code></a></td>
    <td>List DeviceGroup resources by Product. '.default' and '.unassigned' are system defined values and cannot be used for product name.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-catalogName"><code>catalogName</code></a>, <a href="#parameter-productName"><code>productName</code></a>, <a href="#parameter-deviceGroupName"><code>deviceGroupName</code></a></td>
    <td></td>
    <td>Create a DeviceGroup. '.default' and '.unassigned' are system defined values and cannot be used for product or device group name.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-catalogName"><code>catalogName</code></a>, <a href="#parameter-productName"><code>productName</code></a>, <a href="#parameter-deviceGroupName"><code>deviceGroupName</code></a></td>
    <td></td>
    <td>Update a DeviceGroup. '.default' and '.unassigned' are system defined values and cannot be used for product or device group name.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-catalogName"><code>catalogName</code></a>, <a href="#parameter-productName"><code>productName</code></a>, <a href="#parameter-deviceGroupName"><code>deviceGroupName</code></a></td>
    <td></td>
    <td>Delete a DeviceGroup. '.default' and '.unassigned' are system defined values and cannot be used for product or device group name.</td>
</tr>
<tr>
    <td><a href="#claim_devices"><CopyableCode code="claim_devices" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-catalogName"><code>catalogName</code></a>, <a href="#parameter-productName"><code>productName</code></a>, <a href="#parameter-deviceGroupName"><code>deviceGroupName</code></a>, <a href="#parameter-deviceIdentifiers"><code>deviceIdentifiers</code></a></td>
    <td></td>
    <td>Bulk claims the devices. Use '.unassigned' or '.default' for the device group and product names when bulk claiming devices to a catalog only.</td>
</tr>
<tr>
    <td><a href="#count_devices"><CopyableCode code="count_devices" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-catalogName"><code>catalogName</code></a>, <a href="#parameter-productName"><code>productName</code></a>, <a href="#parameter-deviceGroupName"><code>deviceGroupName</code></a></td>
    <td></td>
    <td>Counts devices in device group. '.default' and '.unassigned' are system defined values and cannot be used for product or device group name.</td>
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
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>Filter the result list using the given expression</td>
</tr>
<tr id="parameter-$maxpagesize">
    <td><CopyableCode code="$maxpagesize" /></td>
    <td><code>integer (int32)</code></td>
    <td>The maximum number of result items per page.</td>
</tr>
<tr id="parameter-$skip">
    <td><CopyableCode code="$skip" /></td>
    <td><code>integer (int32)</code></td>
    <td>The number of result items to skip.</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int32)</code></td>
    <td>The number of result items to return.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_product', value: 'list_by_product' }
    ]}
>
<TabItem value="get">

Get a DeviceGroup. '.default' and '.unassigned' are system defined values and cannot be used for product or device group name.

```sql
SELECT
properties
FROM azure.sphere.device_groups
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND catalogName = '{{ catalogName }}' -- required
AND productName = '{{ productName }}' -- required
AND deviceGroupName = '{{ deviceGroupName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_product">

List DeviceGroup resources by Product. '.default' and '.unassigned' are system defined values and cannot be used for product name.

```sql
SELECT
properties
FROM azure.sphere.device_groups
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND catalogName = '{{ catalogName }}' -- required
AND productName = '{{ productName }}' -- required
AND $filter = '{{ $filter }}'
AND $top = '{{ $top }}'
AND $skip = '{{ $skip }}'
AND $maxpagesize = '{{ $maxpagesize }}'
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

Create a DeviceGroup. '.default' and '.unassigned' are system defined values and cannot be used for product or device group name.

```sql
INSERT INTO azure.sphere.device_groups (
data__properties,
subscriptionId,
resourceGroupName,
catalogName,
productName,
deviceGroupName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ catalogName }}',
'{{ productName }}',
'{{ deviceGroupName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: device_groups
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the device_groups resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the device_groups resource.
    - name: catalogName
      value: string
      description: Required parameter for the device_groups resource.
    - name: productName
      value: string
      description: Required parameter for the device_groups resource.
    - name: deviceGroupName
      value: string
      description: Required parameter for the device_groups resource.
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

Update a DeviceGroup. '.default' and '.unassigned' are system defined values and cannot be used for product or device group name.

```sql
UPDATE azure.sphere.device_groups
SET 
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND catalogName = '{{ catalogName }}' --required
AND productName = '{{ productName }}' --required
AND deviceGroupName = '{{ deviceGroupName }}' --required
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

Delete a DeviceGroup. '.default' and '.unassigned' are system defined values and cannot be used for product or device group name.

```sql
DELETE FROM azure.sphere.device_groups
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND catalogName = '{{ catalogName }}' --required
AND productName = '{{ productName }}' --required
AND deviceGroupName = '{{ deviceGroupName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="claim_devices"
    values={[
        { label: 'claim_devices', value: 'claim_devices' },
        { label: 'count_devices', value: 'count_devices' }
    ]}
>
<TabItem value="claim_devices">

Bulk claims the devices. Use '.unassigned' or '.default' for the device group and product names when bulk claiming devices to a catalog only.

```sql
EXEC azure.sphere.device_groups.claim_devices 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@catalogName='{{ catalogName }}' --required, 
@productName='{{ productName }}' --required, 
@deviceGroupName='{{ deviceGroupName }}' --required 
@@json=
'{
"deviceIdentifiers": "{{ deviceIdentifiers }}"
}'
;
```
</TabItem>
<TabItem value="count_devices">

Counts devices in device group. '.default' and '.unassigned' are system defined values and cannot be used for product or device group name.

```sql
EXEC azure.sphere.device_groups.count_devices 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@catalogName='{{ catalogName }}' --required, 
@productName='{{ productName }}' --required, 
@deviceGroupName='{{ deviceGroupName }}' --required
;
```
</TabItem>
</Tabs>
