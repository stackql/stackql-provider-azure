--- 
title: virtual_machines
hide_title: false
hide_table_of_contents: false
keywords:
  - virtual_machines
  - dev_test_labs
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_test_labs.virtual_machines" /></td></tr>
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
    <td>The identifier of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The location of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>The tags of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource.</td>
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
    <td>The identifier of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The location of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>The tags of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-labName"><code>labName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a>, <a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Get virtual machine.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-labName"><code>labName</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a>, <a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$top"><code>$top</code></a>, <a href="#parameter-$orderby"><code>$orderby</code></a>, <a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>List virtual machines in a given lab.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-labName"><code>labName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Create or replace an existing virtual machine. This operation can take a while to complete.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-labName"><code>labName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Allows modifying tags of virtual machines. All other properties will be ignored.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-labName"><code>labName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Delete virtual machine. This operation can take a while to complete.</td>
</tr>
<tr>
    <td><a href="#add_data_disk"><CopyableCode code="add_data_disk" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-labName"><code>labName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Attach a new or existing data disk to virtual machine. This operation can take a while to complete.</td>
</tr>
<tr>
    <td><a href="#apply_artifacts"><CopyableCode code="apply_artifacts" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-labName"><code>labName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Apply artifacts to virtual machine. This operation can take a while to complete.</td>
</tr>
<tr>
    <td><a href="#claim"><CopyableCode code="claim" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-labName"><code>labName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Take ownership of an existing virtual machine This operation can take a while to complete.</td>
</tr>
<tr>
    <td><a href="#detach_data_disk"><CopyableCode code="detach_data_disk" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-labName"><code>labName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Detach the specified disk from the virtual machine. This operation can take a while to complete.</td>
</tr>
<tr>
    <td><a href="#redeploy"><CopyableCode code="redeploy" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-labName"><code>labName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Redeploy a virtual machine This operation can take a while to complete.</td>
</tr>
<tr>
    <td><a href="#resize"><CopyableCode code="resize" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-labName"><code>labName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Resize Virtual Machine. This operation can take a while to complete.</td>
</tr>
<tr>
    <td><a href="#restart"><CopyableCode code="restart" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-labName"><code>labName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Restart a virtual machine. This operation can take a while to complete.</td>
</tr>
<tr>
    <td><a href="#start"><CopyableCode code="start" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-labName"><code>labName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Start a virtual machine. This operation can take a while to complete.</td>
</tr>
<tr>
    <td><a href="#stop"><CopyableCode code="stop" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-labName"><code>labName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Stop a virtual machine This operation can take a while to complete.</td>
</tr>
<tr>
    <td><a href="#transfer_disks"><CopyableCode code="transfer_disks" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-labName"><code>labName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Transfers all data disks attached to the virtual machine to be owned by the current user. This operation can take a while to complete.</td>
</tr>
<tr>
    <td><a href="#un_claim"><CopyableCode code="un_claim" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-labName"><code>labName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Release ownership of an existing virtual machine This operation can take a while to complete.</td>
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
<tr id="parameter-labName">
    <td><CopyableCode code="labName" /></td>
    <td><code>string</code></td>
    <td>The name of the lab.</td>
</tr>
<tr id="parameter-name">
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the virtual machine.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription ID.</td>
</tr>
<tr id="parameter-$expand">
    <td><CopyableCode code="$expand" /></td>
    <td><code>string</code></td>
    <td>Specify the $expand query. Example: 'properties($expand=artifacts,computeVm,networkInterface,applicableSchedule)'</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The filter to apply to the operation. Example: '$filter=contains(name,'myName')</td>
</tr>
<tr id="parameter-$orderby">
    <td><CopyableCode code="$orderby" /></td>
    <td><code>string</code></td>
    <td>The ordering expression for the results, using OData notation. Example: '$orderby=name desc'</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int32)</code></td>
    <td>The maximum number of resources to return from the operation. Example: '$top=10'</td>
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

Get virtual machine.

```sql
SELECT
id,
name,
location,
properties,
tags,
type
FROM azure.dev_test_labs.virtual_machines
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND labName = '{{ labName }}' -- required
AND name = '{{ name }}' -- required
AND $expand = '{{ $expand }}'
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list">

List virtual machines in a given lab.

```sql
SELECT
id,
name,
location,
properties,
tags,
type
FROM azure.dev_test_labs.virtual_machines
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND labName = '{{ labName }}' -- required
AND $expand = '{{ $expand }}'
AND $filter = '{{ $filter }}'
AND $top = '{{ $top }}'
AND $orderby = '{{ $orderby }}'
AND api-version = '{{ api-version }}'
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

Create or replace an existing virtual machine. This operation can take a while to complete.

```sql
INSERT INTO azure.dev_test_labs.virtual_machines (
data__location,
data__tags,
data__properties,
subscriptionId,
resourceGroupName,
labName,
name,
api-version
)
SELECT 
'{{ location }}',
'{{ tags }}',
'{{ properties }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ labName }}',
'{{ name }}',
'{{ api-version }}'
RETURNING
id,
name,
location,
properties,
tags,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: virtual_machines
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the virtual_machines resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the virtual_machines resource.
    - name: labName
      value: string
      description: Required parameter for the virtual_machines resource.
    - name: name
      value: string
      description: Required parameter for the virtual_machines resource.
    - name: location
      value: string
      description: |
        The location of the resource.
    - name: tags
      value: object
      description: |
        The tags of the resource.
    - name: properties
      value: object
      description: |
        The properties of the resource.
    - name: api-version
      value: string
      description: Client API version.
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

Allows modifying tags of virtual machines. All other properties will be ignored.

```sql
UPDATE azure.dev_test_labs.virtual_machines
SET 
data__tags = '{{ tags }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND labName = '{{ labName }}' --required
AND name = '{{ name }}' --required
AND api-version = '{{ api-version}}'
RETURNING
id,
name,
location,
properties,
tags,
type;
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

Delete virtual machine. This operation can take a while to complete.

```sql
DELETE FROM azure.dev_test_labs.virtual_machines
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND labName = '{{ labName }}' --required
AND name = '{{ name }}' --required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="add_data_disk"
    values={[
        { label: 'add_data_disk', value: 'add_data_disk' },
        { label: 'apply_artifacts', value: 'apply_artifacts' },
        { label: 'claim', value: 'claim' },
        { label: 'detach_data_disk', value: 'detach_data_disk' },
        { label: 'redeploy', value: 'redeploy' },
        { label: 'resize', value: 'resize' },
        { label: 'restart', value: 'restart' },
        { label: 'start', value: 'start' },
        { label: 'stop', value: 'stop' },
        { label: 'transfer_disks', value: 'transfer_disks' },
        { label: 'un_claim', value: 'un_claim' }
    ]}
>
<TabItem value="add_data_disk">

Attach a new or existing data disk to virtual machine. This operation can take a while to complete.

```sql
EXEC azure.dev_test_labs.virtual_machines.add_data_disk 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@labName='{{ labName }}' --required, 
@name='{{ name }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"attachNewDataDiskOptions": "{{ attachNewDataDiskOptions }}", 
"existingLabDiskId": "{{ existingLabDiskId }}", 
"hostCaching": "{{ hostCaching }}"
}'
;
```
</TabItem>
<TabItem value="apply_artifacts">

Apply artifacts to virtual machine. This operation can take a while to complete.

```sql
EXEC azure.dev_test_labs.virtual_machines.apply_artifacts 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@labName='{{ labName }}' --required, 
@name='{{ name }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"artifacts": "{{ artifacts }}"
}'
;
```
</TabItem>
<TabItem value="claim">

Take ownership of an existing virtual machine This operation can take a while to complete.

```sql
EXEC azure.dev_test_labs.virtual_machines.claim 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@labName='{{ labName }}' --required, 
@name='{{ name }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="detach_data_disk">

Detach the specified disk from the virtual machine. This operation can take a while to complete.

```sql
EXEC azure.dev_test_labs.virtual_machines.detach_data_disk 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@labName='{{ labName }}' --required, 
@name='{{ name }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"existingLabDiskId": "{{ existingLabDiskId }}"
}'
;
```
</TabItem>
<TabItem value="redeploy">

Redeploy a virtual machine This operation can take a while to complete.

```sql
EXEC azure.dev_test_labs.virtual_machines.redeploy 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@labName='{{ labName }}' --required, 
@name='{{ name }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="resize">

Resize Virtual Machine. This operation can take a while to complete.

```sql
EXEC azure.dev_test_labs.virtual_machines.resize 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@labName='{{ labName }}' --required, 
@name='{{ name }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"size": "{{ size }}"
}'
;
```
</TabItem>
<TabItem value="restart">

Restart a virtual machine. This operation can take a while to complete.

```sql
EXEC azure.dev_test_labs.virtual_machines.restart 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@labName='{{ labName }}' --required, 
@name='{{ name }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="start">

Start a virtual machine. This operation can take a while to complete.

```sql
EXEC azure.dev_test_labs.virtual_machines.start 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@labName='{{ labName }}' --required, 
@name='{{ name }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="stop">

Stop a virtual machine This operation can take a while to complete.

```sql
EXEC azure.dev_test_labs.virtual_machines.stop 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@labName='{{ labName }}' --required, 
@name='{{ name }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="transfer_disks">

Transfers all data disks attached to the virtual machine to be owned by the current user. This operation can take a while to complete.

```sql
EXEC azure.dev_test_labs.virtual_machines.transfer_disks 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@labName='{{ labName }}' --required, 
@name='{{ name }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="un_claim">

Release ownership of an existing virtual machine This operation can take a while to complete.

```sql
EXEC azure.dev_test_labs.virtual_machines.un_claim 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@labName='{{ labName }}' --required, 
@name='{{ name }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
</Tabs>
