--- 
title: role_assignments
hide_title: false
hide_table_of_contents: false
keywords:
  - role_assignments
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

Creates, updates, deletes, gets or lists a <code>role_assignments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>role_assignments</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.authorization.role_assignments" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_for_resource"
    values={[
        { label: 'list_for_resource', value: 'list_for_resource' },
        { label: 'list_for_resource_group', value: 'list_for_resource_group' },
        { label: 'get', value: 'get' },
        { label: 'list_for_subscription', value: 'list_for_subscription' },
        { label: 'list_for_scope', value: 'list_for_scope' },
        { label: 'get_by_id', value: 'get_by_id' }
    ]}
>
<TabItem value="list_for_resource">

Returns an array of role assignments.

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
    <td>The role assignment ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The role assignment name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Role assignment properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The role assignment type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_for_resource_group">

Returns an array of role assignments.

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
    <td>The role assignment ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The role assignment name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Role assignment properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The role assignment type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get">

Returns the role assignment.

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
    <td>The role assignment ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The role assignment name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Role assignment properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The role assignment type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_for_subscription">

Returns an array of role assignments.

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
    <td>The role assignment ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The role assignment name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Role assignment properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The role assignment type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_for_scope">

Returns an array of role assignments.

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
    <td>The role assignment ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The role assignment name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Role assignment properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The role assignment type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_by_id">

Returns the role assignment.

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
    <td>The role assignment ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The role assignment name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Role assignment properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The role assignment type.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceProviderNamespace"><code>resourceProviderNamespace</code></a>, <a href="#parameter-resourceType"><code>resourceType</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-tenantId"><code>tenantId</code></a></td>
    <td>List all role assignments that apply to a resource.</td>
</tr>
<tr>
    <td><a href="#list_for_resource_group"><CopyableCode code="list_for_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-tenantId"><code>tenantId</code></a></td>
    <td>List all role assignments that apply to a resource group.</td>
</tr>
<tr>
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-roleAssignmentName"><code>roleAssignmentName</code></a></td>
    <td><a href="#parameter-tenantId"><code>tenantId</code></a></td>
    <td>Get a role assignment by scope and name.</td>
</tr>
<tr>
    <td><a href="#list_for_subscription"><CopyableCode code="list_for_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-tenantId"><code>tenantId</code></a></td>
    <td>List all role assignments that apply to a subscription.</td>
</tr>
<tr>
    <td><a href="#list_for_scope"><CopyableCode code="list_for_scope" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-tenantId"><code>tenantId</code></a>, <a href="#parameter-$skipToken"><code>$skipToken</code></a></td>
    <td>List all role assignments that apply to a scope.</td>
</tr>
<tr>
    <td><a href="#get_by_id"><CopyableCode code="get_by_id" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-roleAssignmentId"><code>roleAssignmentId</code></a></td>
    <td><a href="#parameter-tenantId"><code>tenantId</code></a></td>
    <td>Get a role assignment by ID.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-roleAssignmentName"><code>roleAssignmentName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Create or update a role assignment by scope and name.</td>
</tr>
<tr>
    <td><a href="#create_by_id"><CopyableCode code="create_by_id" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-roleAssignmentId"><code>roleAssignmentId</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Create or update a role assignment by ID.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-roleAssignmentName"><code>roleAssignmentName</code></a></td>
    <td><a href="#parameter-tenantId"><code>tenantId</code></a></td>
    <td>Delete a role assignment by scope and name.</td>
</tr>
<tr>
    <td><a href="#delete_by_id"><CopyableCode code="delete_by_id" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-roleAssignmentId"><code>roleAssignmentId</code></a></td>
    <td><a href="#parameter-tenantId"><code>tenantId</code></a></td>
    <td>Delete a role assignment by ID.</td>
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
    <td>The resource name.</td>
</tr>
<tr id="parameter-resourceProviderNamespace">
    <td><CopyableCode code="resourceProviderNamespace" /></td>
    <td><code>string</code></td>
    <td>The namespace of the resource provider.</td>
</tr>
<tr id="parameter-resourceType">
    <td><CopyableCode code="resourceType" /></td>
    <td><code>string</code></td>
    <td>The resource type name. For example the type name of a web app is 'sites' (from Microsoft.Web/sites).</td>
</tr>
<tr id="parameter-roleAssignmentId">
    <td><CopyableCode code="roleAssignmentId" /></td>
    <td><code>string</code></td>
    <td>The fully qualified ID of the role assignment including scope, resource name, and resource type. Format: /&#123;scope&#125;/providers/Microsoft.Authorization/roleAssignments/&#123;roleAssignmentName&#125;. Example: /subscriptions/&lt;SUB_ID&gt;/resourcegroups/&lt;RESOURCE_GROUP&gt;/providers/Microsoft.Authorization/roleAssignments/&lt;ROLE_ASSIGNMENT_NAME&gt;</td>
</tr>
<tr id="parameter-roleAssignmentName">
    <td><CopyableCode code="roleAssignmentName" /></td>
    <td><code>string</code></td>
    <td>The name of the role assignment. It can be any valid GUID.</td>
</tr>
<tr id="parameter-scope">
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>The scope of the operation or resource. Valid scopes are: subscription (format: '/subscriptions/&#123;subscriptionId&#125;'), resource group (format: '/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;', or resource (format: '/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/[&#123;parentResourcePath&#125;/]&#123;resourceType&#125;/&#123;resourceName&#125;'</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The filter to apply on the operation. Use $filter=atScope() to return all role assignments at or above the scope. Use $filter=principalId eq &#123;id&#125; to return all role assignments at, above or below the scope for the specified principal.</td>
</tr>
<tr id="parameter-$skipToken">
    <td><CopyableCode code="$skipToken" /></td>
    <td><code>string</code></td>
    <td>The skipToken to apply on the operation. Use $skipToken=&#123;skiptoken&#125; to return paged role assignments following the skipToken passed. Only supported on provider level calls.</td>
</tr>
<tr id="parameter-tenantId">
    <td><CopyableCode code="tenantId" /></td>
    <td><code>string</code></td>
    <td>Tenant ID for cross-tenant request</td>
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
        { label: 'list_for_subscription', value: 'list_for_subscription' },
        { label: 'list_for_scope', value: 'list_for_scope' },
        { label: 'get_by_id', value: 'get_by_id' }
    ]}
>
<TabItem value="list_for_resource">

List all role assignments that apply to a resource.

```sql
SELECT
id,
name,
properties,
type
FROM azure.authorization.role_assignments
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND resourceProviderNamespace = '{{ resourceProviderNamespace }}' -- required
AND resourceType = '{{ resourceType }}' -- required
AND resourceName = '{{ resourceName }}' -- required
AND $filter = '{{ $filter }}'
AND tenantId = '{{ tenantId }}'
;
```
</TabItem>
<TabItem value="list_for_resource_group">

List all role assignments that apply to a resource group.

```sql
SELECT
id,
name,
properties,
type
FROM azure.authorization.role_assignments
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND $filter = '{{ $filter }}'
AND tenantId = '{{ tenantId }}'
;
```
</TabItem>
<TabItem value="get">

Get a role assignment by scope and name.

```sql
SELECT
id,
name,
properties,
type
FROM azure.authorization.role_assignments
WHERE scope = '{{ scope }}' -- required
AND roleAssignmentName = '{{ roleAssignmentName }}' -- required
AND tenantId = '{{ tenantId }}'
;
```
</TabItem>
<TabItem value="list_for_subscription">

List all role assignments that apply to a subscription.

```sql
SELECT
id,
name,
properties,
type
FROM azure.authorization.role_assignments
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND $filter = '{{ $filter }}'
AND tenantId = '{{ tenantId }}'
;
```
</TabItem>
<TabItem value="list_for_scope">

List all role assignments that apply to a scope.

```sql
SELECT
id,
name,
properties,
type
FROM azure.authorization.role_assignments
WHERE scope = '{{ scope }}' -- required
AND $filter = '{{ $filter }}'
AND tenantId = '{{ tenantId }}'
AND $skipToken = '{{ $skipToken }}'
;
```
</TabItem>
<TabItem value="get_by_id">

Get a role assignment by ID.

```sql
SELECT
id,
name,
properties,
type
FROM azure.authorization.role_assignments
WHERE roleAssignmentId = '{{ roleAssignmentId }}' -- required
AND tenantId = '{{ tenantId }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'create_by_id', value: 'create_by_id' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

Create or update a role assignment by scope and name.

```sql
INSERT INTO azure.authorization.role_assignments (
data__properties,
scope,
roleAssignmentName
)
SELECT 
'{{ properties }}' /* required */,
'{{ scope }}',
'{{ roleAssignmentName }}'
RETURNING
id,
name,
properties,
type
;
```
</TabItem>
<TabItem value="create_by_id">

Create or update a role assignment by ID.

```sql
INSERT INTO azure.authorization.role_assignments (
data__properties,
roleAssignmentId
)
SELECT 
'{{ properties }}' /* required */,
'{{ roleAssignmentId }}'
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
- name: role_assignments
  props:
    - name: scope
      value: string
      description: Required parameter for the role_assignments resource.
    - name: roleAssignmentName
      value: string
      description: Required parameter for the role_assignments resource.
    - name: roleAssignmentId
      value: string
      description: Required parameter for the role_assignments resource.
    - name: properties
      value: object
      description: |
        Role assignment properties.
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete"
    values={[
        { label: 'delete', value: 'delete' },
        { label: 'delete_by_id', value: 'delete_by_id' }
    ]}
>
<TabItem value="delete">

Delete a role assignment by scope and name.

```sql
DELETE FROM azure.authorization.role_assignments
WHERE scope = '{{ scope }}' --required
AND roleAssignmentName = '{{ roleAssignmentName }}' --required
AND tenantId = '{{ tenantId }}'
;
```
</TabItem>
<TabItem value="delete_by_id">

Delete a role assignment by ID.

```sql
DELETE FROM azure.authorization.role_assignments
WHERE roleAssignmentId = '{{ roleAssignmentId }}' --required
AND tenantId = '{{ tenantId }}'
;
```
</TabItem>
</Tabs>
