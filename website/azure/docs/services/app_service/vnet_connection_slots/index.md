--- 
title: vnet_connection_slots
hide_title: false
hide_table_of_contents: false
keywords:
  - vnet_connection_slots
  - app_service
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

Creates, updates, deletes, gets or lists a <code>vnet_connection_slots</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vnet_connection_slots</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.app_service.vnet_connection_slots" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
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
    <td>Resource Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource Name.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Core resource properties</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-vnetName"><code>vnetName</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Gets a virtual network the app (or deployment slot) is connected to by name.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-vnetName"><code>vnetName</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Adds a Virtual Network connection to an app or slot (PUT) or updates the connection properties (PATCH).</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-vnetName"><code>vnetName</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Adds a Virtual Network connection to an app or slot (PUT) or updates the connection properties (PATCH).</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-vnetName"><code>vnetName</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Deletes a connection from an app (or deployment slot to a named virtual network.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Gets the virtual networks the app (or deployment slot) is connected to.</td>
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
<tr id="parameter-name">
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the app.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group to which the resource belongs.</td>
</tr>
<tr id="parameter-slot">
    <td><CopyableCode code="slot" /></td>
    <td><code>string</code></td>
    <td>Name of the deployment slot. If a slot is not specified, the API will get virtual network connections for the production slot.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000).</td>
</tr>
<tr id="parameter-vnetName">
    <td><CopyableCode code="vnetName" /></td>
    <td><code>string</code></td>
    <td>Name of the virtual network.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Description for Gets a virtual network the app (or deployment slot) is connected to by name.

```sql
SELECT
id,
name,
kind,
properties,
type
FROM azure.app_service.vnet_connection_slots
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND name = '{{ name }}' -- required
AND vnetName = '{{ vnetName }}' -- required
AND slot = '{{ slot }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
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

Description for Adds a Virtual Network connection to an app or slot (PUT) or updates the connection properties (PATCH).

```sql
INSERT INTO azure.app_service.vnet_connection_slots (
data__kind,
data__properties,
resourceGroupName,
name,
vnetName,
slot,
subscriptionId
)
SELECT 
'{{ kind }}',
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ name }}',
'{{ vnetName }}',
'{{ slot }}',
'{{ subscriptionId }}'
RETURNING
id,
name,
kind,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: vnet_connection_slots
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the vnet_connection_slots resource.
    - name: name
      value: string
      description: Required parameter for the vnet_connection_slots resource.
    - name: vnetName
      value: string
      description: Required parameter for the vnet_connection_slots resource.
    - name: slot
      value: string
      description: Required parameter for the vnet_connection_slots resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the vnet_connection_slots resource.
    - name: kind
      value: string
      description: |
        Kind of resource.
    - name: properties
      value: object
      description: |
        Core resource properties
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

Description for Adds a Virtual Network connection to an app or slot (PUT) or updates the connection properties (PATCH).

```sql
UPDATE azure.app_service.vnet_connection_slots
SET 
data__kind = '{{ kind }}',
data__properties = '{{ properties }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND name = '{{ name }}' --required
AND vnetName = '{{ vnetName }}' --required
AND slot = '{{ slot }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
RETURNING
id,
name,
kind,
properties,
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

Description for Deletes a connection from an app (or deployment slot to a named virtual network.

```sql
DELETE FROM azure.app_service.vnet_connection_slots
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND name = '{{ name }}' --required
AND vnetName = '{{ vnetName }}' --required
AND slot = '{{ slot }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

Description for Gets the virtual networks the app (or deployment slot) is connected to.

```sql
EXEC azure.app_service.vnet_connection_slots.list 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@name='{{ name }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
