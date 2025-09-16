--- 
title: deny_assignments
hide_title: false
hide_table_of_contents: false
keywords:
  - deny_assignments
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

Creates, updates, deletes, gets or lists a <code>deny_assignments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>deny_assignments</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.authorization.deny_assignments" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_for_resource"
    values={[
        { label: 'list_for_resource', value: 'list_for_resource' },
        { label: 'list_for_resource_group', value: 'list_for_resource_group' },
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' },
        { label: 'get_by_id', value: 'get_by_id' },
        { label: 'list_for_scope', value: 'list_for_scope' }
    ]}
>
<TabItem value="list_for_resource">

OK - Returns an array of deny assignments.

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
    <td>The deny assignment ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The deny assignment name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Deny assignment properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The deny assignment type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_for_resource_group">

OK - Returns an array of deny assignments.

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
    <td>The deny assignment ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The deny assignment name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Deny assignment properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The deny assignment type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get">

OK - Returns information about the deny assignment.

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
    <td>The deny assignment ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The deny assignment name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Deny assignment properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The deny assignment type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

OK - Returns an array of deny assignments.

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
    <td>The deny assignment ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The deny assignment name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Deny assignment properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The deny assignment type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_by_id">

OK - Returns the deny assignment.

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
    <td>The deny assignment ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The deny assignment name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Deny assignment properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The deny assignment type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_for_scope">

OK - Returns an array of deny assignments.

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
    <td>The deny assignment ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The deny assignment name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Deny assignment properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The deny assignment type.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceProviderNamespace"><code>resourceProviderNamespace</code></a>, <a href="#parameter-parentResourcePath"><code>parentResourcePath</code></a>, <a href="#parameter-resourceType"><code>resourceType</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Gets deny assignments for a resource.</td>
</tr>
<tr>
    <td><a href="#list_for_resource_group"><CopyableCode code="list_for_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Gets deny assignments for a resource group.</td>
</tr>
<tr>
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-denyAssignmentId"><code>denyAssignmentId</code></a></td>
    <td></td>
    <td>Get the specified deny assignment.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Gets all deny assignments for the subscription.</td>
</tr>
<tr>
    <td><a href="#get_by_id"><CopyableCode code="get_by_id" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-denyAssignmentId"><code>denyAssignmentId</code></a></td>
    <td></td>
    <td>Gets a deny assignment by ID.</td>
</tr>
<tr>
    <td><a href="#list_for_scope"><CopyableCode code="list_for_scope" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Gets deny assignments for a scope.</td>
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
<tr id="parameter-denyAssignmentId">
    <td><CopyableCode code="denyAssignmentId" /></td>
    <td><code>string</code></td>
    <td>The fully qualified deny assignment ID. For example, use the format, /subscriptions/&#123;guid&#125;/providers/Microsoft.Authorization/denyAssignments/&#123;denyAssignmentId&#125; for subscription level deny assignments, or /providers/Microsoft.Authorization/denyAssignments/&#123;denyAssignmentId&#125; for tenant level deny assignments.</td>
</tr>
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
    <td>The name of the resource to get deny assignments for.</td>
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
<tr id="parameter-scope">
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>The scope of the deny assignments.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The filter to apply on the operation. Use $filter=atScope() to return all deny assignments at or above the scope. Use $filter=denyAssignmentName eq '&#123;name&#125;' to search deny assignments by name at specified scope. Use $filter=principalId eq '&#123;id&#125;' to return all deny assignments at, above and below the scope for the specified principal. Use $filter=gdprExportPrincipalId eq '&#123;id&#125;' to return all deny assignments at, above and below the scope for the specified principal. This filter is different from the principalId filter as it returns not only those deny assignments that contain the specified principal is the Principals list but also those deny assignments that contain the specified principal is the ExcludePrincipals list. Additionally, when gdprExportPrincipalId filter is used, only the deny assignment name and description properties are returned.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_for_resource"
    values={[
        { label: 'list_for_resource', value: 'list_for_resource' },
        { label: 'list_for_resource_group', value: 'list_for_resource_group' },
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' },
        { label: 'get_by_id', value: 'get_by_id' },
        { label: 'list_for_scope', value: 'list_for_scope' }
    ]}
>
<TabItem value="list_for_resource">

Gets deny assignments for a resource.

```sql
SELECT
id,
name,
properties,
type
FROM azure.authorization.deny_assignments
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND resourceProviderNamespace = '{{ resourceProviderNamespace }}' -- required
AND parentResourcePath = '{{ parentResourcePath }}' -- required
AND resourceType = '{{ resourceType }}' -- required
AND resourceName = '{{ resourceName }}' -- required
AND $filter = '{{ $filter }}'
;
```
</TabItem>
<TabItem value="list_for_resource_group">

Gets deny assignments for a resource group.

```sql
SELECT
id,
name,
properties,
type
FROM azure.authorization.deny_assignments
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND $filter = '{{ $filter }}'
;
```
</TabItem>
<TabItem value="get">

Get the specified deny assignment.

```sql
SELECT
id,
name,
properties,
type
FROM azure.authorization.deny_assignments
WHERE scope = '{{ scope }}' -- required
AND denyAssignmentId = '{{ denyAssignmentId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets all deny assignments for the subscription.

```sql
SELECT
id,
name,
properties,
type
FROM azure.authorization.deny_assignments
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND $filter = '{{ $filter }}'
;
```
</TabItem>
<TabItem value="get_by_id">

Gets a deny assignment by ID.

```sql
SELECT
id,
name,
properties,
type
FROM azure.authorization.deny_assignments
WHERE denyAssignmentId = '{{ denyAssignmentId }}' -- required
;
```
</TabItem>
<TabItem value="list_for_scope">

Gets deny assignments for a scope.

```sql
SELECT
id,
name,
properties,
type
FROM azure.authorization.deny_assignments
WHERE scope = '{{ scope }}' -- required
AND $filter = '{{ $filter }}'
;
```
</TabItem>
</Tabs>
