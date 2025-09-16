--- 
title: inventory_items
hide_title: false
hide_table_of_contents: false
keywords:
  - inventory_items
  - connected_vsphere
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists an <code>inventory_items</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>inventory_items</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.connected_vsphere.inventory_items" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_v_center', value: 'list_by_v_center' }
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
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Resource properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_v_center">

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
    <td>Resource properties.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vcenterName"><code>vcenterName</code></a>, <a href="#parameter-inventoryItemName"><code>inventoryItemName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Implements InventoryItem GET method.</td>
</tr>
<tr>
    <td><a href="#list_by_v_center"><CopyableCode code="list_by_v_center" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vcenterName"><code>vcenterName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Returns the list of inventoryItems of the given vCenter.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vcenterName"><code>vcenterName</code></a>, <a href="#parameter-inventoryItemName"><code>inventoryItemName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Create Or Update InventoryItem.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vcenterName"><code>vcenterName</code></a>, <a href="#parameter-inventoryItemName"><code>inventoryItemName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Implements inventoryItem DELETE method.</td>
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
<tr id="parameter-inventoryItemName">
    <td><CopyableCode code="inventoryItemName" /></td>
    <td><code>string</code></td>
    <td>Name of the inventoryItem.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The Resource Group Name.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The Subscription ID.</td>
</tr>
<tr id="parameter-vcenterName">
    <td><CopyableCode code="vcenterName" /></td>
    <td><code>string</code></td>
    <td>Name of the vCenter.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>Client Api Version.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_v_center', value: 'list_by_v_center' }
    ]}
>
<TabItem value="get">

Implements InventoryItem GET method.

```sql
SELECT
kind,
properties
FROM azure_isv.connected_vsphere.inventory_items
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND vcenterName = '{{ vcenterName }}' -- required
AND inventoryItemName = '{{ inventoryItemName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list_by_v_center">

Returns the list of inventoryItems of the given vCenter.

```sql
SELECT
kind,
properties
FROM azure_isv.connected_vsphere.inventory_items
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND vcenterName = '{{ vcenterName }}' -- required
AND api-version = '{{ api-version }}'
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
INSERT INTO azure_isv.connected_vsphere.inventory_items (
data__properties,
data__kind,
subscriptionId,
resourceGroupName,
vcenterName,
inventoryItemName,
api-version
)
SELECT 
'{{ properties }}' /* required */,
'{{ kind }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ vcenterName }}',
'{{ inventoryItemName }}',
'{{ api-version }}'
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
      value: string
      description: Required parameter for the inventory_items resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the inventory_items resource.
    - name: vcenterName
      value: string
      description: Required parameter for the inventory_items resource.
    - name: inventoryItemName
      value: string
      description: Required parameter for the inventory_items resource.
    - name: properties
      value: object
      description: |
        Resource properties.
    - name: kind
      value: string
      description: |
        Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
    - name: api-version
      value: string
      description: Client Api Version.
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

Implements inventoryItem DELETE method.

```sql
DELETE FROM azure_isv.connected_vsphere.inventory_items
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND vcenterName = '{{ vcenterName }}' --required
AND inventoryItemName = '{{ inventoryItemName }}' --required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>
