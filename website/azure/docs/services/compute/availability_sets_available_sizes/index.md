--- 
title: availability_sets_available_sizes
hide_title: false
hide_table_of_contents: false
keywords:
  - availability_sets_available_sizes
  - compute
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

Creates, updates, deletes, gets or lists an <code>availability_sets_available_sizes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>availability_sets_available_sizes</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.availability_sets_available_sizes" /></td></tr>
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
    <td>The name of the virtual machine size.</td>
</tr>
<tr>
    <td><CopyableCode code="maxDataDiskCount" /></td>
    <td><code>integer (int32)</code></td>
    <td>The maximum number of data disks that can be attached to the virtual machine size.</td>
</tr>
<tr>
    <td><CopyableCode code="memoryInMB" /></td>
    <td><code>integer (int32)</code></td>
    <td>The amount of memory, in MB, supported by the virtual machine size.</td>
</tr>
<tr>
    <td><CopyableCode code="numberOfCores" /></td>
    <td><code>integer (int32)</code></td>
    <td>The number of cores supported by the virtual machine size. For Constrained vCPU capable VM sizes, this number represents the total vCPUs of quota that the VM uses. For accurate vCPU count, please refer to https://docs.microsoft.com/azure/virtual-machines/constrained-vcpu or https://docs.microsoft.com/rest/api/compute/resourceskus/list</td>
</tr>
<tr>
    <td><CopyableCode code="osDiskSizeInMB" /></td>
    <td><code>integer (int32)</code></td>
    <td>The OS disk size, in MB, allowed by the virtual machine size.</td>
</tr>
<tr>
    <td><CopyableCode code="resourceDiskSizeInMB" /></td>
    <td><code>integer (int32)</code></td>
    <td>The resource disk size, in MB, allowed by the virtual machine size.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-availabilitySetName"><code>availabilitySetName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Lists all available virtual machine sizes that can be used to create a new virtual machine in an existing availability set.</td>
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
<tr id="parameter-availabilitySetName">
    <td><CopyableCode code="availabilitySetName" /></td>
    <td><code>string</code></td>
    <td>The name of the availability set.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
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

Lists all available virtual machine sizes that can be used to create a new virtual machine in an existing availability set.

```sql
SELECT
name,
maxDataDiskCount,
memoryInMB,
numberOfCores,
osDiskSizeInMB,
resourceDiskSizeInMB
FROM azure.compute.availability_sets_available_sizes
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND availabilitySetName = '{{ availabilitySetName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>
