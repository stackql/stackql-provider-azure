--- 
title: products
hide_title: false
hide_table_of_contents: false
keywords:
  - products
  - sphere
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

Creates, updates, deletes, gets or lists a <code>products</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>products</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sphere.products" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_catalog', value: 'list_by_catalog' }
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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The resource-specific properties for this resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_catalog">

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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-catalogName"><code>catalogName</code></a>, <a href="#parameter-productName"><code>productName</code></a></td>
    <td></td>
    <td>Get a Product. '.default' and '.unassigned' are system defined values and cannot be used for product name.</td>
</tr>
<tr>
    <td><a href="#list_by_catalog"><CopyableCode code="list_by_catalog" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-catalogName"><code>catalogName</code></a></td>
    <td></td>
    <td>List Product resources by Catalog</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-catalogName"><code>catalogName</code></a>, <a href="#parameter-productName"><code>productName</code></a></td>
    <td></td>
    <td>Create a Product. '.default' and '.unassigned' are system defined values and cannot be used for product name.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-catalogName"><code>catalogName</code></a>, <a href="#parameter-productName"><code>productName</code></a></td>
    <td></td>
    <td>Update a Product. '.default' and '.unassigned' are system defined values and cannot be used for product name.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-catalogName"><code>catalogName</code></a>, <a href="#parameter-productName"><code>productName</code></a></td>
    <td></td>
    <td>Delete a Product. '.default' and '.unassigned' are system defined values and cannot be used for product name'</td>
</tr>
<tr>
    <td><a href="#count_devices"><CopyableCode code="count_devices" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-catalogName"><code>catalogName</code></a>, <a href="#parameter-productName"><code>productName</code></a></td>
    <td></td>
    <td>Counts devices in product. '.default' and '.unassigned' are system defined values and cannot be used for product name.</td>
</tr>
<tr>
    <td><a href="#generate_default_device_groups"><CopyableCode code="generate_default_device_groups" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-catalogName"><code>catalogName</code></a>, <a href="#parameter-productName"><code>productName</code></a></td>
    <td></td>
    <td>Generates default device groups for the product. '.default' and '.unassigned' are system defined values and cannot be used for product name.</td>
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
<tr id="parameter-catalogName">
    <td><CopyableCode code="catalogName" /></td>
    <td><code>string</code></td>
    <td>Name of catalog</td>
</tr>
<tr id="parameter-productName">
    <td><CopyableCode code="productName" /></td>
    <td><code>string</code></td>
    <td>Name of product.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_catalog', value: 'list_by_catalog' }
    ]}
>
<TabItem value="get">

Get a Product. '.default' and '.unassigned' are system defined values and cannot be used for product name.

```sql
SELECT
properties
FROM azure.sphere.products
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND catalogName = '{{ catalogName }}' -- required
AND productName = '{{ productName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_catalog">

List Product resources by Catalog

```sql
SELECT
properties
FROM azure.sphere.products
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND catalogName = '{{ catalogName }}' -- required
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

Create a Product. '.default' and '.unassigned' are system defined values and cannot be used for product name.

```sql
INSERT INTO azure.sphere.products (
data__properties,
subscriptionId,
resourceGroupName,
catalogName,
productName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ catalogName }}',
'{{ productName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: products
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the products resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the products resource.
    - name: catalogName
      value: string
      description: Required parameter for the products resource.
    - name: productName
      value: string
      description: Required parameter for the products resource.
    - name: properties
      value: object
      description: |
        The resource-specific properties for this resource.
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

Update a Product. '.default' and '.unassigned' are system defined values and cannot be used for product name.

```sql
UPDATE azure.sphere.products
SET 
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND catalogName = '{{ catalogName }}' --required
AND productName = '{{ productName }}' --required
RETURNING
properties;
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

Delete a Product. '.default' and '.unassigned' are system defined values and cannot be used for product name'

```sql
DELETE FROM azure.sphere.products
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND catalogName = '{{ catalogName }}' --required
AND productName = '{{ productName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="count_devices"
    values={[
        { label: 'count_devices', value: 'count_devices' },
        { label: 'generate_default_device_groups', value: 'generate_default_device_groups' }
    ]}
>
<TabItem value="count_devices">

Counts devices in product. '.default' and '.unassigned' are system defined values and cannot be used for product name.

```sql
EXEC azure.sphere.products.count_devices 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@catalogName='{{ catalogName }}' --required, 
@productName='{{ productName }}' --required
;
```
</TabItem>
<TabItem value="generate_default_device_groups">

Generates default device groups for the product. '.default' and '.unassigned' are system defined values and cannot be used for product name.

```sql
EXEC azure.sphere.products.generate_default_device_groups 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@catalogName='{{ catalogName }}' --required, 
@productName='{{ productName }}' --required
;
```
</TabItem>
</Tabs>
