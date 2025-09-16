--- 
title: data_stores
hide_title: false
hide_table_of_contents: false
keywords:
  - data_stores
  - hybrid_data_manager
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

Creates, updates, deletes, gets or lists a <code>data_stores</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>data_stores</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hybrid_data_manager.data_stores" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_data_manager', value: 'list_by_data_manager' }
    ]}
>
<TabItem value="get">

The data store/repository which matches the name given.

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
    <td>Id of the object.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the object.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>DataStore properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of the object.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_data_manager">

The list of data stores/repositories in the given resource.

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
    <td>Id of the object.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the object.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>DataStore properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of the object.</td>
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
    <td><a href="#parameter-dataStoreName"><code>dataStoreName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataManagerName"><code>dataManagerName</code></a></td>
    <td></td>
    <td>This method gets the data store/repository by name.</td>
</tr>
<tr>
    <td><a href="#list_by_data_manager"><CopyableCode code="list_by_data_manager" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataManagerName"><code>dataManagerName</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Gets all the data stores/repositories in the given resource.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-dataStoreName"><code>dataStoreName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataManagerName"><code>dataManagerName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Creates or updates the data store/repository in the data manager.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-dataStoreName"><code>dataStoreName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataManagerName"><code>dataManagerName</code></a></td>
    <td></td>
    <td>This method deletes the given data store/repository.</td>
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
<tr id="parameter-dataManagerName">
    <td><CopyableCode code="dataManagerName" /></td>
    <td><code>string</code></td>
    <td>The name of the DataManager Resource within the specified resource group. DataManager names must be between 3 and 24 characters in length and use any alphanumeric and underscore only</td>
</tr>
<tr id="parameter-dataStoreName">
    <td><CopyableCode code="dataStoreName" /></td>
    <td><code>string</code></td>
    <td>The data store/repository name to be deleted.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The Resource Group Name</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The Subscription Id</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>OData Filter options</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_data_manager', value: 'list_by_data_manager' }
    ]}
>
<TabItem value="get">

This method gets the data store/repository by name.

```sql
SELECT
id,
name,
properties,
type
FROM azure.hybrid_data_manager.data_stores
WHERE dataStoreName = '{{ dataStoreName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND dataManagerName = '{{ dataManagerName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_data_manager">

Gets all the data stores/repositories in the given resource.

```sql
SELECT
id,
name,
properties,
type
FROM azure.hybrid_data_manager.data_stores
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND dataManagerName = '{{ dataManagerName }}' -- required
AND $filter = '{{ $filter }}'
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

Creates or updates the data store/repository in the data manager.

```sql
INSERT INTO azure.hybrid_data_manager.data_stores (
data__properties,
dataStoreName,
subscriptionId,
resourceGroupName,
dataManagerName
)
SELECT 
'{{ properties }}' /* required */,
'{{ dataStoreName }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ dataManagerName }}'
RETURNING
id,
name,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: data_stores
  props:
    - name: dataStoreName
      value: string
      description: Required parameter for the data_stores resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the data_stores resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the data_stores resource.
    - name: dataManagerName
      value: string
      description: Required parameter for the data_stores resource.
    - name: properties
      value: object
      description: |
        DataStore properties.
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

This method deletes the given data store/repository.

```sql
DELETE FROM azure.hybrid_data_manager.data_stores
WHERE dataStoreName = '{{ dataStoreName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND dataManagerName = '{{ dataManagerName }}' --required
;
```
</TabItem>
</Tabs>
