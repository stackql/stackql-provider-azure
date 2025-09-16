--- 
title: interfaces_virtual_machine_scale_set_ip_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - interfaces_virtual_machine_scale_set_ip_configurations
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

Creates, updates, deletes, gets or lists an <code>interfaces_virtual_machine_scale_set_ip_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>interfaces_virtual_machine_scale_set_ip_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.interfaces_virtual_machine_scale_set_ip_configurations" /></td></tr>
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

Request successful. The operation returns the resulting NetworkInterfaceIPConfiguration resource.

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
    <td>Network interface IP configuration properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Request successful. The operation returns the list of resulting NetworkInterfaceIPConfigurations resources.

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
    <td>Network interface IP configuration properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualMachineScaleSetName"><code>virtualMachineScaleSetName</code></a>, <a href="#parameter-virtualmachineIndex"><code>virtualmachineIndex</code></a>, <a href="#parameter-networkInterfaceName"><code>networkInterfaceName</code></a>, <a href="#parameter-ipConfigurationName"><code>ipConfigurationName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>Get the specified network interface ip configuration in a virtual machine scale set.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualMachineScaleSetName"><code>virtualMachineScaleSetName</code></a>, <a href="#parameter-virtualmachineIndex"><code>virtualmachineIndex</code></a>, <a href="#parameter-networkInterfaceName"><code>networkInterfaceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>Get the specified network interface ip configuration in a virtual machine scale set.</td>
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
<tr id="parameter-ipConfigurationName">
    <td><CopyableCode code="ipConfigurationName" /></td>
    <td><code>string</code></td>
    <td>The name of the ip configuration.</td>
</tr>
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
<tr id="parameter-virtualMachineScaleSetName">
    <td><CopyableCode code="virtualMachineScaleSetName" /></td>
    <td><code>string</code></td>
    <td>The name of the virtual machine scale set.</td>
</tr>
<tr id="parameter-virtualmachineIndex">
    <td><CopyableCode code="virtualmachineIndex" /></td>
    <td><code>string</code></td>
    <td>The virtual machine index.</td>
</tr>
<tr id="parameter-$expand">
    <td><CopyableCode code="$expand" /></td>
    <td><code>string</code></td>
    <td>Expands referenced resources.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>Client API version.</td>
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

Get the specified network interface ip configuration in a virtual machine scale set.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.network.interfaces_virtual_machine_scale_set_ip_configurations
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND virtualMachineScaleSetName = '{{ virtualMachineScaleSetName }}' -- required
AND virtualmachineIndex = '{{ virtualmachineIndex }}' -- required
AND networkInterfaceName = '{{ networkInterfaceName }}' -- required
AND ipConfigurationName = '{{ ipConfigurationName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND api-version = '{{ api-version }}'
AND $expand = '{{ $expand }}'
;
```
</TabItem>
<TabItem value="list">

Get the specified network interface ip configuration in a virtual machine scale set.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.network.interfaces_virtual_machine_scale_set_ip_configurations
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND virtualMachineScaleSetName = '{{ virtualMachineScaleSetName }}' -- required
AND virtualmachineIndex = '{{ virtualmachineIndex }}' -- required
AND networkInterfaceName = '{{ networkInterfaceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND api-version = '{{ api-version }}'
AND $expand = '{{ $expand }}'
;
```
</TabItem>
</Tabs>
