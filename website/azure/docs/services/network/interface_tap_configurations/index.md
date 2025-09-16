--- 
title: interface_tap_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - interface_tap_configurations
  - network
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

Creates, updates, deletes, gets or lists an <code>interface_tap_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>interface_tap_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.interface_tap_configurations" /></td></tr>
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

Request successful. The operation returns a tap configuration.

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
    <td>Resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource that is unique within a resource group. This name can be used to access the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the Virtual Network Tap configuration.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Sub Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Request successful. The operation returns a list of NetworkInterface TapConfiguration resources.

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
    <td>Resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource that is unique within a resource group. This name can be used to access the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the Virtual Network Tap configuration.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Sub Resource type.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkInterfaceName"><code>networkInterfaceName</code></a>, <a href="#parameter-tapConfigurationName"><code>tapConfigurationName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Get the specified tap configuration on a network interface.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkInterfaceName"><code>networkInterfaceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Get all Tap configurations in a network interface.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkInterfaceName"><code>networkInterfaceName</code></a>, <a href="#parameter-tapConfigurationName"><code>tapConfigurationName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates or updates a Tap configuration in the specified NetworkInterface.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkInterfaceName"><code>networkInterfaceName</code></a>, <a href="#parameter-tapConfigurationName"><code>tapConfigurationName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes the specified tap configuration from the NetworkInterface.</td>
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
<tr id="parameter-networkInterfaceName">
    <td><CopyableCode code="networkInterfaceName" /></td>
    <td><code>string</code></td>
    <td>The name of the network interface.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-tapConfigurationName">
    <td><CopyableCode code="tapConfigurationName" /></td>
    <td><code>string</code></td>
    <td>The name of the tap configuration.</td>
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

Get the specified tap configuration on a network interface.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.network.interface_tap_configurations
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND networkInterfaceName = '{{ networkInterfaceName }}' -- required
AND tapConfigurationName = '{{ tapConfigurationName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Get all Tap configurations in a network interface.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.network.interface_tap_configurations
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND networkInterfaceName = '{{ networkInterfaceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
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

Creates or updates a Tap configuration in the specified NetworkInterface.

```sql
INSERT INTO azure.network.interface_tap_configurations (
data__properties,
data__name,
data__id,
resourceGroupName,
networkInterfaceName,
tapConfigurationName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ name }}',
'{{ id }}',
'{{ resourceGroupName }}',
'{{ networkInterfaceName }}',
'{{ tapConfigurationName }}',
'{{ subscriptionId }}'
RETURNING
id,
name,
etag,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: interface_tap_configurations
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the interface_tap_configurations resource.
    - name: networkInterfaceName
      value: string
      description: Required parameter for the interface_tap_configurations resource.
    - name: tapConfigurationName
      value: string
      description: Required parameter for the interface_tap_configurations resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the interface_tap_configurations resource.
    - name: properties
      value: object
      description: |
        Properties of the Virtual Network Tap configuration.
    - name: name
      value: string
      description: |
        The name of the resource that is unique within a resource group. This name can be used to access the resource.
    - name: id
      value: string
      description: |
        Resource ID.
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

Deletes the specified tap configuration from the NetworkInterface.

```sql
DELETE FROM azure.network.interface_tap_configurations
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND networkInterfaceName = '{{ networkInterfaceName }}' --required
AND tapConfigurationName = '{{ tapConfigurationName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
