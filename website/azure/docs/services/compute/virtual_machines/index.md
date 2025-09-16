--- 
title: virtual_machines
hide_title: false
hide_table_of_contents: false
keywords:
  - virtual_machines
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

Creates, updates, deletes, gets or lists a <code>virtual_machines</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>virtual_machines</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.virtual_machines" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_location', value: 'list_by_location' },
        { label: 'list', value: 'list' },
        { label: 'list_all', value: 'list_all' }
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
    <td>Etag is property returned in Create/Update/Get response of the VM, so that customer can supply it in the header to ensure optimistic updates.</td>
</tr>
<tr>
    <td><CopyableCode code="extendedLocation" /></td>
    <td><code>object</code></td>
    <td>The extended location of the Virtual Machine.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The identity of the virtual machine, if configured.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location</td>
</tr>
<tr>
    <td><CopyableCode code="managedBy" /></td>
    <td><code>string</code></td>
    <td>ManagedBy is set to Virtual Machine Scale Set(VMSS) flex ARM resourceID, if the VM is part of the VMSS. This property is used by platform for internal resource group delete optimization.</td>
</tr>
<tr>
    <td><CopyableCode code="plan" /></td>
    <td><code>object</code></td>
    <td>Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use.  In the Azure portal, find the marketplace image that you want to use and then click **Want to deploy programmatically, Get Started -&gt;**. Enter any required information and then click **Save**.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Describes the properties of a Virtual Machine.</td>
</tr>
<tr>
    <td><CopyableCode code="resources" /></td>
    <td><code>array</code></td>
    <td>The virtual machine child extension resources.</td>
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
<TabItem value="list_by_location">

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
    <td>Etag is property returned in Create/Update/Get response of the VM, so that customer can supply it in the header to ensure optimistic updates.</td>
</tr>
<tr>
    <td><CopyableCode code="extendedLocation" /></td>
    <td><code>object</code></td>
    <td>The extended location of the Virtual Machine.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The identity of the virtual machine, if configured.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location</td>
</tr>
<tr>
    <td><CopyableCode code="managedBy" /></td>
    <td><code>string</code></td>
    <td>ManagedBy is set to Virtual Machine Scale Set(VMSS) flex ARM resourceID, if the VM is part of the VMSS. This property is used by platform for internal resource group delete optimization.</td>
</tr>
<tr>
    <td><CopyableCode code="plan" /></td>
    <td><code>object</code></td>
    <td>Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use.  In the Azure portal, find the marketplace image that you want to use and then click **Want to deploy programmatically, Get Started -&gt;**. Enter any required information and then click **Save**.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Describes the properties of a Virtual Machine.</td>
</tr>
<tr>
    <td><CopyableCode code="resources" /></td>
    <td><code>array</code></td>
    <td>The virtual machine child extension resources.</td>
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
    <td>Etag is property returned in Create/Update/Get response of the VM, so that customer can supply it in the header to ensure optimistic updates.</td>
</tr>
<tr>
    <td><CopyableCode code="extendedLocation" /></td>
    <td><code>object</code></td>
    <td>The extended location of the Virtual Machine.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The identity of the virtual machine, if configured.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location</td>
</tr>
<tr>
    <td><CopyableCode code="managedBy" /></td>
    <td><code>string</code></td>
    <td>ManagedBy is set to Virtual Machine Scale Set(VMSS) flex ARM resourceID, if the VM is part of the VMSS. This property is used by platform for internal resource group delete optimization.</td>
</tr>
<tr>
    <td><CopyableCode code="plan" /></td>
    <td><code>object</code></td>
    <td>Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use.  In the Azure portal, find the marketplace image that you want to use and then click **Want to deploy programmatically, Get Started -&gt;**. Enter any required information and then click **Save**.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Describes the properties of a Virtual Machine.</td>
</tr>
<tr>
    <td><CopyableCode code="resources" /></td>
    <td><code>array</code></td>
    <td>The virtual machine child extension resources.</td>
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
<TabItem value="list_all">

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
    <td>Etag is property returned in Create/Update/Get response of the VM, so that customer can supply it in the header to ensure optimistic updates.</td>
</tr>
<tr>
    <td><CopyableCode code="extendedLocation" /></td>
    <td><code>object</code></td>
    <td>The extended location of the Virtual Machine.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The identity of the virtual machine, if configured.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location</td>
</tr>
<tr>
    <td><CopyableCode code="managedBy" /></td>
    <td><code>string</code></td>
    <td>ManagedBy is set to Virtual Machine Scale Set(VMSS) flex ARM resourceID, if the VM is part of the VMSS. This property is used by platform for internal resource group delete optimization.</td>
</tr>
<tr>
    <td><CopyableCode code="plan" /></td>
    <td><code>object</code></td>
    <td>Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use.  In the Azure portal, find the marketplace image that you want to use and then click **Want to deploy programmatically, Get Started -&gt;**. Enter any required information and then click **Save**.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Describes the properties of a Virtual Machine.</td>
</tr>
<tr>
    <td><CopyableCode code="resources" /></td>
    <td><code>array</code></td>
    <td>The virtual machine child extension resources.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmName"><code>vmName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>Retrieves information about the model view or the instance view of a virtual machine.</td>
</tr>
<tr>
    <td><a href="#list_by_location"><CopyableCode code="list_by_location" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-location"><code>location</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets all the virtual machines under the specified subscription for the specified location.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>Lists all of the virtual machines in the specified resource group. Use the nextLink property in the response to get the next page of virtual machines.</td>
</tr>
<tr>
    <td><a href="#list_all"><CopyableCode code="list_all" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-statusOnly"><code>statusOnly</code></a>, <a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>Lists all of the virtual machines in the specified subscription. Use the nextLink property in the response to get the next page of virtual machines.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmName"><code>vmName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-If-Match"><code>If-Match</code></a>, <a href="#parameter-If-None-Match"><code>If-None-Match</code></a></td>
    <td>The operation to create or update a virtual machine. Please note some properties can be set only during virtual machine creation.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmName"><code>vmName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-If-Match"><code>If-Match</code></a>, <a href="#parameter-If-None-Match"><code>If-None-Match</code></a></td>
    <td>The operation to update a virtual machine.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmName"><code>vmName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-forceDeletion"><code>forceDeletion</code></a></td>
    <td>The operation to delete a virtual machine.</td>
</tr>
<tr>
    <td><a href="#run_command"><CopyableCode code="run_command" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmName"><code>vmName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-commandId"><code>commandId</code></a></td>
    <td></td>
    <td>Run command on the VM.</td>
</tr>
<tr>
    <td><a href="#capture"><CopyableCode code="capture" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmName"><code>vmName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-vhdPrefix"><code>vhdPrefix</code></a>, <a href="#parameter-destinationContainerName"><code>destinationContainerName</code></a>, <a href="#parameter-overwriteVhds"><code>overwriteVhds</code></a></td>
    <td></td>
    <td>Captures the VM by copying virtual hard disks of the VM and outputs a template that can be used to create similar VMs.</td>
</tr>
<tr>
    <td><a href="#instance_view"><CopyableCode code="instance_view" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmName"><code>vmName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Retrieves information about the run-time state of a virtual machine.</td>
</tr>
<tr>
    <td><a href="#convert_to_managed_disks"><CopyableCode code="convert_to_managed_disks" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmName"><code>vmName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Converts virtual machine disks from blob-based to managed disks. Virtual machine must be stop-deallocated before invoking this operation.</td>
</tr>
<tr>
    <td><a href="#deallocate"><CopyableCode code="deallocate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmName"><code>vmName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-hibernate"><code>hibernate</code></a></td>
    <td>Shuts down the virtual machine and releases the compute resources. You are not billed for the compute resources that this virtual machine uses.</td>
</tr>
<tr>
    <td><a href="#generalize"><CopyableCode code="generalize" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmName"><code>vmName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Sets the OS state of the virtual machine to generalized. It is recommended to sysprep the virtual machine before performing this operation. For Windows, please refer to [Create a managed image of a generalized VM in Azure](https://docs.microsoft.com/azure/virtual-machines/windows/capture-image-resource). For Linux, please refer to [How to create an image of a virtual machine or VHD](https://docs.microsoft.com/azure/virtual-machines/linux/capture-image).</td>
</tr>
<tr>
    <td><a href="#power_off"><CopyableCode code="power_off" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmName"><code>vmName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-skipShutdown"><code>skipShutdown</code></a></td>
    <td>The operation to power off (stop) a virtual machine. The virtual machine can be restarted with the same provisioned resources. You are still charged for this virtual machine.</td>
</tr>
<tr>
    <td><a href="#reapply"><CopyableCode code="reapply" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmName"><code>vmName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>The operation to reapply a virtual machine's state.</td>
</tr>
<tr>
    <td><a href="#restart"><CopyableCode code="restart" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmName"><code>vmName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>The operation to restart a virtual machine.</td>
</tr>
<tr>
    <td><a href="#start"><CopyableCode code="start" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmName"><code>vmName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>The operation to start a virtual machine.</td>
</tr>
<tr>
    <td><a href="#redeploy"><CopyableCode code="redeploy" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmName"><code>vmName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Shuts down the virtual machine, moves it to a new node, and powers it back on.</td>
</tr>
<tr>
    <td><a href="#reimage"><CopyableCode code="reimage" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmName"><code>vmName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Reimages (upgrade the operating system) a virtual machine which don't have a ephemeral OS disk, for virtual machines who have a ephemeral OS disk the virtual machine is reset to initial state. NOTE: The retaining of old OS disk depends on the value of deleteOption of OS disk. If deleteOption is detach, the old OS disk will be preserved after reimage. If deleteOption is delete, the old OS disk will be deleted after reimage. The deleteOption of the OS disk should be updated accordingly before performing the reimage.</td>
</tr>
<tr>
    <td><a href="#retrieve_boot_diagnostics_data"><CopyableCode code="retrieve_boot_diagnostics_data" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmName"><code>vmName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-sasUriExpirationTimeInMinutes"><code>sasUriExpirationTimeInMinutes</code></a></td>
    <td>The operation to retrieve SAS URIs for a virtual machine's boot diagnostic logs.</td>
</tr>
<tr>
    <td><a href="#perform_maintenance"><CopyableCode code="perform_maintenance" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmName"><code>vmName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>The operation to perform maintenance on a virtual machine.</td>
</tr>
<tr>
    <td><a href="#simulate_eviction"><CopyableCode code="simulate_eviction" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmName"><code>vmName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>The operation to simulate the eviction of spot virtual machine.</td>
</tr>
<tr>
    <td><a href="#assess_patches"><CopyableCode code="assess_patches" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmName"><code>vmName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Assess patches on the VM.</td>
</tr>
<tr>
    <td><a href="#install_patches"><CopyableCode code="install_patches" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmName"><code>vmName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-rebootSetting"><code>rebootSetting</code></a></td>
    <td></td>
    <td>Installs patches on the VM.</td>
</tr>
<tr>
    <td><a href="#attach_detach_data_disks"><CopyableCode code="attach_detach_data_disks" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmName"><code>vmName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Attach and detach data disks to/from the virtual machine.</td>
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
    <td>The location for which virtual machines under the subscription are queried.</td>
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
<tr id="parameter-vmName">
    <td><CopyableCode code="vmName" /></td>
    <td><code>string</code></td>
    <td>The name of the virtual machine.</td>
</tr>
<tr id="parameter-$expand">
    <td><CopyableCode code="$expand" /></td>
    <td><code>string</code></td>
    <td>The expand expression to apply on operation. 'instanceView' enables fetching run time status of all Virtual Machines, this can only be specified if a valid $filter option is specified</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The system query option to filter VMs returned in the response. Allowed value is 'virtualMachineScaleSet/id' eq /subscriptions/&#123;subId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/Microsoft.Compute/virtualMachineScaleSets/&#123;vmssName&#125;'</td>
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
    <td>Optional parameter to force delete virtual machines.</td>
</tr>
<tr id="parameter-hibernate">
    <td><CopyableCode code="hibernate" /></td>
    <td><code>boolean</code></td>
    <td>Optional parameter to hibernate a virtual machine.</td>
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
<tr id="parameter-statusOnly">
    <td><CopyableCode code="statusOnly" /></td>
    <td><code>string</code></td>
    <td>statusOnly=true enables fetching run time status of all Virtual Machines in the subscription.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_location', value: 'list_by_location' },
        { label: 'list', value: 'list' },
        { label: 'list_all', value: 'list_all' }
    ]}
>
<TabItem value="get">

Retrieves information about the model view or the instance view of a virtual machine.

```sql
SELECT
id,
name,
etag,
extendedLocation,
identity,
location,
managedBy,
plan,
properties,
resources,
tags,
type,
zones
FROM azure.compute.virtual_machines
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND vmName = '{{ vmName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $expand = '{{ $expand }}'
;
```
</TabItem>
<TabItem value="list_by_location">

Gets all the virtual machines under the specified subscription for the specified location.

```sql
SELECT
id,
name,
etag,
extendedLocation,
identity,
location,
managedBy,
plan,
properties,
resources,
tags,
type,
zones
FROM azure.compute.virtual_machines
WHERE location = '{{ location }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists all of the virtual machines in the specified resource group. Use the nextLink property in the response to get the next page of virtual machines.

```sql
SELECT
id,
name,
etag,
extendedLocation,
identity,
location,
managedBy,
plan,
properties,
resources,
tags,
type,
zones
FROM azure.compute.virtual_machines
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $filter = '{{ $filter }}'
AND $expand = '{{ $expand }}'
;
```
</TabItem>
<TabItem value="list_all">

Lists all of the virtual machines in the specified subscription. Use the nextLink property in the response to get the next page of virtual machines.

```sql
SELECT
id,
name,
etag,
extendedLocation,
identity,
location,
managedBy,
plan,
properties,
resources,
tags,
type,
zones
FROM azure.compute.virtual_machines
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND statusOnly = '{{ statusOnly }}'
AND $filter = '{{ $filter }}'
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

The operation to create or update a virtual machine. Please note some properties can be set only during virtual machine creation.

```sql
INSERT INTO azure.compute.virtual_machines (
data__plan,
data__properties,
data__identity,
data__zones,
data__extendedLocation,
data__location,
data__tags,
resourceGroupName,
vmName,
subscriptionId,
If-Match,
If-None-Match
)
SELECT 
'{{ plan }}',
'{{ properties }}',
'{{ identity }}',
'{{ zones }}',
'{{ extendedLocation }}',
'{{ location }}',
'{{ tags }}',
'{{ resourceGroupName }}',
'{{ vmName }}',
'{{ subscriptionId }}',
'{{ If-Match }}',
'{{ If-None-Match }}'
RETURNING
id,
name,
etag,
extendedLocation,
identity,
location,
managedBy,
plan,
properties,
resources,
tags,
type,
zones
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: virtual_machines
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the virtual_machines resource.
    - name: vmName
      value: string
      description: Required parameter for the virtual_machines resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the virtual_machines resource.
    - name: plan
      value: object
      description: |
        Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use.  In the Azure portal, find the marketplace image that you want to use and then click **Want to deploy programmatically, Get Started ->**. Enter any required information and then click **Save**.
    - name: properties
      value: object
      description: |
        Describes the properties of a Virtual Machine.
    - name: identity
      value: object
      description: |
        The identity of the virtual machine, if configured.
    - name: zones
      value: array
      description: |
        The virtual machine zones.
    - name: extendedLocation
      value: object
      description: |
        The extended location of the Virtual Machine.
    - name: location
      value: string
      description: |
        Resource location
    - name: tags
      value: object
      description: |
        Resource tags
    - name: If-Match
      value: string
      description: The ETag of the transformation. Omit this value to always overwrite the current resource. Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes.
    - name: If-None-Match
      value: string
      description: Set to '*' to allow a new record set to be created, but to prevent updating an existing record set. Other values will result in error from server as they are not supported.
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

The operation to update a virtual machine.

```sql
UPDATE azure.compute.virtual_machines
SET 
data__plan = '{{ plan }}',
data__properties = '{{ properties }}',
data__identity = '{{ identity }}',
data__zones = '{{ zones }}',
data__tags = '{{ tags }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND vmName = '{{ vmName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND If-Match = '{{ If-Match}}'
AND If-None-Match = '{{ If-None-Match}}'
RETURNING
id,
name,
etag,
extendedLocation,
identity,
location,
managedBy,
plan,
properties,
resources,
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

The operation to delete a virtual machine.

```sql
DELETE FROM azure.compute.virtual_machines
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND vmName = '{{ vmName }}' --required
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
        { label: 'capture', value: 'capture' },
        { label: 'instance_view', value: 'instance_view' },
        { label: 'convert_to_managed_disks', value: 'convert_to_managed_disks' },
        { label: 'deallocate', value: 'deallocate' },
        { label: 'generalize', value: 'generalize' },
        { label: 'power_off', value: 'power_off' },
        { label: 'reapply', value: 'reapply' },
        { label: 'restart', value: 'restart' },
        { label: 'start', value: 'start' },
        { label: 'redeploy', value: 'redeploy' },
        { label: 'reimage', value: 'reimage' },
        { label: 'retrieve_boot_diagnostics_data', value: 'retrieve_boot_diagnostics_data' },
        { label: 'perform_maintenance', value: 'perform_maintenance' },
        { label: 'simulate_eviction', value: 'simulate_eviction' },
        { label: 'assess_patches', value: 'assess_patches' },
        { label: 'install_patches', value: 'install_patches' },
        { label: 'attach_detach_data_disks', value: 'attach_detach_data_disks' }
    ]}
>
<TabItem value="run_command">

Run command on the VM.

```sql
EXEC azure.compute.virtual_machines.run_command 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmName='{{ vmName }}' --required, 
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
<TabItem value="capture">

Captures the VM by copying virtual hard disks of the VM and outputs a template that can be used to create similar VMs.

```sql
EXEC azure.compute.virtual_machines.capture 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmName='{{ vmName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"vhdPrefix": "{{ vhdPrefix }}", 
"destinationContainerName": "{{ destinationContainerName }}", 
"overwriteVhds": {{ overwriteVhds }}
}'
;
```
</TabItem>
<TabItem value="instance_view">

Retrieves information about the run-time state of a virtual machine.

```sql
EXEC azure.compute.virtual_machines.instance_view 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmName='{{ vmName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="convert_to_managed_disks">

Converts virtual machine disks from blob-based to managed disks. Virtual machine must be stop-deallocated before invoking this operation.

```sql
EXEC azure.compute.virtual_machines.convert_to_managed_disks 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmName='{{ vmName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="deallocate">

Shuts down the virtual machine and releases the compute resources. You are not billed for the compute resources that this virtual machine uses.

```sql
EXEC azure.compute.virtual_machines.deallocate 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmName='{{ vmName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@hibernate={{ hibernate }}
;
```
</TabItem>
<TabItem value="generalize">

Sets the OS state of the virtual machine to generalized. It is recommended to sysprep the virtual machine before performing this operation. For Windows, please refer to [Create a managed image of a generalized VM in Azure](https://docs.microsoft.com/azure/virtual-machines/windows/capture-image-resource). For Linux, please refer to [How to create an image of a virtual machine or VHD](https://docs.microsoft.com/azure/virtual-machines/linux/capture-image).

```sql
EXEC azure.compute.virtual_machines.generalize 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmName='{{ vmName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="power_off">

The operation to power off (stop) a virtual machine. The virtual machine can be restarted with the same provisioned resources. You are still charged for this virtual machine.

```sql
EXEC azure.compute.virtual_machines.power_off 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmName='{{ vmName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@skipShutdown={{ skipShutdown }}
;
```
</TabItem>
<TabItem value="reapply">

The operation to reapply a virtual machine's state.

```sql
EXEC azure.compute.virtual_machines.reapply 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmName='{{ vmName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="restart">

The operation to restart a virtual machine.

```sql
EXEC azure.compute.virtual_machines.restart 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmName='{{ vmName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="start">

The operation to start a virtual machine.

```sql
EXEC azure.compute.virtual_machines.start 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmName='{{ vmName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="redeploy">

Shuts down the virtual machine, moves it to a new node, and powers it back on.

```sql
EXEC azure.compute.virtual_machines.redeploy 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmName='{{ vmName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="reimage">

Reimages (upgrade the operating system) a virtual machine which don't have a ephemeral OS disk, for virtual machines who have a ephemeral OS disk the virtual machine is reset to initial state. NOTE: The retaining of old OS disk depends on the value of deleteOption of OS disk. If deleteOption is detach, the old OS disk will be preserved after reimage. If deleteOption is delete, the old OS disk will be deleted after reimage. The deleteOption of the OS disk should be updated accordingly before performing the reimage.

```sql
EXEC azure.compute.virtual_machines.reimage 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmName='{{ vmName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"tempDisk": {{ tempDisk }}, 
"exactVersion": "{{ exactVersion }}", 
"osProfile": "{{ osProfile }}"
}'
;
```
</TabItem>
<TabItem value="retrieve_boot_diagnostics_data">

The operation to retrieve SAS URIs for a virtual machine's boot diagnostic logs.

```sql
EXEC azure.compute.virtual_machines.retrieve_boot_diagnostics_data 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmName='{{ vmName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@sasUriExpirationTimeInMinutes='{{ sasUriExpirationTimeInMinutes }}'
;
```
</TabItem>
<TabItem value="perform_maintenance">

The operation to perform maintenance on a virtual machine.

```sql
EXEC azure.compute.virtual_machines.perform_maintenance 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmName='{{ vmName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="simulate_eviction">

The operation to simulate the eviction of spot virtual machine.

```sql
EXEC azure.compute.virtual_machines.simulate_eviction 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmName='{{ vmName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="assess_patches">

Assess patches on the VM.

```sql
EXEC azure.compute.virtual_machines.assess_patches 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmName='{{ vmName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="install_patches">

Installs patches on the VM.

```sql
EXEC azure.compute.virtual_machines.install_patches 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmName='{{ vmName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"maximumDuration": "{{ maximumDuration }}", 
"rebootSetting": "{{ rebootSetting }}", 
"windowsParameters": "{{ windowsParameters }}", 
"linuxParameters": "{{ linuxParameters }}"
}'
;
```
</TabItem>
<TabItem value="attach_detach_data_disks">

Attach and detach data disks to/from the virtual machine.

```sql
EXEC azure.compute.virtual_machines.attach_detach_data_disks 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmName='{{ vmName }}' --required, 
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
