--- 
title: inventory_items
hide_title: false
hide_table_of_contents: false
keywords:
  - inventory_items
  - system_center_vm_manager
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

Creates, updates, deletes, gets or lists an <code>inventory_items</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>inventory_items</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.system_center_vm_manager.inventory_items" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_vmm_server', value: 'list_by_vmm_server' }
    ]}
>
<TabItem value="get">

Azure operation completed successfully.

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
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The resource-specific properties for this resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_vmm_server">

Azure operation completed successfully.

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
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The resource-specific properties for this resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmmServerName"><code>vmmServerName</code></a>, <a href="#parameter-inventoryItemResourceName"><code>inventoryItemResourceName</code></a></td>
    <td></td>
    <td>Shows an inventory item.</td>
</tr>
<tr>
    <td><a href="#list_by_vmm_server"><CopyableCode code="list_by_vmm_server" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmmServerName"><code>vmmServerName</code></a></td>
    <td></td>
    <td>Returns the list of inventoryItems in the given VmmServer.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmmServerName"><code>vmmServerName</code></a>, <a href="#parameter-inventoryItemResourceName"><code>inventoryItemResourceName</code></a></td>
    <td></td>
    <td>Create Or Update InventoryItem.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmmServerName"><code>vmmServerName</code></a>, <a href="#parameter-inventoryItemResourceName"><code>inventoryItemResourceName</code></a></td>
    <td></td>
    <td>Deletes an inventoryItem.</td>
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
<tr id="parameter-inventoryItemResourceName">
    <td><CopyableCode code="inventoryItemResourceName" /></td>
    <td><code>string</code></td>
    <td>Name of the inventoryItem.</td>
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
<tr id="parameter-vmmServerName">
    <td><CopyableCode code="vmmServerName" /></td>
    <td><code>string</code></td>
    <td>Name of the VmmServer.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_vmm_server', value: 'list_by_vmm_server' }
    ]}
>
<TabItem value="get">

Shows an inventory item.

```sql
SELECT
kind,
properties
FROM azure.system_center_vm_manager.inventory_items
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND vmmServerName = '{{ vmmServerName }}' -- required
AND inventoryItemResourceName = '{{ inventoryItemResourceName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_vmm_server">

Returns the list of inventoryItems in the given VmmServer.

```sql
SELECT
kind,
properties
FROM azure.system_center_vm_manager.inventory_items
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND vmmServerName = '{{ vmmServerName }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

Create Or Update InventoryItem.

```sql
INSERT INTO azure.system_center_vm_manager.inventory_items (
data__properties,
data__kind,
subscriptionId,
resourceGroupName,
vmmServerName,
inventoryItemResourceName
)
SELECT 
'{{ properties }}',
'{{ kind }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ vmmServerName }}',
'{{ inventoryItemResourceName }}'
RETURNING
kind,
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: inventory_items
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the inventory_items resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the inventory_items resource.
    - name: vmmServerName
      value: string
      description: Required parameter for the inventory_items resource.
    - name: inventoryItemResourceName
      value: string
      description: Required parameter for the inventory_items resource.
    - name: properties
      value: object
      description: |
        The resource-specific properties for this resource.
    - name: kind
      value: string
      description: |
        Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
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

Deletes an inventoryItem.

```sql
DELETE FROM azure.system_center_vm_manager.inventory_items
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND vmmServerName = '{{ vmmServerName }}' --required
AND inventoryItemResourceName = '{{ inventoryItemResourceName }}' --required
;
```
</TabItem>
</Tabs>
