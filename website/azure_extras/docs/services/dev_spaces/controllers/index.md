--- 
title: controllers
hide_title: false
hide_table_of_contents: false
keywords:
  - controllers
  - dev_spaces
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>controllers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>controllers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.dev_spaces.controllers" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

The request was successful; response contains the Azure Dev Spaces Controller.

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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Region where the Azure resource is located.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>Model representing SKU for Azure Dev Spaces Controller.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Tags for the Azure resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group">

The request was successful; response contains the list of Azure Dev Spaces Controllers in the resource group.

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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Region where the Azure resource is located.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>Model representing SKU for Azure Dev Spaces Controller.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Tags for the Azure resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

The request was successful; response contains the list of Azure Dev Spaces Controllers in the subscription.

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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Region where the Azure resource is located.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>Model representing SKU for Azure Dev Spaces Controller.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Tags for the Azure resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td></td>
    <td>Gets the properties for an Azure Dev Spaces Controller.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td>Lists all the Azure Dev Spaces Controllers with their properties in the specified resource group and subscription.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Lists all the Azure Dev Spaces Controllers with their properties in the subscription.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a>, <a href="#parameter-data__sku"><code>data__sku</code></a>, <a href="#parameter-data__location"><code>data__location</code></a></td>
    <td></td>
    <td>Creates an Azure Dev Spaces Controller with the specified create parameters.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td></td>
    <td>Updates the properties of an existing Azure Dev Spaces Controller with the specified update parameters.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td></td>
    <td>Deletes an existing Azure Dev Spaces Controller.</td>
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
    <td>Name of the resource.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Resource group to which the resource belongs.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Azure subscription ID.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Gets the properties for an Azure Dev Spaces Controller.

```sql
SELECT
location,
properties,
sku,
tags
FROM azure_extras.dev_spaces.controllers
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND name = '{{ name }}' -- required
;
```
</TabItem>
<TabItem value="list_by_resource_group">

Lists all the Azure Dev Spaces Controllers with their properties in the specified resource group and subscription.

```sql
SELECT
location,
properties,
sku,
tags
FROM azure_extras.dev_spaces.controllers
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists all the Azure Dev Spaces Controllers with their properties in the subscription.

```sql
SELECT
location,
properties,
sku,
tags
FROM azure_extras.dev_spaces.controllers
WHERE subscriptionId = '{{ subscriptionId }}' -- required
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

Creates an Azure Dev Spaces Controller with the specified create parameters.

```sql
INSERT INTO azure_extras.dev_spaces.controllers (
data__tags,
data__location,
data__properties,
data__sku,
subscriptionId,
resourceGroupName,
name
)
SELECT 
'{{ tags }}',
'{{ location }}' /* required */,
'{{ properties }}' /* required */,
'{{ sku }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ name }}'
RETURNING
location,
properties,
sku,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: controllers
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the controllers resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the controllers resource.
    - name: name
      value: string
      description: Required parameter for the controllers resource.
    - name: tags
      value: object
      description: |
        Tags for the Azure resource.
    - name: location
      value: string
      description: |
        Region where the Azure resource is located.
    - name: properties
      value: object
    - name: sku
      value: object
      description: |
        Model representing SKU for Azure Dev Spaces Controller.
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

Updates the properties of an existing Azure Dev Spaces Controller with the specified update parameters.

```sql
UPDATE azure_extras.dev_spaces.controllers
SET 
data__tags = '{{ tags }}',
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND name = '{{ name }}' --required
RETURNING
location,
properties,
sku,
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

Deletes an existing Azure Dev Spaces Controller.

```sql
DELETE FROM azure_extras.dev_spaces.controllers
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND name = '{{ name }}' --required
;
```
</TabItem>
</Tabs>
