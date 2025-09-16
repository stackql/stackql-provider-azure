--- 
title: permissions
hide_title: false
hide_table_of_contents: false
keywords:
  - permissions
  - authorization
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

Creates, updates, deletes, gets or lists a <code>permissions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>permissions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.authorization.permissions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_for_resource"
    values={[
        { label: 'list_for_resource', value: 'list_for_resource' },
        { label: 'list_for_resource_group', value: 'list_for_resource_group' }
    ]}
>
<TabItem value="list_for_resource">

OK - Returns an array of permissions.

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
    <td><CopyableCode code="actions" /></td>
    <td><code>array</code></td>
    <td>Allowed actions.</td>
</tr>
<tr>
    <td><CopyableCode code="dataActions" /></td>
    <td><code>array</code></td>
    <td>Allowed Data actions.</td>
</tr>
<tr>
    <td><CopyableCode code="notActions" /></td>
    <td><code>array</code></td>
    <td>Denied actions.</td>
</tr>
<tr>
    <td><CopyableCode code="notDataActions" /></td>
    <td><code>array</code></td>
    <td>Denied Data actions.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_for_resource_group">

OK - Returns an array of permissions.

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
    <td><CopyableCode code="actions" /></td>
    <td><code>array</code></td>
    <td>Allowed actions.</td>
</tr>
<tr>
    <td><CopyableCode code="dataActions" /></td>
    <td><code>array</code></td>
    <td>Allowed Data actions.</td>
</tr>
<tr>
    <td><CopyableCode code="notActions" /></td>
    <td><code>array</code></td>
    <td>Denied actions.</td>
</tr>
<tr>
    <td><CopyableCode code="notDataActions" /></td>
    <td><code>array</code></td>
    <td>Denied Data actions.</td>
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
    <td><a href="#list_for_resource"><CopyableCode code="list_for_resource" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceProviderNamespace"><code>resourceProviderNamespace</code></a>, <a href="#parameter-parentResourcePath"><code>parentResourcePath</code></a>, <a href="#parameter-resourceType"><code>resourceType</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets all permissions the caller has for a resource.</td>
</tr>
<tr>
    <td><a href="#list_for_resource_group"><CopyableCode code="list_for_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets all permissions the caller has for a resource group.</td>
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
<tr id="parameter-parentResourcePath">
    <td><CopyableCode code="parentResourcePath" /></td>
    <td><code>string</code></td>
    <td>The parent resource identity.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-resourceName">
    <td><CopyableCode code="resourceName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource to get the permissions for.</td>
</tr>
<tr id="parameter-resourceProviderNamespace">
    <td><CopyableCode code="resourceProviderNamespace" /></td>
    <td><code>string</code></td>
    <td>The namespace of the resource provider.</td>
</tr>
<tr id="parameter-resourceType">
    <td><CopyableCode code="resourceType" /></td>
    <td><code>string</code></td>
    <td>The resource type of the resource.</td>
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
    defaultValue="list_for_resource"
    values={[
        { label: 'list_for_resource', value: 'list_for_resource' },
        { label: 'list_for_resource_group', value: 'list_for_resource_group' }
    ]}
>
<TabItem value="list_for_resource">

Gets all permissions the caller has for a resource.

```sql
SELECT
actions,
dataActions,
notActions,
notDataActions
FROM azure.authorization.permissions
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND resourceProviderNamespace = '{{ resourceProviderNamespace }}' -- required
AND parentResourcePath = '{{ parentResourcePath }}' -- required
AND resourceType = '{{ resourceType }}' -- required
AND resourceName = '{{ resourceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_for_resource_group">

Gets all permissions the caller has for a resource group.

```sql
SELECT
actions,
dataActions,
notActions,
notDataActions
FROM azure.authorization.permissions
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>
