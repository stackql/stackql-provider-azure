--- 
title: unresolved_dependencies
hide_title: false
hide_table_of_contents: false
keywords:
  - unresolved_dependencies
  - resource_mover
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

Creates, updates, deletes, gets or lists an <code>unresolved_dependencies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>unresolved_dependencies</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.resource_mover.unresolved_dependencies" /></td></tr>
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
    <td>Gets or sets the arm id of the dependency.</td>
</tr>
<tr>
    <td><CopyableCode code="count" /></td>
    <td><code>integer (int32)</code></td>
    <td>Gets or sets the count.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-moveCollectionName"><code>moveCollectionName</code></a></td>
    <td><a href="#parameter-dependencyLevel"><code>dependencyLevel</code></a>, <a href="#parameter-$orderby"><code>$orderby</code></a>, <a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Gets a list of unresolved dependencies.</td>
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
<tr id="parameter-moveCollectionName">
    <td><CopyableCode code="moveCollectionName" /></td>
    <td><code>string</code></td>
    <td>The Move Collection Name.</td>
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
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The filter to apply on the operation. For example, $apply=filter(count eq 2).</td>
</tr>
<tr id="parameter-$orderby">
    <td><CopyableCode code="$orderby" /></td>
    <td><code>string</code></td>
    <td>OData order by query option. For example, you can use $orderby=Count desc.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>Client Api Version.</td>
</tr>
<tr id="parameter-dependencyLevel">
    <td><CopyableCode code="dependencyLevel" /></td>
    <td><code>string</code></td>
    <td>Defines the dependency level.</td>
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

Gets a list of unresolved dependencies.

```sql
SELECT
id,
count
FROM azure.resource_mover.unresolved_dependencies
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND moveCollectionName = '{{ moveCollectionName }}' -- required
AND dependencyLevel = '{{ dependencyLevel }}'
AND $orderby = '{{ $orderby }}'
AND api-version = '{{ api-version }}'
AND $filter = '{{ $filter }}'
;
```
</TabItem>
</Tabs>
