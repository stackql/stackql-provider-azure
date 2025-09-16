--- 
title: inventories
hide_title: false
hide_table_of_contents: false
keywords:
  - inventories
  - hybrid_connectivity
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

Creates, updates, deletes, gets or lists an <code>inventories</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>inventories</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hybrid_connectivity.inventories" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_widget', value: 'list_by_widget' }
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
<TabItem value="list_by_widget">

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
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-solutionConfiguration"><code>solutionConfiguration</code></a>, <a href="#parameter-inventoryId"><code>inventoryId</code></a></td>
    <td></td>
    <td>Get a InventoryResource</td>
</tr>
<tr>
    <td><a href="#list_by_widget"><CopyableCode code="list_by_widget" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-solutionConfiguration"><code>solutionConfiguration</code></a></td>
    <td></td>
    <td>List InventoryResource resources by SolutionConfiguration</td>
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
<tr id="parameter-inventoryId">
    <td><CopyableCode code="inventoryId" /></td>
    <td><code>string</code></td>
    <td>Inventory resource</td>
</tr>
<tr id="parameter-resourceUri">
    <td><CopyableCode code="resourceUri" /></td>
    <td><code>string</code></td>
    <td>The fully qualified Azure Resource manager identifier of the resource.</td>
</tr>
<tr id="parameter-solutionConfiguration">
    <td><CopyableCode code="solutionConfiguration" /></td>
    <td><code>string</code></td>
    <td>Represent Solution Configuration Resource.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_widget', value: 'list_by_widget' }
    ]}
>
<TabItem value="get">

Get a InventoryResource

```sql
SELECT
properties
FROM azure.hybrid_connectivity.inventories
WHERE resourceUri = '{{ resourceUri }}' -- required
AND solutionConfiguration = '{{ solutionConfiguration }}' -- required
AND inventoryId = '{{ inventoryId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_widget">

List InventoryResource resources by SolutionConfiguration

```sql
SELECT
properties
FROM azure.hybrid_connectivity.inventories
WHERE resourceUri = '{{ resourceUri }}' -- required
AND solutionConfiguration = '{{ solutionConfiguration }}' -- required
;
```
</TabItem>
</Tabs>
