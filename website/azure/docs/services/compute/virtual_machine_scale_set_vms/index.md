--- 
title: virtual_machine_scale_set_vms
hide_title: false
hide_table_of_contents: false
keywords:
  - virtual_machine_scale_set_vms
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

Creates, updates, deletes, gets or lists a <code>virtual_machine_scale_set_vms</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>virtual_machine_scale_set_vms</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.virtual_machine_scale_set_vms" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'get_instance_view', value: 'get_instance_view' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

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
    <td>Resource Id</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource name</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>Etag is property returned in Update/Get response of the VMSS VM, so that customer can supply it in the header to ensure optimistic updates.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The identity of the virtual machine, if configured.</td>
</tr>
<tr>
    <td><CopyableCode code="instanceId" /></td>
    <td><code>string</code></td>
    <td>The virtual machine instance ID.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location</td>
</tr>
<tr>
    <td><CopyableCode code="plan" /></td>
    <td><code>object</code></td>
    <td>Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use.  In the Azure portal, find the marketplace image that you want to use and then click **Want to deploy programmatically, Get Started -&gt;**. Enter any required information and then click **Save**.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Describes the properties of a virtual machine scale set virtual machine.</td>
</tr>
<tr>
    <td><CopyableCode code="resources" /></td>
    <td><code>array</code></td>
    <td>The virtual machine child extension resources.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The virtual machine SKU.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type</td>
</tr>
<tr>
    <td><CopyableCode code="zones" /></td>
    <td><code>array</code></td>
    <td>The virtual machine zones.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_instance_view">

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
    <td><CopyableCode code="assignedHost" /></td>
    <td><code>string</code></td>
    <td>Resource id of the dedicated host, on which the virtual machine is allocated through automatic placement, when the virtual machine is associated with a dedicated host group that has automatic placement enabled. Minimum api-version: 2020-06-01.</td>
</tr>
<tr>
    <td><CopyableCode code="bootDiagnostics" /></td>
    <td><code>object</code></td>
    <td>Boot Diagnostics is a debugging feature which allows you to view Console Output and Screenshot to diagnose VM status. You can easily view the output of your console log. Azure also enables you to see a screenshot of the VM from the hypervisor.</td>
</tr>
<tr>
    <td><CopyableCode code="computerName" /></td>
    <td><code>string</code></td>
    <td>Specifies the host OS name of the virtual machine. <br /><br /> This name cannot be updated after the VM is created. <br /><br /> **Max-length (Windows):** 15 characters <br /><br /> **Max-length (Linux):** 64 characters. <br /><br /> For naming conventions and restrictions see [Azure infrastructure services implementation guidelines](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-linux-infrastructure-subscription-accounts-guidelines?toc=%2fazure%2fvirtual-machines%2flinux%2ftoc.json#1-naming-conventions).</td>
</tr>
<tr>
    <td><CopyableCode code="disks" /></td>
    <td><code>array</code></td>
    <td>The disks information.</td>
</tr>
<tr>
    <td><CopyableCode code="extensions" /></td>
    <td><code>array</code></td>
    <td>The extensions information.</td>
</tr>
<tr>
    <td><CopyableCode code="hyperVGeneration" /></td>
    <td><code>string</code></td>
    <td>The hypervisor generation of the Virtual Machine [V1, V2]</td>
</tr>
<tr>
    <td><CopyableCode code="maintenanceRedeployStatus" /></td>
    <td><code>object</code></td>
    <td>The Maintenance Operation status on the virtual machine.</td>
</tr>
<tr>
    <td><CopyableCode code="osName" /></td>
    <td><code>string</code></td>
    <td>The Operating System running on the hybrid machine.</td>
</tr>
<tr>
    <td><CopyableCode code="osVersion" /></td>
    <td><code>string</code></td>
    <td>The version of Operating System running on the hybrid machine.</td>
</tr>
<tr>
    <td><CopyableCode code="placementGroupId" /></td>
    <td><code>string</code></td>
    <td>The placement group in which the VM is running. If the VM is deallocated it will not have a placementGroupId.</td>
</tr>
<tr>
    <td><CopyableCode code="platformFaultDomain" /></td>
    <td><code>integer (int32)</code></td>
    <td>The Fault Domain count.</td>
</tr>
<tr>
    <td><CopyableCode code="platformUpdateDomain" /></td>
    <td><code>integer (int32)</code></td>
    <td>The Update Domain count.</td>
</tr>
<tr>
    <td><CopyableCode code="rdpThumbPrint" /></td>
    <td><code>string</code></td>
    <td>The Remote desktop certificate thumbprint.</td>
</tr>
<tr>
    <td><CopyableCode code="statuses" /></td>
    <td><code>array</code></td>
    <td>The resource status information.</td>
</tr>
<tr>
    <td><CopyableCode code="vmAgent" /></td>
    <td><code>object</code></td>
    <td>The VM Agent running on the virtual machine.</td>
</tr>
<tr>
    <td><CopyableCode code="vmHealth" /></td>
    <td><code>object</code></td>
    <td>The health status for the VM.</td>
</tr>
</tbody>
</table>
</TabItem>
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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Resource Id</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource name</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>Etag is property returned in Update/Get response of the VMSS VM, so that customer can supply it in the header to ensure optimistic updates.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The identity of the virtual machine, if configured.</td>
</tr>
<tr>
    <td><CopyableCode code="instanceId" /></td>
    <td><code>string</code></td>
    <td>The virtual machine instance ID.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location</td>
</tr>
<tr>
    <td><CopyableCode code="plan" /></td>
    <td><code>object</code></td>
    <td>Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use.  In the Azure portal, find the marketplace image that you want to use and then click **Want to deploy programmatically, Get Started -&gt;**. Enter any required information and then click **Save**.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Describes the properties of a virtual machine scale set virtual machine.</td>
</tr>
<tr>
    <td><CopyableCode code="resources" /></td>
    <td><code>array</code></td>
    <td>The virtual machine child extension resources.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The virtual machine SKU.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type</td>
</tr>
<tr>
    <td><CopyableCode code="zones" /></td>
    <td><code>array</code></td>
    <td>The virtual machine zones.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>Gets a virtual machine from a VM scale set.</td>
</tr>
<tr>
    <td><a href="#get_instance_view"><CopyableCode code="get_instance_view" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets the status of a virtual machine from a VM scale set.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualMachineScaleSetName"><code>virtualMachineScaleSetName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$select"><code>$select</code></a>, <a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>Gets a list of all virtual machines in a VM scale sets.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-If-Match"><code>If-Match</code></a>, <a href="#parameter-If-None-Match"><code>If-None-Match</code></a></td>
    <td>Updates a virtual machine of a VM scale set.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-forceDeletion"><code>forceDeletion</code></a></td>
    <td>Deletes a virtual machine from a VM scale set.</td>
</tr>
<tr>
    <td><a href="#run_command"><CopyableCode code="run_command" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-commandId"><code>commandId</code></a></td>
    <td></td>
    <td>Run command on a virtual machine in a VM scale set.</td>
</tr>
<tr>
    <td><a href="#reimage"><CopyableCode code="reimage" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Reimages (upgrade the operating system) a specific virtual machine in a VM scale set.</td>
</tr>
<tr>
    <td><a href="#reimage_all"><CopyableCode code="reimage_all" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Allows you to re-image all the disks ( including data disks ) in the a VM scale set instance. This operation is only supported for managed disks.</td>
</tr>
<tr>
    <td><a href="#approve_rolling_upgrade"><CopyableCode code="approve_rolling_upgrade" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Approve upgrade on deferred rolling upgrade for OS disk on a VM scale set instance.</td>
</tr>
<tr>
    <td><a href="#deallocate"><CopyableCode code="deallocate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deallocates a specific virtual machine in a VM scale set. Shuts down the virtual machine and releases the compute resources it uses. You are not billed for the compute resources of this virtual machine once it is deallocated.</td>
</tr>
<tr>
    <td><a href="#power_off"><CopyableCode code="power_off" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-skipShutdown"><code>skipShutdown</code></a></td>
    <td>Power off (stop) a virtual machine in a VM scale set. Note that resources are still attached and you are getting charged for the resources. Instead, use deallocate to release resources and avoid charges.</td>
</tr>
<tr>
    <td><a href="#restart"><CopyableCode code="restart" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Restarts a virtual machine in a VM scale set.</td>
</tr>
<tr>
    <td><a href="#start"><CopyableCode code="start" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Starts a virtual machine in a VM scale set.</td>
</tr>
<tr>
    <td><a href="#redeploy"><CopyableCode code="redeploy" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Shuts down the virtual machine in the virtual machine scale set, moves it to a new node, and powers it back on.</td>
</tr>
<tr>
    <td><a href="#retrieve_boot_diagnostics_data"><CopyableCode code="retrieve_boot_diagnostics_data" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-sasUriExpirationTimeInMinutes"><code>sasUriExpirationTimeInMinutes</code></a></td>
    <td>The operation to retrieve SAS URIs of boot diagnostic logs for a virtual machine in a VM scale set.</td>
</tr>
<tr>
    <td><a href="#perform_maintenance"><CopyableCode code="perform_maintenance" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Performs maintenance on a virtual machine in a VM scale set.</td>
</tr>
<tr>
    <td><a href="#simulate_eviction"><CopyableCode code="simulate_eviction" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>The operation to simulate the eviction of spot virtual machine in a VM scale set.</td>
</tr>
<tr>
    <td><a href="#attach_detach_data_disks"><CopyableCode code="attach_detach_data_disks" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-instanceId"><code>instanceId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Attach and detach data disks to/from a virtual machine in a VM scale set.</td>
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
<tr id="parameter-instanceId">
    <td><CopyableCode code="instanceId" /></td>
    <td><code>string</code></td>
    <td>The instance ID of the virtual machine.</td>
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
<tr id="parameter-virtualMachineScaleSetName">
    <td><CopyableCode code="virtualMachineScaleSetName" /></td>
    <td><code>string</code></td>
    <td>The name of the VM scale set.</td>
</tr>
<tr id="parameter-vmScaleSetName">
    <td><CopyableCode code="vmScaleSetName" /></td>
    <td><code>string</code></td>
    <td>The name of the VM scale set.</td>
</tr>
<tr id="parameter-$expand">
    <td><CopyableCode code="$expand" /></td>
    <td><code>string</code></td>
    <td>The expand expression to apply to the operation. Allowed values are 'instanceView'.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The filter to apply to the operation. Allowed values are 'startswith(instanceView/statuses/code, 'PowerState') eq true', 'properties/latestModelApplied eq true', 'properties/latestModelApplied eq false'.</td>
</tr>
<tr id="parameter-$select">
    <td><CopyableCode code="$select" /></td>
    <td><code>string</code></td>
    <td>The list parameters. Allowed values are 'instanceView', 'instanceView/statuses'.</td>
</tr>
<tr id="parameter-If-Match">
    <td><CopyableCode code="If-Match" /></td>
    <td><code>string</code></td>
    <td>The ETag of the transformation. Omit this value to always overwrite the current resource. Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes.</td>
</tr>
<tr id="parameter-If-None-Match">
    <td><CopyableCode code="If-None-Match" /></td>
    <td><code>string</code></td>
    <td>Set to '*' to allow a new record set to be created, but to prevent updating an existing record set. Other values will result in error from server as they are not supported.</td>
</tr>
<tr id="parameter-forceDeletion">
    <td><CopyableCode code="forceDeletion" /></td>
    <td><code>boolean</code></td>
    <td>Optional parameter to force delete a virtual machine from a VM scale set. (Feature in Preview)</td>
</tr>
<tr id="parameter-sasUriExpirationTimeInMinutes">
    <td><CopyableCode code="sasUriExpirationTimeInMinutes" /></td>
    <td><code>integer (int32)</code></td>
    <td>Expiration duration in minutes for the SAS URIs with a value between 1 to 1440 minutes. **Note:** If not specified, SAS URIs will be generated with a default expiration duration of 120 minutes.</td>
</tr>
<tr id="parameter-skipShutdown">
    <td><CopyableCode code="skipShutdown" /></td>
    <td><code>boolean</code></td>
    <td>The parameter to request non-graceful VM shutdown. True value for this flag indicates non-graceful shutdown whereas false indicates otherwise. Default value for this flag is false if not specified</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'get_instance_view', value: 'get_instance_view' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Gets a virtual machine from a VM scale set.

```sql
SELECT
id,
name,
etag,
identity,
instanceId,
location,
plan,
properties,
resources,
sku,
tags,
type,
zones
FROM azure.compute.virtual_machine_scale_set_vms
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND vmScaleSetName = '{{ vmScaleSetName }}' -- required
AND instanceId = '{{ instanceId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $expand = '{{ $expand }}'
;
```
</TabItem>
<TabItem value="get_instance_view">

Gets the status of a virtual machine from a VM scale set.

```sql
SELECT
assignedHost,
bootDiagnostics,
computerName,
disks,
extensions,
hyperVGeneration,
maintenanceRedeployStatus,
osName,
osVersion,
placementGroupId,
platformFaultDomain,
platformUpdateDomain,
rdpThumbPrint,
statuses,
vmAgent,
vmHealth
FROM azure.compute.virtual_machine_scale_set_vms
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND vmScaleSetName = '{{ vmScaleSetName }}' -- required
AND instanceId = '{{ instanceId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets a list of all virtual machines in a VM scale sets.

```sql
SELECT
id,
name,
etag,
identity,
instanceId,
location,
plan,
properties,
resources,
sku,
tags,
type,
zones
FROM azure.compute.virtual_machine_scale_set_vms
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND virtualMachineScaleSetName = '{{ virtualMachineScaleSetName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $filter = '{{ $filter }}'
AND $select = '{{ $select }}'
AND $expand = '{{ $expand }}'
;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="update"
    values={[
        { label: 'update', value: 'update' }
    ]}
>
<TabItem value="update">

Updates a virtual machine of a VM scale set.

```sql
REPLACE azure.compute.virtual_machine_scale_set_vms
SET 
data__properties = '{{ properties }}',
data__plan = '{{ plan }}',
data__identity = '{{ identity }}',
data__location = '{{ location }}',
data__tags = '{{ tags }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND vmScaleSetName = '{{ vmScaleSetName }}' --required
AND instanceId = '{{ instanceId }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND If-Match = '{{ If-Match}}'
AND If-None-Match = '{{ If-None-Match}}'
RETURNING
id,
name,
etag,
identity,
instanceId,
location,
plan,
properties,
resources,
sku,
tags,
type,
zones;
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

Deletes a virtual machine from a VM scale set.

```sql
DELETE FROM azure.compute.virtual_machine_scale_set_vms
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND vmScaleSetName = '{{ vmScaleSetName }}' --required
AND instanceId = '{{ instanceId }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND forceDeletion = '{{ forceDeletion }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="run_command"
    values={[
        { label: 'run_command', value: 'run_command' },
        { label: 'reimage', value: 'reimage' },
        { label: 'reimage_all', value: 'reimage_all' },
        { label: 'approve_rolling_upgrade', value: 'approve_rolling_upgrade' },
        { label: 'deallocate', value: 'deallocate' },
        { label: 'power_off', value: 'power_off' },
        { label: 'restart', value: 'restart' },
        { label: 'start', value: 'start' },
        { label: 'redeploy', value: 'redeploy' },
        { label: 'retrieve_boot_diagnostics_data', value: 'retrieve_boot_diagnostics_data' },
        { label: 'perform_maintenance', value: 'perform_maintenance' },
        { label: 'simulate_eviction', value: 'simulate_eviction' },
        { label: 'attach_detach_data_disks', value: 'attach_detach_data_disks' }
    ]}
>
<TabItem value="run_command">

Run command on a virtual machine in a VM scale set.

```sql
EXEC azure.compute.virtual_machine_scale_set_vms.run_command 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmScaleSetName='{{ vmScaleSetName }}' --required, 
@instanceId='{{ instanceId }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"commandId": "{{ commandId }}", 
"script": "{{ script }}", 
"parameters": "{{ parameters }}"
}'
;
```
</TabItem>
<TabItem value="reimage">

Reimages (upgrade the operating system) a specific virtual machine in a VM scale set.

```sql
EXEC azure.compute.virtual_machine_scale_set_vms.reimage 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmScaleSetName='{{ vmScaleSetName }}' --required, 
@instanceId='{{ instanceId }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"forceUpdateOSDiskForEphemeral": {{ forceUpdateOSDiskForEphemeral }}, 
"tempDisk": {{ tempDisk }}, 
"exactVersion": "{{ exactVersion }}", 
"osProfile": "{{ osProfile }}"
}'
;
```
</TabItem>
<TabItem value="reimage_all">

Allows you to re-image all the disks ( including data disks ) in the a VM scale set instance. This operation is only supported for managed disks.

```sql
EXEC azure.compute.virtual_machine_scale_set_vms.reimage_all 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmScaleSetName='{{ vmScaleSetName }}' --required, 
@instanceId='{{ instanceId }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="approve_rolling_upgrade">

Approve upgrade on deferred rolling upgrade for OS disk on a VM scale set instance.

```sql
EXEC azure.compute.virtual_machine_scale_set_vms.approve_rolling_upgrade 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmScaleSetName='{{ vmScaleSetName }}' --required, 
@instanceId='{{ instanceId }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="deallocate">

Deallocates a specific virtual machine in a VM scale set. Shuts down the virtual machine and releases the compute resources it uses. You are not billed for the compute resources of this virtual machine once it is deallocated.

```sql
EXEC azure.compute.virtual_machine_scale_set_vms.deallocate 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmScaleSetName='{{ vmScaleSetName }}' --required, 
@instanceId='{{ instanceId }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="power_off">

Power off (stop) a virtual machine in a VM scale set. Note that resources are still attached and you are getting charged for the resources. Instead, use deallocate to release resources and avoid charges.

```sql
EXEC azure.compute.virtual_machine_scale_set_vms.power_off 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmScaleSetName='{{ vmScaleSetName }}' --required, 
@instanceId='{{ instanceId }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@skipShutdown={{ skipShutdown }}
;
```
</TabItem>
<TabItem value="restart">

Restarts a virtual machine in a VM scale set.

```sql
EXEC azure.compute.virtual_machine_scale_set_vms.restart 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmScaleSetName='{{ vmScaleSetName }}' --required, 
@instanceId='{{ instanceId }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="start">

Starts a virtual machine in a VM scale set.

```sql
EXEC azure.compute.virtual_machine_scale_set_vms.start 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmScaleSetName='{{ vmScaleSetName }}' --required, 
@instanceId='{{ instanceId }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="redeploy">

Shuts down the virtual machine in the virtual machine scale set, moves it to a new node, and powers it back on.

```sql
EXEC azure.compute.virtual_machine_scale_set_vms.redeploy 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmScaleSetName='{{ vmScaleSetName }}' --required, 
@instanceId='{{ instanceId }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="retrieve_boot_diagnostics_data">

The operation to retrieve SAS URIs of boot diagnostic logs for a virtual machine in a VM scale set.

```sql
EXEC azure.compute.virtual_machine_scale_set_vms.retrieve_boot_diagnostics_data 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmScaleSetName='{{ vmScaleSetName }}' --required, 
@instanceId='{{ instanceId }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@sasUriExpirationTimeInMinutes='{{ sasUriExpirationTimeInMinutes }}'
;
```
</TabItem>
<TabItem value="perform_maintenance">

Performs maintenance on a virtual machine in a VM scale set.

```sql
EXEC azure.compute.virtual_machine_scale_set_vms.perform_maintenance 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmScaleSetName='{{ vmScaleSetName }}' --required, 
@instanceId='{{ instanceId }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="simulate_eviction">

The operation to simulate the eviction of spot virtual machine in a VM scale set.

```sql
EXEC azure.compute.virtual_machine_scale_set_vms.simulate_eviction 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmScaleSetName='{{ vmScaleSetName }}' --required, 
@instanceId='{{ instanceId }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="attach_detach_data_disks">

Attach and detach data disks to/from a virtual machine in a VM scale set.

```sql
EXEC azure.compute.virtual_machine_scale_set_vms.attach_detach_data_disks 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmScaleSetName='{{ vmScaleSetName }}' --required, 
@instanceId='{{ instanceId }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"dataDisksToAttach": "{{ dataDisksToAttach }}", 
"dataDisksToDetach": "{{ dataDisksToDetach }}"
}'
;
```
</TabItem>
</Tabs>
