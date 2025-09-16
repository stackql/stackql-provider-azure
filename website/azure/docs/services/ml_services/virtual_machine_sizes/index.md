--- 
title: virtual_machine_sizes
hide_title: false
hide_table_of_contents: false
keywords:
  - virtual_machine_sizes
  - ml_services
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

Creates, updates, deletes, gets or lists a <code>virtual_machine_sizes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>virtual_machine_sizes</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ml_services.virtual_machine_sizes" /></td></tr>
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
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the virtual machine size. (title: Virtual Machine size name)</td>
</tr>
<tr>
    <td><CopyableCode code="estimatedVMPrices" /></td>
    <td><code>object</code></td>
    <td>The estimated price information for using a VM. (title: Estimated VM prices)</td>
</tr>
<tr>
    <td><CopyableCode code="family" /></td>
    <td><code>string</code></td>
    <td>The family name of the virtual machine size. (title: Virtual Machine family name)</td>
</tr>
<tr>
    <td><CopyableCode code="gpus" /></td>
    <td><code>integer (int32)</code></td>
    <td>The number of gPUs supported by the virtual machine size. (title: Number of gPUs)</td>
</tr>
<tr>
    <td><CopyableCode code="lowPriorityCapable" /></td>
    <td><code>boolean</code></td>
    <td>Specifies if the virtual machine size supports low priority VMs. (title: Low priority capable)</td>
</tr>
<tr>
    <td><CopyableCode code="maxResourceVolumeMB" /></td>
    <td><code>integer (int32)</code></td>
    <td>The resource volume size, in MB, allowed by the virtual machine size. (title: Resource volume size)</td>
</tr>
<tr>
    <td><CopyableCode code="memoryGB" /></td>
    <td><code>number (double)</code></td>
    <td>The amount of memory, in GB, supported by the virtual machine size. (title: Memory size)</td>
</tr>
<tr>
    <td><CopyableCode code="osVhdSizeMB" /></td>
    <td><code>integer (int32)</code></td>
    <td>The OS VHD disk size, in MB, allowed by the virtual machine size. (title: OS VHD Disk size)</td>
</tr>
<tr>
    <td><CopyableCode code="premiumIO" /></td>
    <td><code>boolean</code></td>
    <td>Specifies if the virtual machine size supports premium IO. (title: Premium IO supported)</td>
</tr>
<tr>
    <td><CopyableCode code="supportedComputeTypes" /></td>
    <td><code>array</code></td>
    <td>Specifies the compute types supported by the virtual machine size. (title: Supported Compute Types)</td>
</tr>
<tr>
    <td><CopyableCode code="vCPUs" /></td>
    <td><code>integer (int32)</code></td>
    <td>The number of vCPUs supported by the virtual machine size. (title: Number of vPUs)</td>
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
    <td><a href="#parameter-location"><code>location</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Returns supported VM Sizes in a location</td>
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
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The location upon which virtual-machine-sizes is queried.</td>
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
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

Returns supported VM Sizes in a location

```sql
SELECT
name,
estimatedVMPrices,
family,
gpus,
lowPriorityCapable,
maxResourceVolumeMB,
memoryGB,
osVhdSizeMB,
premiumIO,
supportedComputeTypes,
vCPUs
FROM azure.ml_services.virtual_machine_sizes
WHERE location = '{{ location }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>
