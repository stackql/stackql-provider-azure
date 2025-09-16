--- 
title: skus_nested_resource_type_firsts
hide_title: false
hide_table_of_contents: false
keywords:
  - skus_nested_resource_type_firsts
  - provider_hub
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

Creates, updates, deletes, gets or lists a <code>skus_nested_resource_type_firsts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>skus_nested_resource_type_firsts</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.provider_hub.skus_nested_resource_type_firsts" /></td></tr>
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

Successfully retrieved the resource type sku.

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
    <td></td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-providerNamespace"><code>providerNamespace</code></a>, <a href="#parameter-resourceType"><code>resourceType</code></a>, <a href="#parameter-nestedResourceTypeFirst"><code>nestedResourceTypeFirst</code></a>, <a href="#parameter-sku"><code>sku</code></a></td>
    <td></td>
    <td>Gets the sku details for the given resource type and sku name.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-providerNamespace"><code>providerNamespace</code></a>, <a href="#parameter-resourceType"><code>resourceType</code></a>, <a href="#parameter-nestedResourceTypeFirst"><code>nestedResourceTypeFirst</code></a>, <a href="#parameter-sku"><code>sku</code></a></td>
    <td></td>
    <td>Creates or updates the resource type skus in the given resource type.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-providerNamespace"><code>providerNamespace</code></a>, <a href="#parameter-resourceType"><code>resourceType</code></a>, <a href="#parameter-nestedResourceTypeFirst"><code>nestedResourceTypeFirst</code></a>, <a href="#parameter-sku"><code>sku</code></a></td>
    <td></td>
    <td>Deletes a resource type sku.</td>
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
<tr id="parameter-nestedResourceTypeFirst">
    <td><CopyableCode code="nestedResourceTypeFirst" /></td>
    <td><code>string</code></td>
    <td>The first child resource type.</td>
</tr>
<tr id="parameter-providerNamespace">
    <td><CopyableCode code="providerNamespace" /></td>
    <td><code>string</code></td>
    <td>The name of the resource provider hosted within ProviderHub.</td>
</tr>
<tr id="parameter-resourceType">
    <td><CopyableCode code="resourceType" /></td>
    <td><code>string</code></td>
    <td>The resource type.</td>
</tr>
<tr id="parameter-sku">
    <td><CopyableCode code="sku" /></td>
    <td><code>string</code></td>
    <td>The SKU.</td>
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
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Gets the sku details for the given resource type and sku name.

```sql
SELECT
properties
FROM azure.provider_hub.skus_nested_resource_type_firsts
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND providerNamespace = '{{ providerNamespace }}' -- required
AND resourceType = '{{ resourceType }}' -- required
AND nestedResourceTypeFirst = '{{ nestedResourceTypeFirst }}' -- required
AND sku = '{{ sku }}' -- required
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

Creates or updates the resource type skus in the given resource type.

```sql
INSERT INTO azure.provider_hub.skus_nested_resource_type_firsts (
data__properties,
subscriptionId,
providerNamespace,
resourceType,
nestedResourceTypeFirst,
sku
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ providerNamespace }}',
'{{ resourceType }}',
'{{ nestedResourceTypeFirst }}',
'{{ sku }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: skus_nested_resource_type_firsts
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the skus_nested_resource_type_firsts resource.
    - name: providerNamespace
      value: string
      description: Required parameter for the skus_nested_resource_type_firsts resource.
    - name: resourceType
      value: string
      description: Required parameter for the skus_nested_resource_type_firsts resource.
    - name: nestedResourceTypeFirst
      value: string
      description: Required parameter for the skus_nested_resource_type_firsts resource.
    - name: sku
      value: string
      description: Required parameter for the skus_nested_resource_type_firsts resource.
    - name: properties
      value: object
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

Deletes a resource type sku.

```sql
DELETE FROM azure.provider_hub.skus_nested_resource_type_firsts
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND providerNamespace = '{{ providerNamespace }}' --required
AND resourceType = '{{ resourceType }}' --required
AND nestedResourceTypeFirst = '{{ nestedResourceTypeFirst }}' --required
AND sku = '{{ sku }}' --required
;
```
</TabItem>
</Tabs>
