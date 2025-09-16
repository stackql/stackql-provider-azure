--- 
title: consoles
hide_title: false
hide_table_of_contents: false
keywords:
  - consoles
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

Creates, updates, deletes, gets or lists a <code>consoles</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>consoles</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.nexus.consoles" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_virtual_machine', value: 'list_by_virtual_machine' }
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
    <td>The extended location of the cluster manager associated with the cluster this virtual machine is created on. (title: ExtendedLocation represents the Azure custom location where the resource will be created.)</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The list of the resource properties. (title: ConsoleProperties represents the properties of the virtual machine console.)</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_virtual_machine">

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
    <td>The extended location of the cluster manager associated with the cluster this virtual machine is created on. (title: ExtendedLocation represents the Azure custom location where the resource will be created.)</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The list of the resource properties. (title: ConsoleProperties represents the properties of the virtual machine console.)</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualMachineName"><code>virtualMachineName</code></a>, <a href="#parameter-consoleName"><code>consoleName</code></a></td>
    <td></td>
    <td>Get properties of the provided virtual machine console.</td>
</tr>
<tr>
    <td><a href="#list_by_virtual_machine"><CopyableCode code="list_by_virtual_machine" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualMachineName"><code>virtualMachineName</code></a></td>
    <td></td>
    <td>Get a list of consoles for the provided virtual machine.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualMachineName"><code>virtualMachineName</code></a>, <a href="#parameter-consoleName"><code>consoleName</code></a>, <a href="#parameter-data__extendedLocation"><code>data__extendedLocation</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Create a new virtual machine console or update the properties of the existing virtual machine console.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualMachineName"><code>virtualMachineName</code></a>, <a href="#parameter-consoleName"><code>consoleName</code></a></td>
    <td></td>
    <td>Patch the properties of the provided virtual machine console, or update the tags associated with the virtual machine console. Properties and tag updates can be done independently.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualMachineName"><code>virtualMachineName</code></a>, <a href="#parameter-consoleName"><code>consoleName</code></a></td>
    <td></td>
    <td>Delete the provided virtual machine console.</td>
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
<tr id="parameter-consoleName">
    <td><CopyableCode code="consoleName" /></td>
    <td><code>string</code></td>
    <td>The name of the virtual machine console.</td>
</tr>
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
        { label: 'list_by_virtual_machine', value: 'list_by_virtual_machine' }
    ]}
>
<TabItem value="get">

Get properties of the provided virtual machine console.

```sql
SELECT
extendedLocation,
location,
properties,
tags
FROM azure.nexus.consoles
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND virtualMachineName = '{{ virtualMachineName }}' -- required
AND consoleName = '{{ consoleName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_virtual_machine">

Get a list of consoles for the provided virtual machine.

```sql
SELECT
extendedLocation,
location,
properties,
tags
FROM azure.nexus.consoles
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND virtualMachineName = '{{ virtualMachineName }}' -- required
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

Create a new virtual machine console or update the properties of the existing virtual machine console.

```sql
INSERT INTO azure.nexus.consoles (
data__extendedLocation,
data__properties,
data__tags,
data__location,
subscriptionId,
resourceGroupName,
virtualMachineName,
consoleName
)
SELECT 
'{{ extendedLocation }}' /* required */,
'{{ properties }}' /* required */,
'{{ tags }}',
'{{ location }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ virtualMachineName }}',
'{{ consoleName }}'
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
- name: consoles
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the consoles resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the consoles resource.
    - name: virtualMachineName
      value: string
      description: Required parameter for the consoles resource.
    - name: consoleName
      value: string
      description: Required parameter for the consoles resource.
    - name: extendedLocation
      value: object
      description: |
        The extended location of the cluster manager associated with the cluster this virtual machine is created on.
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

Patch the properties of the provided virtual machine console, or update the tags associated with the virtual machine console. Properties and tag updates can be done independently.

```sql
UPDATE azure.nexus.consoles
SET 
data__properties = '{{ properties }}',
data__tags = '{{ tags }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND virtualMachineName = '{{ virtualMachineName }}' --required
AND consoleName = '{{ consoleName }}' --required
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

Delete the provided virtual machine console.

```sql
DELETE FROM azure.nexus.consoles
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND virtualMachineName = '{{ virtualMachineName }}' --required
AND consoleName = '{{ consoleName }}' --required
;
```
</TabItem>
</Tabs>
