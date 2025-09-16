--- 
title: cloud_service_role_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - cloud_service_role_instances
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

Creates, updates, deletes, gets or lists a <code>cloud_service_role_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>cloud_service_role_instances</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.cloud_service_role_instances" /></td></tr>
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
    <td>Resource Name.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource Location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Role instance properties.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The role instance SKU.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource Type.</td>
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
    <td><CopyableCode code="platformFaultDomain" /></td>
    <td><code>integer (int32)</code></td>
    <td>The Fault Domain.</td>
</tr>
<tr>
    <td><CopyableCode code="platformUpdateDomain" /></td>
    <td><code>integer (int32)</code></td>
    <td>The Update Domain.</td>
</tr>
<tr>
    <td><CopyableCode code="privateId" /></td>
    <td><code>string</code></td>
    <td>Specifies a unique identifier generated internally for the cloud service associated with this role instance. <br /><br /> NOTE: If you are using Azure Diagnostics extension, this property can be used as 'DeploymentId' for querying details.</td>
</tr>
<tr>
    <td><CopyableCode code="statuses" /></td>
    <td><code>array</code></td>
    <td></td>
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
    <td>Resource Name.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource Location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Role instance properties.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The role instance SKU.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource Type.</td>
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
    <td><a href="#parameter-roleInstanceName"><code>roleInstanceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudServiceName"><code>cloudServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>Gets a role instance from a cloud service.</td>
</tr>
<tr>
    <td><a href="#get_instance_view"><CopyableCode code="get_instance_view" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-roleInstanceName"><code>roleInstanceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudServiceName"><code>cloudServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Retrieves information about the run-time state of a role instance in a cloud service.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudServiceName"><code>cloudServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>Gets the list of all role instances in a cloud service. Use nextLink property in the response to get the next page of role instances. Do this till nextLink is null to fetch all the role instances.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-roleInstanceName"><code>roleInstanceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudServiceName"><code>cloudServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes a role instance from a cloud service.</td>
</tr>
<tr>
    <td><a href="#restart"><CopyableCode code="restart" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-roleInstanceName"><code>roleInstanceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudServiceName"><code>cloudServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>The Reboot Role Instance asynchronous operation requests a reboot of a role instance in the cloud service.</td>
</tr>
<tr>
    <td><a href="#reimage"><CopyableCode code="reimage" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-roleInstanceName"><code>roleInstanceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudServiceName"><code>cloudServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>The Reimage Role Instance asynchronous operation reinstalls the operating system on instances of web roles or worker roles.</td>
</tr>
<tr>
    <td><a href="#rebuild"><CopyableCode code="rebuild" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-roleInstanceName"><code>roleInstanceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudServiceName"><code>cloudServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>The Rebuild Role Instance asynchronous operation reinstalls the operating system on instances of web roles or worker roles and initializes the storage resources that are used by them. If you do not want to initialize storage resources, you can use Reimage Role Instance.</td>
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
<tr id="parameter-cloudServiceName">
    <td><CopyableCode code="cloudServiceName" /></td>
    <td><code>string</code></td>
    <td>Name of the cloud service.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group.</td>
</tr>
<tr id="parameter-roleInstanceName">
    <td><CopyableCode code="roleInstanceName" /></td>
    <td><code>string</code></td>
    <td>Name of the role instance.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
<tr id="parameter-$expand">
    <td><CopyableCode code="$expand" /></td>
    <td><code>string</code></td>
    <td>The expand expression to apply to the operation. 'UserData' is not supported for cloud services.</td>
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

Gets a role instance from a cloud service.

```sql
SELECT
id,
name,
location,
properties,
sku,
tags,
type
FROM azure.compute.cloud_service_role_instances
WHERE roleInstanceName = '{{ roleInstanceName }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND cloudServiceName = '{{ cloudServiceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $expand = '{{ $expand }}'
;
```
</TabItem>
<TabItem value="get_instance_view">

Retrieves information about the run-time state of a role instance in a cloud service.

```sql
SELECT
platformFaultDomain,
platformUpdateDomain,
privateId,
statuses
FROM azure.compute.cloud_service_role_instances
WHERE roleInstanceName = '{{ roleInstanceName }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND cloudServiceName = '{{ cloudServiceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets the list of all role instances in a cloud service. Use nextLink property in the response to get the next page of role instances. Do this till nextLink is null to fetch all the role instances.

```sql
SELECT
id,
name,
location,
properties,
sku,
tags,
type
FROM azure.compute.cloud_service_role_instances
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND cloudServiceName = '{{ cloudServiceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $expand = '{{ $expand }}'
;
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

Deletes a role instance from a cloud service.

```sql
DELETE FROM azure.compute.cloud_service_role_instances
WHERE roleInstanceName = '{{ roleInstanceName }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND cloudServiceName = '{{ cloudServiceName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="restart"
    values={[
        { label: 'restart', value: 'restart' },
        { label: 'reimage', value: 'reimage' },
        { label: 'rebuild', value: 'rebuild' }
    ]}
>
<TabItem value="restart">

The Reboot Role Instance asynchronous operation requests a reboot of a role instance in the cloud service.

```sql
EXEC azure.compute.cloud_service_role_instances.restart 
@roleInstanceName='{{ roleInstanceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@cloudServiceName='{{ cloudServiceName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="reimage">

The Reimage Role Instance asynchronous operation reinstalls the operating system on instances of web roles or worker roles.

```sql
EXEC azure.compute.cloud_service_role_instances.reimage 
@roleInstanceName='{{ roleInstanceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@cloudServiceName='{{ cloudServiceName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="rebuild">

The Rebuild Role Instance asynchronous operation reinstalls the operating system on instances of web roles or worker roles and initializes the storage resources that are used by them. If you do not want to initialize storage resources, you can use Reimage Role Instance.

```sql
EXEC azure.compute.cloud_service_role_instances.rebuild 
@roleInstanceName='{{ roleInstanceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@cloudServiceName='{{ cloudServiceName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
