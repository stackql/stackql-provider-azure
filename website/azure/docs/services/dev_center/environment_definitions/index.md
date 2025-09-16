--- 
title: environment_definitions
hide_title: false
hide_table_of_contents: false
keywords:
  - environment_definitions
  - dev_center
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

Creates, updates, deletes, gets or lists an <code>environment_definitions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>environment_definitions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_center.environment_definitions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_by_project_catalog"
    values={[
        { label: 'get_by_project_catalog', value: 'get_by_project_catalog' },
        { label: 'get', value: 'get' },
        { label: 'list_by_project_catalog', value: 'list_by_project_catalog' },
        { label: 'list_by_catalog', value: 'list_by_catalog' }
    ]}
>
<TabItem value="get_by_project_catalog">

OK. The request has succeeded.

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
    <td>Environment definition properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get">

OK. The request has succeeded.

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
    <td>Environment definition properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_project_catalog">

OK. The request has succeeded.

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
    <td>Environment definition properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_catalog">

OK. The request has succeeded.

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
    <td>Environment definition properties.</td>
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
    <td><a href="#get_by_project_catalog"><CopyableCode code="get_by_project_catalog" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td></td>
    <td>Gets an environment definition from the catalog.</td>
</tr>
<tr>
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td></td>
    <td>Gets an environment definition from the catalog.</td>
</tr>
<tr>
    <td><a href="#list_by_project_catalog"><CopyableCode code="list_by_project_catalog" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-projectName"><code>projectName</code></a>, <a href="#parameter-catalogName"><code>catalogName</code></a></td>
    <td></td>
    <td>Lists the environment definitions in this project catalog.</td>
</tr>
<tr>
    <td><a href="#list_by_catalog"><CopyableCode code="list_by_catalog" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-devCenterName"><code>devCenterName</code></a>, <a href="#parameter-catalogName"><code>catalogName</code></a></td>
    <td><a href="#parameter-$top"><code>$top</code></a></td>
    <td>List environment definitions in the catalog.</td>
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
    <td>The name of the Catalog.</td>
</tr>
<tr id="parameter-devCenterName">
    <td><CopyableCode code="devCenterName" /></td>
    <td><code>string</code></td>
    <td>The name of the devcenter.</td>
</tr>
<tr id="parameter-projectName">
    <td><CopyableCode code="projectName" /></td>
    <td><code>string</code></td>
    <td>The name of the project.</td>
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
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int32)</code></td>
    <td>The maximum number of resources to return from the operation. Example: '$top=10'.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_by_project_catalog"
    values={[
        { label: 'get_by_project_catalog', value: 'get_by_project_catalog' },
        { label: 'get', value: 'get' },
        { label: 'list_by_project_catalog', value: 'list_by_project_catalog' },
        { label: 'list_by_catalog', value: 'list_by_catalog' }
    ]}
>
<TabItem value="get_by_project_catalog">

Gets an environment definition from the catalog.

```sql
SELECT
properties
FROM azure.dev_center.environment_definitions
;
```
</TabItem>
<TabItem value="get">

Gets an environment definition from the catalog.

```sql
SELECT
properties
FROM azure.dev_center.environment_definitions
;
```
</TabItem>
<TabItem value="list_by_project_catalog">

Lists the environment definitions in this project catalog.

```sql
SELECT
properties
FROM azure.dev_center.environment_definitions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND projectName = '{{ projectName }}' -- required
AND catalogName = '{{ catalogName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_catalog">

List environment definitions in the catalog.

```sql
SELECT
properties
FROM azure.dev_center.environment_definitions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND devCenterName = '{{ devCenterName }}' -- required
AND catalogName = '{{ catalogName }}' -- required
AND $top = '{{ $top }}'
;
```
</TabItem>
</Tabs>
