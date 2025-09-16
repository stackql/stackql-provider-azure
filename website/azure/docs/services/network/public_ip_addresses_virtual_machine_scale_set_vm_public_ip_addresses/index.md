--- 
title: public_ip_addresses_virtual_machine_scale_set_vm_public_ip_addresses
hide_title: false
hide_table_of_contents: false
keywords:
  - public_ip_addresses_virtual_machine_scale_set_vm_public_ip_addresses
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

Creates, updates, deletes, gets or lists a <code>public_ip_addresses_virtual_machine_scale_set_vm_public_ip_addresses</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>public_ip_addresses_virtual_machine_scale_set_vm_public_ip_addresses</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.public_ip_addresses_virtual_machine_scale_set_vm_public_ip_addresses" /></td></tr>
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

Request successful. The operation returns a list of PublicIPAddress resources.

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
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="extendedLocation" /></td>
    <td><code>object</code></td>
    <td>The extended location of the public ip address.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Public IP address properties.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The public IP address SKU.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
<tr>
    <td><CopyableCode code="zones" /></td>
    <td><code>array</code></td>
    <td>A list of availability zones denoting the IP allocated for the resource needs to come from.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualMachineScaleSetName"><code>virtualMachineScaleSetName</code></a>, <a href="#parameter-virtualmachineIndex"><code>virtualmachineIndex</code></a>, <a href="#parameter-networkInterfaceName"><code>networkInterfaceName</code></a>, <a href="#parameter-ipConfigurationName"><code>ipConfigurationName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Gets information about all public IP addresses in a virtual machine IP configuration in a virtual machine scale set.</td>
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
    <td>The IP configuration name.</td>
</tr>
<tr id="parameter-networkInterfaceName">
    <td><CopyableCode code="networkInterfaceName" /></td>
    <td><code>string</code></td>
    <td>The network interface name.</td>
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
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>Client API version.</td>
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

Gets information about all public IP addresses in a virtual machine IP configuration in a virtual machine scale set.

```sql
SELECT
id,
name,
etag,
extendedLocation,
properties,
sku,
systemData,
type,
zones
FROM azure.network.public_ip_addresses_virtual_machine_scale_set_vm_public_ip_addresses
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND virtualMachineScaleSetName = '{{ virtualMachineScaleSetName }}' -- required
AND virtualmachineIndex = '{{ virtualmachineIndex }}' -- required
AND networkInterfaceName = '{{ networkInterfaceName }}' -- required
AND ipConfigurationName = '{{ ipConfigurationName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>
