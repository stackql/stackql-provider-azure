--- 
title: devices
hide_title: false
hide_table_of_contents: false
keywords:
  - devices
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

Creates, updates, deletes, gets or lists a <code>devices</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>devices</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_box_edge.devices" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
    ]}
>
<TabItem value="get">

The Data Box Edge/Data Box Gateway device.

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
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>The etag for the devices.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Msi identity of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The kind of the device.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The location of the device. This is a supported and registered Azure geographical region (for example, West US, East US, or Southeast Asia). The geographical region of a device cannot be changed once it is created, but if an identical geographical region is specified on update, the request will succeed.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the Data Box Edge/Gateway device.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The SKU type.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>DataBoxEdge Resource</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>The list of tags that describe the device. These tags can be used to view and group this device (across resource groups).</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The hierarchical type of the object.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group">

The collection of Data Box Edge/Data Box Gateway devices.

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
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>The etag for the devices.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Msi identity of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The kind of the device.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The location of the device. This is a supported and registered Azure geographical region (for example, West US, East US, or Southeast Asia). The geographical region of a device cannot be changed once it is created, but if an identical geographical region is specified on update, the request will succeed.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the Data Box Edge/Gateway device.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The SKU type.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>DataBoxEdge Resource</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>The list of tags that describe the device. These tags can be used to view and group this device (across resource groups).</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The hierarchical type of the object.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_subscription">

The collection of Data Box Edge/Data Box Gateway devices.

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
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>The etag for the devices.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Msi identity of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The kind of the device.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The location of the device. This is a supported and registered Azure geographical region (for example, West US, East US, or Southeast Asia). The geographical region of a device cannot be changed once it is created, but if an identical geographical region is specified on update, the request will succeed.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the Data Box Edge/Gateway device.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The SKU type.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>DataBoxEdge Resource</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>The list of tags that describe the device. These tags can be used to view and group this device (across resource groups).</td>
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
    <td><a href="#parameter-deviceName"><code>deviceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td>Gets the properties of the Data Box Edge/Data Box Gateway device.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>Gets all the Data Box Edge/Data Box Gateway devices in a resource group.</td>
</tr>
<tr>
    <td><a href="#list_by_subscription"><CopyableCode code="list_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>Gets all the Data Box Edge/Data Box Gateway devices in a subscription.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-deviceName"><code>deviceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-data__location"><code>data__location</code></a></td>
    <td></td>
    <td>Creates or updates a Data Box Edge/Data Box Gateway resource.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-deviceName"><code>deviceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td>Modifies a Data Box Edge/Data Box Gateway resource.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-deviceName"><code>deviceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td>Deletes the Data Box Edge/Data Box Gateway device.</td>
</tr>
<tr>
    <td><a href="#download_updates"><CopyableCode code="download_updates" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-deviceName"><code>deviceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#generate_certificate"><CopyableCode code="generate_certificate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-deviceName"><code>deviceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td>Generates certificate for activation key.</td>
</tr>
<tr>
    <td><a href="#install_updates"><CopyableCode code="install_updates" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-deviceName"><code>deviceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#scan_for_updates"><CopyableCode code="scan_for_updates" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-deviceName"><code>deviceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#upload_certificate"><CopyableCode code="upload_certificate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-deviceName"><code>deviceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td></td>
    <td>Uploads registration certificate for the device.</td>
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
<tr id="parameter-$expand">
    <td><CopyableCode code="$expand" /></td>
    <td><code>string</code></td>
    <td>Specify $expand=details to populate additional fields related to the resource or Specify $skipToken=&lt;token&gt; to populate the next page in the list.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
    ]}
>
<TabItem value="get">

Gets the properties of the Data Box Edge/Data Box Gateway device.

```sql
SELECT
id,
name,
etag,
identity,
kind,
location,
properties,
sku,
systemData,
tags,
type
FROM azure.data_box_edge.devices
WHERE deviceName = '{{ deviceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_resource_group">

Gets all the Data Box Edge/Data Box Gateway devices in a resource group.

```sql
SELECT
id,
name,
etag,
identity,
kind,
location,
properties,
sku,
systemData,
tags,
type
FROM azure.data_box_edge.devices
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND $expand = '{{ $expand }}'
;
```
</TabItem>
<TabItem value="list_by_subscription">

Gets all the Data Box Edge/Data Box Gateway devices in a subscription.

```sql
SELECT
id,
name,
etag,
identity,
kind,
location,
properties,
sku,
systemData,
tags,
type
FROM azure.data_box_edge.devices
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND $expand = '{{ $expand }}'
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

Creates or updates a Data Box Edge/Data Box Gateway resource.

```sql
INSERT INTO azure.data_box_edge.devices (
data__location,
data__tags,
data__sku,
data__etag,
data__identity,
data__properties,
deviceName,
subscriptionId,
resourceGroupName
)
SELECT 
'{{ location }}' /* required */,
'{{ tags }}',
'{{ sku }}',
'{{ etag }}',
'{{ identity }}',
'{{ properties }}',
'{{ deviceName }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}'
RETURNING
id,
name,
etag,
identity,
kind,
location,
properties,
sku,
systemData,
tags,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: devices
  props:
    - name: deviceName
      value: string
      description: Required parameter for the devices resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the devices resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the devices resource.
    - name: location
      value: string
      description: |
        The location of the device. This is a supported and registered Azure geographical region (for example, West US, East US, or Southeast Asia). The geographical region of a device cannot be changed once it is created, but if an identical geographical region is specified on update, the request will succeed.
    - name: tags
      value: object
      description: |
        The list of tags that describe the device. These tags can be used to view and group this device (across resource groups).
    - name: sku
      value: object
      description: |
        The SKU type.
    - name: etag
      value: string
      description: |
        The etag for the devices.
    - name: identity
      value: object
      description: |
        Msi identity of the resource
    - name: properties
      value: object
      description: |
        The properties of the Data Box Edge/Gateway device.
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

Modifies a Data Box Edge/Data Box Gateway resource.

```sql
UPDATE azure.data_box_edge.devices
SET 
data__tags = '{{ tags }}',
data__identity = '{{ identity }}',
data__properties = '{{ properties }}'
WHERE 
deviceName = '{{ deviceName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
RETURNING
id,
name,
etag,
identity,
kind,
location,
properties,
sku,
systemData,
tags,
type;
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

Deletes the Data Box Edge/Data Box Gateway device.

```sql
DELETE FROM azure.data_box_edge.devices
WHERE deviceName = '{{ deviceName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="download_updates"
    values={[
        { label: 'download_updates', value: 'download_updates' },
        { label: 'generate_certificate', value: 'generate_certificate' },
        { label: 'install_updates', value: 'install_updates' },
        { label: 'scan_for_updates', value: 'scan_for_updates' },
        { label: 'upload_certificate', value: 'upload_certificate' }
    ]}
>
<TabItem value="download_updates">

Successfully downloaded the updates on the device.

```sql
EXEC azure.data_box_edge.devices.download_updates 
@deviceName='{{ deviceName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required
;
```
</TabItem>
<TabItem value="generate_certificate">

Generates certificate for activation key.

```sql
EXEC azure.data_box_edge.devices.generate_certificate 
@deviceName='{{ deviceName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required
;
```
</TabItem>
<TabItem value="install_updates">

Successfully installed updates on the device.

```sql
EXEC azure.data_box_edge.devices.install_updates 
@deviceName='{{ deviceName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required
;
```
</TabItem>
<TabItem value="scan_for_updates">

Successfully scanned the device for updates.

```sql
EXEC azure.data_box_edge.devices.scan_for_updates 
@deviceName='{{ deviceName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required
;
```
</TabItem>
<TabItem value="upload_certificate">

Uploads registration certificate for the device.

```sql
EXEC azure.data_box_edge.devices.upload_certificate 
@deviceName='{{ deviceName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
</Tabs>
