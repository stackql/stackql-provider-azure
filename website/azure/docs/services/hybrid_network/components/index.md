--- 
title: components
hide_title: false
hide_table_of_contents: false
keywords:
  - components
  - hybrid_network
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

Creates, updates, deletes, gets or lists a <code>components</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>components</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hybrid_network.components" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_network_function', value: 'list_by_network_function' }
    ]}
>
<TabItem value="get">

Operation is successful. The operation returns the resulting component resource.

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
    <td>The component properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_network_function">

Request is successful. The operation returns a list of component resources.

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
    <td>The component properties.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkFunctionName"><code>networkFunctionName</code></a>, <a href="#parameter-componentName"><code>componentName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets information about the specified application instance resource.</td>
</tr>
<tr>
    <td><a href="#list_by_network_function"><CopyableCode code="list_by_network_function" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-networkFunctionName"><code>networkFunctionName</code></a></td>
    <td></td>
    <td>Lists all the component resources in a network function.</td>
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
<tr id="parameter-componentName">
    <td><CopyableCode code="componentName" /></td>
    <td><code>string</code></td>
    <td>The name of the component.</td>
</tr>
<tr id="parameter-networkFunctionName">
    <td><CopyableCode code="networkFunctionName" /></td>
    <td><code>string</code></td>
    <td>The name of the network function.</td>
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
        { label: 'list_by_network_function', value: 'list_by_network_function' }
    ]}
>
<TabItem value="get">

Gets information about the specified application instance resource.

```sql
SELECT
properties
FROM azure.hybrid_network.components
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND networkFunctionName = '{{ networkFunctionName }}' -- required
AND componentName = '{{ componentName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_network_function">

Lists all the component resources in a network function.

```sql
SELECT
properties
FROM azure.hybrid_network.components
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND networkFunctionName = '{{ networkFunctionName }}' -- required
;
```
</TabItem>
</Tabs>
