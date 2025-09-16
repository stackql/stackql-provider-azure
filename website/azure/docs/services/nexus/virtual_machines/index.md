--- 
title: virtual_machines
hide_title: false
hide_table_of_contents: false
keywords:
  - virtual_machines
  - nexus
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.nexus.virtual_machines" /></td></tr>
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

The resource has been successfully retrieved.

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
    <td><CopyableCode code="extendedLocation" /></td>
    <td><code>object</code></td>
    <td>The extended location of the cluster associated with the resource. (title: ExtendedLocation represents the Azure custom location where the resource will be created.)</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The list of the resource properties. (title: VirtualMachineProperties represents the properties of the virtual machine.)</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group">

The resource list has been successfully retrieved.

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
    <td><CopyableCode code="extendedLocation" /></td>
    <td><code>object</code></td>
    <td>The extended location of the cluster associated with the resource. (title: ExtendedLocation represents the Azure custom location where the resource will be created.)</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The list of the resource properties. (title: VirtualMachineProperties represents the properties of the virtual machine.)</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_subscription">

The resource list has been successfully retrieved.

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
    <td><CopyableCode code="extendedLocation" /></td>
    <td><code>object</code></td>
    <td>The extended location of the cluster associated with the resource. (title: ExtendedLocation represents the Azure custom location where the resource will be created.)</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The list of the resource properties. (title: VirtualMachineProperties represents the properties of the virtual machine.)</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualMachineName"><code>virtualMachineName</code></a></td>
    <td></td>
    <td>Get properties of the provided virtual machine.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td>Get a list of virtual machines in the provided resource group.</td>
</tr>
<tr>
    <td><a href="#list_by_subscription"><CopyableCode code="list_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Get a list of virtual machines in the provided subscription.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualMachineName"><code>virtualMachineName</code></a>, <a href="#parameter-data__extendedLocation"><code>data__extendedLocation</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Create a new virtual machine or update the properties of the existing virtual machine.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualMachineName"><code>virtualMachineName</code></a></td>
    <td></td>
    <td>Patch the properties of the provided virtual machine, or update the tags associated with the virtual machine. Properties and tag updates can be done independently.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualMachineName"><code>virtualMachineName</code></a></td>
    <td></td>
    <td>Delete the provided virtual machine.</td>
</tr>
<tr>
    <td><a href="#power_off"><CopyableCode code="power_off" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualMachineName"><code>virtualMachineName</code></a></td>
    <td></td>
    <td>Power off the provided virtual machine.</td>
</tr>
<tr>
    <td><a href="#reimage"><CopyableCode code="reimage" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualMachineName"><code>virtualMachineName</code></a></td>
    <td></td>
    <td>Reimage the provided virtual machine.</td>
</tr>
<tr>
    <td><a href="#restart"><CopyableCode code="restart" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualMachineName"><code>virtualMachineName</code></a></td>
    <td></td>
    <td>Restart the provided virtual machine.</td>
</tr>
<tr>
    <td><a href="#start"><CopyableCode code="start" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualMachineName"><code>virtualMachineName</code></a></td>
    <td></td>
    <td>Start the provided virtual machine.</td>
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
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-virtualMachineName">
    <td><CopyableCode code="virtualMachineName" /></td>
    <td><code>string</code></td>
    <td>The name of the virtual machine.</td>
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

Get properties of the provided virtual machine.

```sql
SELECT
extendedLocation,
location,
properties,
tags
FROM azure.nexus.virtual_machines
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND virtualMachineName = '{{ virtualMachineName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_resource_group">

Get a list of virtual machines in the provided resource group.

```sql
SELECT
extendedLocation,
location,
properties,
tags
FROM azure.nexus.virtual_machines
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_subscription">

Get a list of virtual machines in the provided subscription.

```sql
SELECT
extendedLocation,
location,
properties,
tags
FROM azure.nexus.virtual_machines
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

Create a new virtual machine or update the properties of the existing virtual machine.

```sql
INSERT INTO azure.nexus.virtual_machines (
data__extendedLocation,
data__properties,
data__tags,
data__location,
subscriptionId,
resourceGroupName,
virtualMachineName
)
SELECT 
'{{ extendedLocation }}' /* required */,
'{{ properties }}' /* required */,
'{{ tags }}',
'{{ location }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ virtualMachineName }}'
RETURNING
extendedLocation,
location,
properties,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: virtual_machines
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the virtual_machines resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the virtual_machines resource.
    - name: virtualMachineName
      value: string
      description: Required parameter for the virtual_machines resource.
    - name: extendedLocation
      value: object
      description: |
        The extended location of the cluster associated with the resource.
    - name: properties
      value: object
      description: |
        The list of the resource properties.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        The geo-location where the resource lives
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

Patch the properties of the provided virtual machine, or update the tags associated with the virtual machine. Properties and tag updates can be done independently.

```sql
UPDATE azure.nexus.virtual_machines
SET 
data__properties = '{{ properties }}',
data__tags = '{{ tags }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND virtualMachineName = '{{ virtualMachineName }}' --required
RETURNING
extendedLocation,
location,
properties,
tags;
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

Delete the provided virtual machine.

```sql
DELETE FROM azure.nexus.virtual_machines
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND virtualMachineName = '{{ virtualMachineName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="power_off"
    values={[
        { label: 'power_off', value: 'power_off' },
        { label: 'reimage', value: 'reimage' },
        { label: 'restart', value: 'restart' },
        { label: 'start', value: 'start' }
    ]}
>
<TabItem value="power_off">

Power off the provided virtual machine.

```sql
EXEC azure.nexus.virtual_machines.power_off 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@virtualMachineName='{{ virtualMachineName }}' --required 
@@json=
'{
"skipShutdown": "{{ skipShutdown }}"
}'
;
```
</TabItem>
<TabItem value="reimage">

Reimage the provided virtual machine.

```sql
EXEC azure.nexus.virtual_machines.reimage 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@virtualMachineName='{{ virtualMachineName }}' --required
;
```
</TabItem>
<TabItem value="restart">

Restart the provided virtual machine.

```sql
EXEC azure.nexus.virtual_machines.restart 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@virtualMachineName='{{ virtualMachineName }}' --required
;
```
</TabItem>
<TabItem value="start">

Start the provided virtual machine.

```sql
EXEC azure.nexus.virtual_machines.start 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@virtualMachineName='{{ virtualMachineName }}' --required
;
```
</TabItem>
</Tabs>
