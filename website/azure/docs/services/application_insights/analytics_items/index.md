--- 
title: analytics_items
hide_title: false
hide_table_of_contents: false
keywords:
  - analytics_items
  - application_insights
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

Creates, updates, deletes, gets or lists an <code>analytics_items</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>analytics_items</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.application_insights.analytics_items" /></td></tr>
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

A single item associated with the Application Insights component.

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
    <td><CopyableCode code="Content" /></td>
    <td><code>string</code></td>
    <td>The content of this item</td>
</tr>
<tr>
    <td><CopyableCode code="Id" /></td>
    <td><code>string</code></td>
    <td>Internally assigned unique id of the item definition.</td>
</tr>
<tr>
    <td><CopyableCode code="Name" /></td>
    <td><code>string</code></td>
    <td>The user-defined name of the item.</td>
</tr>
<tr>
    <td><CopyableCode code="Properties" /></td>
    <td><code>object</code></td>
    <td>A set of properties that can be defined in the context of a specific item type. Each type may have its own properties.</td>
</tr>
<tr>
    <td><CopyableCode code="Scope" /></td>
    <td><code>string</code></td>
    <td>Enum indicating if this item definition is owned by a specific user or is shared between all users with access to the Application Insights component.</td>
</tr>
<tr>
    <td><CopyableCode code="TimeCreated" /></td>
    <td><code>string</code></td>
    <td>Date and time in UTC when this item was created.</td>
</tr>
<tr>
    <td><CopyableCode code="TimeModified" /></td>
    <td><code>string</code></td>
    <td>Date and time in UTC of the last modification that was made to this item.</td>
</tr>
<tr>
    <td><CopyableCode code="Type" /></td>
    <td><code>string</code></td>
    <td>Enum indicating the type of the Analytics item.</td>
</tr>
<tr>
    <td><CopyableCode code="Version" /></td>
    <td><code>string</code></td>
    <td>This instance's version of the data model. This can change as new features are added.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-scopePath"><code>scopePath</code></a></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td>Gets a specific Analytics Items defined within an Application Insights component.</td>
</tr>
<tr>
    <td><a href="#put"><CopyableCode code="put" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-scopePath"><code>scopePath</code></a></td>
    <td><a href="#parameter-overrideItem"><code>overrideItem</code></a></td>
    <td>Adds or Updates a specific Analytics Item within an Application Insights component.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-scopePath"><code>scopePath</code></a></td>
    <td><a href="#parameter-id"><code>id</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td>Deletes a specific Analytics Items defined within an Application Insights component.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-scopePath"><code>scopePath</code></a></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-type"><code>type</code></a>, <a href="#parameter-includeContent"><code>includeContent</code></a></td>
    <td>Gets a list of Analytics Items defined within an Application Insights component.</td>
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
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-resourceName">
    <td><CopyableCode code="resourceName" /></td>
    <td><code>string</code></td>
    <td>The name of the Application Insights component resource.</td>
</tr>
<tr id="parameter-scopePath">
    <td><CopyableCode code="scopePath" /></td>
    <td><code>string</code></td>
    <td>Enum indicating if this item definition is owned by a specific user or is shared between all users with access to the Application Insights component.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-id">
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>The Id of a specific item defined in the Application Insights component</td>
</tr>
<tr id="parameter-includeContent">
    <td><CopyableCode code="includeContent" /></td>
    <td><code>boolean</code></td>
    <td>Flag indicating whether or not to return the content of each applicable item. If false, only return the item information.</td>
</tr>
<tr id="parameter-name">
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of a specific item defined in the Application Insights component</td>
</tr>
<tr id="parameter-overrideItem">
    <td><CopyableCode code="overrideItem" /></td>
    <td><code>boolean</code></td>
    <td>Flag indicating whether or not to force save an item. This allows overriding an item if it already exists.</td>
</tr>
<tr id="parameter-scope">
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>Enum indicating if this item definition is owned by a specific user or is shared between all users with access to the Application Insights component.</td>
</tr>
<tr id="parameter-type">
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Enum indicating the type of the Analytics item.</td>
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

Gets a specific Analytics Items defined within an Application Insights component.

```sql
SELECT
Content,
Id,
Name,
Properties,
Scope,
TimeCreated,
TimeModified,
Type,
Version
FROM azure.application_insights.analytics_items
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND resourceName = '{{ resourceName }}' -- required
AND scopePath = '{{ scopePath }}' -- required
AND id = '{{ id }}'
AND name = '{{ name }}'
;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="put"
    values={[
        { label: 'put', value: 'put' }
    ]}
>
<TabItem value="put">

Adds or Updates a specific Analytics Item within an Application Insights component.

```sql
REPLACE azure.application_insights.analytics_items
SET 
data__Id = '{{ Id }}',
data__Name = '{{ Name }}',
data__Content = '{{ Content }}',
data__Scope = '{{ Scope }}',
data__Type = '{{ Type }}',
data__Properties = '{{ Properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND resourceName = '{{ resourceName }}' --required
AND scopePath = '{{ scopePath }}' --required
AND overrideItem = {{ overrideItem}}
RETURNING
Content,
Id,
Name,
Properties,
Scope,
TimeCreated,
TimeModified,
Type,
Version;
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

Deletes a specific Analytics Items defined within an Application Insights component.

```sql
DELETE FROM azure.application_insights.analytics_items
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND resourceName = '{{ resourceName }}' --required
AND scopePath = '{{ scopePath }}' --required
AND id = '{{ id }}'
AND name = '{{ name }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

Gets a list of Analytics Items defined within an Application Insights component.

```sql
EXEC azure.application_insights.analytics_items.list 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@resourceName='{{ resourceName }}' --required, 
@scopePath='{{ scopePath }}' --required, 
@scope='{{ scope }}', 
@type='{{ type }}', 
@includeContent={{ includeContent }}
;
```
</TabItem>
</Tabs>
