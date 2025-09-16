--- 
title: virtual_machine_scale_sets
hide_title: false
hide_table_of_contents: false
keywords:
  - virtual_machine_scale_sets
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

Creates, updates, deletes, gets or lists a <code>virtual_machine_scale_sets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>virtual_machine_scale_sets</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.virtual_machine_scale_sets" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'get_instance_view', value: 'get_instance_view' },
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
    <td>Etag is property returned in Create/Update/Get response of the VMSS, so that customer can supply it in the header to ensure optimistic updates</td>
</tr>
<tr>
    <td><CopyableCode code="extendedLocation" /></td>
    <td><code>object</code></td>
    <td>The extended location of the Virtual Machine Scale Set.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The identity of the virtual machine scale set, if configured.</td>
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
    <td>Describes the properties of a Virtual Machine Scale Set.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The virtual machine scale set sku.</td>
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
    <td>The virtual machine scale set zones.</td>
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
    <td><CopyableCode code="extensions" /></td>
    <td><code>array</code></td>
    <td>The extensions information.</td>
</tr>
<tr>
    <td><CopyableCode code="orchestrationServices" /></td>
    <td><code>array</code></td>
    <td>The orchestration services information.</td>
</tr>
<tr>
    <td><CopyableCode code="statuses" /></td>
    <td><code>array</code></td>
    <td>The resource status information.</td>
</tr>
<tr>
    <td><CopyableCode code="virtualMachine" /></td>
    <td><code>object</code></td>
    <td>The instance view status summary for the virtual machine scale set.</td>
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
    <td>Etag is property returned in Create/Update/Get response of the VMSS, so that customer can supply it in the header to ensure optimistic updates</td>
</tr>
<tr>
    <td><CopyableCode code="extendedLocation" /></td>
    <td><code>object</code></td>
    <td>The extended location of the Virtual Machine Scale Set.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The identity of the virtual machine scale set, if configured.</td>
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
    <td>Describes the properties of a Virtual Machine Scale Set.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The virtual machine scale set sku.</td>
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
    <td>The virtual machine scale set zones.</td>
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
    <td>Etag is property returned in Create/Update/Get response of the VMSS, so that customer can supply it in the header to ensure optimistic updates</td>
</tr>
<tr>
    <td><CopyableCode code="extendedLocation" /></td>
    <td><code>object</code></td>
    <td>The extended location of the Virtual Machine Scale Set.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The identity of the virtual machine scale set, if configured.</td>
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
    <td>Describes the properties of a Virtual Machine Scale Set.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The virtual machine scale set sku.</td>
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
    <td>The virtual machine scale set zones.</td>
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
    <td>Etag is property returned in Create/Update/Get response of the VMSS, so that customer can supply it in the header to ensure optimistic updates</td>
</tr>
<tr>
    <td><CopyableCode code="extendedLocation" /></td>
    <td><code>object</code></td>
    <td>The extended location of the Virtual Machine Scale Set.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The identity of the virtual machine scale set, if configured.</td>
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
    <td>Describes the properties of a Virtual Machine Scale Set.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The virtual machine scale set sku.</td>
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
    <td>The virtual machine scale set zones.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>Display information about a virtual machine scale set.</td>
</tr>
<tr>
    <td><a href="#get_instance_view"><CopyableCode code="get_instance_view" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets the status of a VM scale set instance.</td>
</tr>
<tr>
    <td><a href="#list_by_location"><CopyableCode code="list_by_location" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-location"><code>location</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets all the VM scale sets under the specified subscription for the specified location.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets a list of all VM scale sets under a resource group.</td>
</tr>
<tr>
    <td><a href="#list_all"><CopyableCode code="list_all" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets a list of all VM Scale Sets in the subscription, regardless of the associated resource group. Use nextLink property in the response to get the next page of VM Scale Sets. Do this till nextLink is null to fetch all the VM Scale Sets.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-If-Match"><code>If-Match</code></a>, <a href="#parameter-If-None-Match"><code>If-None-Match</code></a></td>
    <td>Create or update a VM scale set.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-If-Match"><code>If-Match</code></a>, <a href="#parameter-If-None-Match"><code>If-None-Match</code></a></td>
    <td>Update a VM scale set.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-forceDeletion"><code>forceDeletion</code></a></td>
    <td>Deletes a VM scale set.</td>
</tr>
<tr>
    <td><a href="#deallocate"><CopyableCode code="deallocate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-hibernate"><code>hibernate</code></a></td>
    <td>Deallocates specific virtual machines in a VM scale set. Shuts down the virtual machines and releases the compute resources. You are not billed for the compute resources that this virtual machine scale set deallocates.</td>
</tr>
<tr>
    <td><a href="#delete_instances"><CopyableCode code="delete_instances" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-instanceIds"><code>instanceIds</code></a></td>
    <td><a href="#parameter-forceDeletion"><code>forceDeletion</code></a></td>
    <td>Deletes virtual machines in a VM scale set.</td>
</tr>
<tr>
    <td><a href="#power_off"><CopyableCode code="power_off" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-skipShutdown"><code>skipShutdown</code></a></td>
    <td>Power off (stop) one or more virtual machines in a VM scale set. Note that resources are still attached and you are getting charged for the resources. Instead, use deallocate to release resources and avoid charges.</td>
</tr>
<tr>
    <td><a href="#restart"><CopyableCode code="restart" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Restarts one or more virtual machines in a VM scale set.</td>
</tr>
<tr>
    <td><a href="#start"><CopyableCode code="start" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Starts one or more virtual machines in a VM scale set.</td>
</tr>
<tr>
    <td><a href="#reapply"><CopyableCode code="reapply" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Reapplies the Virtual Machine Scale Set Virtual Machine Profile to the Virtual Machine Instances</td>
</tr>
<tr>
    <td><a href="#redeploy"><CopyableCode code="redeploy" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Shuts down all the virtual machines in the virtual machine scale set, moves them to a new node, and powers them back on.</td>
</tr>
<tr>
    <td><a href="#perform_maintenance"><CopyableCode code="perform_maintenance" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Perform maintenance on one or more virtual machines in a VM scale set. Operation on instances which are not eligible for perform maintenance will be failed. Please refer to best practices for more details: https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-maintenance-notifications</td>
</tr>
<tr>
    <td><a href="#reimage"><CopyableCode code="reimage" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Reimages (upgrade the operating system) one or more virtual machines in a VM scale set which don't have a ephemeral OS disk, for virtual machines who have a ephemeral OS disk the virtual machine is reset to initial state.</td>
</tr>
<tr>
    <td><a href="#reimage_all"><CopyableCode code="reimage_all" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Reimages all the disks ( including data disks ) in the virtual machines in a VM scale set. This operation is only supported for managed disks.</td>
</tr>
<tr>
    <td><a href="#approve_rolling_upgrade"><CopyableCode code="approve_rolling_upgrade" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Approve upgrade on deferred rolling upgrades for OS disks in the virtual machines in a VM scale set.</td>
</tr>
<tr>
    <td><a href="#force_recovery_service_fabric_platform_update_domain_walk"><CopyableCode code="force_recovery_service_fabric_platform_update_domain_walk" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-platformUpdateDomain"><code>platformUpdateDomain</code></a></td>
    <td><a href="#parameter-zone"><code>zone</code></a>, <a href="#parameter-placementGroupId"><code>placementGroupId</code></a></td>
    <td>Manual platform update domain walk to update virtual machines in a service fabric virtual machine scale set.</td>
</tr>
<tr>
    <td><a href="#convert_to_single_placement_group"><CopyableCode code="convert_to_single_placement_group" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Converts SinglePlacementGroup property to false for a existing virtual machine scale set.</td>
</tr>
<tr>
    <td><a href="#set_orchestration_service_state"><CopyableCode code="set_orchestration_service_state" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmScaleSetName"><code>vmScaleSetName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-action"><code>action</code></a></td>
    <td></td>
    <td>Changes ServiceState property for a given service</td>
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
    <td>The location for which VM scale sets under the subscription are queried.</td>
</tr>
<tr id="parameter-platformUpdateDomain">
    <td><CopyableCode code="platformUpdateDomain" /></td>
    <td><code>integer</code></td>
    <td>The platform update domain for which a manual recovery walk is requested</td>
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
<tr id="parameter-vmScaleSetName">
    <td><CopyableCode code="vmScaleSetName" /></td>
    <td><code>string</code></td>
    <td>The name of the virtual machine scale set to create or update.</td>
</tr>
<tr id="parameter-$expand">
    <td><CopyableCode code="$expand" /></td>
    <td><code>string</code></td>
    <td>The expand expression to apply on the operation. 'UserData' retrieves the UserData property of the VM scale set that was provided by the user during the VM scale set Create/Update operation</td>
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
    <td>Optional parameter to force delete virtual machines from the VM scale set. (Feature in Preview)</td>
</tr>
<tr id="parameter-hibernate">
    <td><CopyableCode code="hibernate" /></td>
    <td><code>boolean</code></td>
    <td>Optional parameter to hibernate a virtual machine from the VM scale set. (This feature is available for VMSS with Flexible OrchestrationMode only)</td>
</tr>
<tr id="parameter-placementGroupId">
    <td><CopyableCode code="placementGroupId" /></td>
    <td><code>string</code></td>
    <td>The placement group id for which the manual recovery walk is requested.</td>
</tr>
<tr id="parameter-skipShutdown">
    <td><CopyableCode code="skipShutdown" /></td>
    <td><code>boolean</code></td>
    <td>The parameter to request non-graceful VM shutdown. True value for this flag indicates non-graceful shutdown whereas false indicates otherwise. Default value for this flag is false if not specified</td>
</tr>
<tr id="parameter-zone">
    <td><CopyableCode code="zone" /></td>
    <td><code>string</code></td>
    <td>The zone in which the manual recovery walk is requested for cross zone virtual machine scale set</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'get_instance_view', value: 'get_instance_view' },
        { label: 'list_by_location', value: 'list_by_location' },
        { label: 'list', value: 'list' },
        { label: 'list_all', value: 'list_all' }
    ]}
>
<TabItem value="get">

Display information about a virtual machine scale set.

```sql
SELECT
id,
name,
etag,
extendedLocation,
identity,
location,
plan,
properties,
sku,
tags,
type,
zones
FROM azure.compute.virtual_machine_scale_sets
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND vmScaleSetName = '{{ vmScaleSetName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $expand = '{{ $expand }}'
;
```
</TabItem>
<TabItem value="get_instance_view">

Gets the status of a VM scale set instance.

```sql
SELECT
extensions,
orchestrationServices,
statuses,
virtualMachine
FROM azure.compute.virtual_machine_scale_sets
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND vmScaleSetName = '{{ vmScaleSetName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_location">

Gets all the VM scale sets under the specified subscription for the specified location.

```sql
SELECT
id,
name,
etag,
extendedLocation,
identity,
location,
plan,
properties,
sku,
tags,
type,
zones
FROM azure.compute.virtual_machine_scale_sets
WHERE location = '{{ location }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets a list of all VM scale sets under a resource group.

```sql
SELECT
id,
name,
etag,
extendedLocation,
identity,
location,
plan,
properties,
sku,
tags,
type,
zones
FROM azure.compute.virtual_machine_scale_sets
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_all">

Gets a list of all VM Scale Sets in the subscription, regardless of the associated resource group. Use nextLink property in the response to get the next page of VM Scale Sets. Do this till nextLink is null to fetch all the VM Scale Sets.

```sql
SELECT
id,
name,
etag,
extendedLocation,
identity,
location,
plan,
properties,
sku,
tags,
type,
zones
FROM azure.compute.virtual_machine_scale_sets
WHERE subscriptionId = '{{ subscriptionId }}' -- required
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

Create or update a VM scale set.

```sql
INSERT INTO azure.compute.virtual_machine_scale_sets (
data__sku,
data__plan,
data__properties,
data__identity,
data__zones,
data__extendedLocation,
data__location,
data__tags,
resourceGroupName,
vmScaleSetName,
subscriptionId,
If-Match,
If-None-Match
)
SELECT 
'{{ sku }}',
'{{ plan }}',
'{{ properties }}',
'{{ identity }}',
'{{ zones }}',
'{{ extendedLocation }}',
'{{ location }}',
'{{ tags }}',
'{{ resourceGroupName }}',
'{{ vmScaleSetName }}',
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
plan,
properties,
sku,
tags,
type,
zones
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: virtual_machine_scale_sets
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the virtual_machine_scale_sets resource.
    - name: vmScaleSetName
      value: string
      description: Required parameter for the virtual_machine_scale_sets resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the virtual_machine_scale_sets resource.
    - name: sku
      value: object
      description: |
        The virtual machine scale set sku.
    - name: plan
      value: object
      description: |
        Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use.  In the Azure portal, find the marketplace image that you want to use and then click **Want to deploy programmatically, Get Started ->**. Enter any required information and then click **Save**.
    - name: properties
      value: object
      description: |
        Describes the properties of a Virtual Machine Scale Set.
    - name: identity
      value: object
      description: |
        The identity of the virtual machine scale set, if configured.
    - name: zones
      value: array
      description: |
        The virtual machine scale set zones.
    - name: extendedLocation
      value: object
      description: |
        The extended location of the Virtual Machine Scale Set.
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

Update a VM scale set.

```sql
UPDATE azure.compute.virtual_machine_scale_sets
SET 
data__sku = '{{ sku }}',
data__plan = '{{ plan }}',
data__properties = '{{ properties }}',
data__identity = '{{ identity }}',
data__zones = '{{ zones }}',
data__tags = '{{ tags }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND vmScaleSetName = '{{ vmScaleSetName }}' --required
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
plan,
properties,
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

Deletes a VM scale set.

```sql
DELETE FROM azure.compute.virtual_machine_scale_sets
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND vmScaleSetName = '{{ vmScaleSetName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND forceDeletion = '{{ forceDeletion }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="deallocate"
    values={[
        { label: 'deallocate', value: 'deallocate' },
        { label: 'delete_instances', value: 'delete_instances' },
        { label: 'power_off', value: 'power_off' },
        { label: 'restart', value: 'restart' },
        { label: 'start', value: 'start' },
        { label: 'reapply', value: 'reapply' },
        { label: 'redeploy', value: 'redeploy' },
        { label: 'perform_maintenance', value: 'perform_maintenance' },
        { label: 'reimage', value: 'reimage' },
        { label: 'reimage_all', value: 'reimage_all' },
        { label: 'approve_rolling_upgrade', value: 'approve_rolling_upgrade' },
        { label: 'force_recovery_service_fabric_platform_update_domain_walk', value: 'force_recovery_service_fabric_platform_update_domain_walk' },
        { label: 'convert_to_single_placement_group', value: 'convert_to_single_placement_group' },
        { label: 'set_orchestration_service_state', value: 'set_orchestration_service_state' }
    ]}
>
<TabItem value="deallocate">

Deallocates specific virtual machines in a VM scale set. Shuts down the virtual machines and releases the compute resources. You are not billed for the compute resources that this virtual machine scale set deallocates.

```sql
EXEC azure.compute.virtual_machine_scale_sets.deallocate 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmScaleSetName='{{ vmScaleSetName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@hibernate={{ hibernate }} 
@@json=
'{
"instanceIds": "{{ instanceIds }}"
}'
;
```
</TabItem>
<TabItem value="delete_instances">

Deletes virtual machines in a VM scale set.

```sql
EXEC azure.compute.virtual_machine_scale_sets.delete_instances 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmScaleSetName='{{ vmScaleSetName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@forceDeletion={{ forceDeletion }} 
@@json=
'{
"instanceIds": "{{ instanceIds }}"
}'
;
```
</TabItem>
<TabItem value="power_off">

Power off (stop) one or more virtual machines in a VM scale set. Note that resources are still attached and you are getting charged for the resources. Instead, use deallocate to release resources and avoid charges.

```sql
EXEC azure.compute.virtual_machine_scale_sets.power_off 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmScaleSetName='{{ vmScaleSetName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@skipShutdown={{ skipShutdown }} 
@@json=
'{
"instanceIds": "{{ instanceIds }}"
}'
;
```
</TabItem>
<TabItem value="restart">

Restarts one or more virtual machines in a VM scale set.

```sql
EXEC azure.compute.virtual_machine_scale_sets.restart 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmScaleSetName='{{ vmScaleSetName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"instanceIds": "{{ instanceIds }}"
}'
;
```
</TabItem>
<TabItem value="start">

Starts one or more virtual machines in a VM scale set.

```sql
EXEC azure.compute.virtual_machine_scale_sets.start 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmScaleSetName='{{ vmScaleSetName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"instanceIds": "{{ instanceIds }}"
}'
;
```
</TabItem>
<TabItem value="reapply">

Reapplies the Virtual Machine Scale Set Virtual Machine Profile to the Virtual Machine Instances

```sql
EXEC azure.compute.virtual_machine_scale_sets.reapply 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmScaleSetName='{{ vmScaleSetName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="redeploy">

Shuts down all the virtual machines in the virtual machine scale set, moves them to a new node, and powers them back on.

```sql
EXEC azure.compute.virtual_machine_scale_sets.redeploy 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmScaleSetName='{{ vmScaleSetName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"instanceIds": "{{ instanceIds }}"
}'
;
```
</TabItem>
<TabItem value="perform_maintenance">

Perform maintenance on one or more virtual machines in a VM scale set. Operation on instances which are not eligible for perform maintenance will be failed. Please refer to best practices for more details: https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-maintenance-notifications

```sql
EXEC azure.compute.virtual_machine_scale_sets.perform_maintenance 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmScaleSetName='{{ vmScaleSetName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"instanceIds": "{{ instanceIds }}"
}'
;
```
</TabItem>
<TabItem value="reimage">

Reimages (upgrade the operating system) one or more virtual machines in a VM scale set which don't have a ephemeral OS disk, for virtual machines who have a ephemeral OS disk the virtual machine is reset to initial state.

```sql
EXEC azure.compute.virtual_machine_scale_sets.reimage 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmScaleSetName='{{ vmScaleSetName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"instanceIds": "{{ instanceIds }}", 
"forceUpdateOSDiskForEphemeral": {{ forceUpdateOSDiskForEphemeral }}
}'
;
```
</TabItem>
<TabItem value="reimage_all">

Reimages all the disks ( including data disks ) in the virtual machines in a VM scale set. This operation is only supported for managed disks.

```sql
EXEC azure.compute.virtual_machine_scale_sets.reimage_all 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmScaleSetName='{{ vmScaleSetName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"instanceIds": "{{ instanceIds }}"
}'
;
```
</TabItem>
<TabItem value="approve_rolling_upgrade">

Approve upgrade on deferred rolling upgrades for OS disks in the virtual machines in a VM scale set.

```sql
EXEC azure.compute.virtual_machine_scale_sets.approve_rolling_upgrade 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmScaleSetName='{{ vmScaleSetName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"instanceIds": "{{ instanceIds }}"
}'
;
```
</TabItem>
<TabItem value="force_recovery_service_fabric_platform_update_domain_walk">

Manual platform update domain walk to update virtual machines in a service fabric virtual machine scale set.

```sql
EXEC azure.compute.virtual_machine_scale_sets.force_recovery_service_fabric_platform_update_domain_walk 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmScaleSetName='{{ vmScaleSetName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@platformUpdateDomain='{{ platformUpdateDomain }}' --required, 
@zone='{{ zone }}', 
@placementGroupId='{{ placementGroupId }}'
;
```
</TabItem>
<TabItem value="convert_to_single_placement_group">

Converts SinglePlacementGroup property to false for a existing virtual machine scale set.

```sql
EXEC azure.compute.virtual_machine_scale_sets.convert_to_single_placement_group 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmScaleSetName='{{ vmScaleSetName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"activePlacementGroupId": "{{ activePlacementGroupId }}"
}'
;
```
</TabItem>
<TabItem value="set_orchestration_service_state">

Changes ServiceState property for a given service

```sql
EXEC azure.compute.virtual_machine_scale_sets.set_orchestration_service_state 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vmScaleSetName='{{ vmScaleSetName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"serviceName": "{{ serviceName }}", 
"action": "{{ action }}"
}'
;
```
</TabItem>
</Tabs>
