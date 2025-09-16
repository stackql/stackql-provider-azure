--- 
title: management_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - management_groups
  - management_groups
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

Creates, updates, deletes, gets or lists a <code>management_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>management_groups</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.management_groups.management_groups" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
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
    <td>The fully qualified ID for the management group.  For example, /providers/Microsoft.Management/managementGroups/0000000-0000-0000-0000-000000000000</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the management group. For example, 00000000-0000-0000-0000-000000000000</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The generic properties of a management group. (title: Properties)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource.  For example, Microsoft.Management/managementGroups</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

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
    <td>The fully qualified ID for the management group.  For example, /providers/Microsoft.Management/managementGroups/0000000-0000-0000-0000-000000000000</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the management group. For example, 00000000-0000-0000-0000-000000000000</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The generic properties of a management group. (title: Properties)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. For example, Microsoft.Management/managementGroups</td>
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
    <td><a href="#parameter-groupId"><code>groupId</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a>, <a href="#parameter-$recurse"><code>$recurse</code></a>, <a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-Cache-Control"><code>Cache-Control</code></a></td>
    <td>Get the details of the management group.<br /></td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td><a href="#parameter-Cache-Control"><code>Cache-Control</code></a>, <a href="#parameter-$skiptoken"><code>$skiptoken</code></a></td>
    <td>List management groups for the authenticated user.<br /></td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-groupId"><code>groupId</code></a></td>
    <td><a href="#parameter-Cache-Control"><code>Cache-Control</code></a></td>
    <td>Create or update a management group.<br />If a management group is already created and a subsequent create request is issued with different properties, the management group properties will be updated.<br /></td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-groupId"><code>groupId</code></a></td>
    <td><a href="#parameter-Cache-Control"><code>Cache-Control</code></a></td>
    <td>Update a management group.<br /></td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-groupId"><code>groupId</code></a></td>
    <td><a href="#parameter-Cache-Control"><code>Cache-Control</code></a></td>
    <td>Delete management group.<br />If a management group contains child resources, the request will fail.<br /></td>
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
<tr id="parameter-groupId">
    <td><CopyableCode code="groupId" /></td>
    <td><code>string</code></td>
    <td>Management Group ID.</td>
</tr>
<tr id="parameter-$expand">
    <td><CopyableCode code="$expand" /></td>
    <td><code>string</code></td>
    <td>The $expand=children query string parameter allows clients to request inclusion of children in the response payload.  $expand=path includes the path from the root group to the current group.  $expand=ancestors includes the ancestor Ids of the current group.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>A filter which allows the exclusion of subscriptions from results (i.e. '$filter=children.childType ne Subscription')</td>
</tr>
<tr id="parameter-$recurse">
    <td><CopyableCode code="$recurse" /></td>
    <td><code>boolean</code></td>
    <td>The $recurse=true query string parameter allows clients to request inclusion of entire hierarchy in the response payload. Note that  $expand=children must be passed up if $recurse is set to true.</td>
</tr>
<tr id="parameter-$skiptoken">
    <td><CopyableCode code="$skiptoken" /></td>
    <td><code>string</code></td>
    <td>Page continuation token is only used if a previous operation returned a partial result.  If a previous response contains a nextLink element, the value of the nextLink element will include a token parameter that specifies a starting point to use for subsequent calls. </td>
</tr>
<tr id="parameter-Cache-Control">
    <td><CopyableCode code="Cache-Control" /></td>
    <td><code>string</code></td>
    <td>Indicates whether the request should utilize any caches. Populate the header with 'no-cache' value to bypass existing caches.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Get the details of the management group.<br />

```sql
SELECT
id,
name,
properties,
type
FROM azure.management_groups.management_groups
WHERE groupId = '{{ groupId }}' -- required
AND $expand = '{{ $expand }}'
AND $recurse = '{{ $recurse }}'
AND $filter = '{{ $filter }}'
AND Cache-Control = '{{ Cache-Control }}'
;
```
</TabItem>
<TabItem value="list">

List management groups for the authenticated user.<br />

```sql
SELECT
id,
name,
properties,
type
FROM azure.management_groups.management_groups
WHERE Cache-Control = '{{ Cache-Control }}'
AND $skiptoken = '{{ $skiptoken }}'
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

Create or update a management group.<br />If a management group is already created and a subsequent create request is issued with different properties, the management group properties will be updated.<br />

```sql
INSERT INTO azure.management_groups.management_groups (
data__name,
data__properties,
groupId,
Cache-Control
)
SELECT 
'{{ name }}',
'{{ properties }}',
'{{ groupId }}',
'{{ Cache-Control }}'
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
- name: management_groups
  props:
    - name: groupId
      value: string
      description: Required parameter for the management_groups resource.
    - name: name
      value: string
      description: |
        The name of the management group. For example, 00000000-0000-0000-0000-000000000000
    - name: properties
      value: object
      description: |
        The generic properties of a management group used during creation.
    - name: Cache-Control
      value: string
      description: Indicates whether the request should utilize any caches. Populate the header with 'no-cache' value to bypass existing caches.
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update"
    values={[
        { label: 'update', value: 'update' }
    ]}
>
<TabItem value="update">

Update a management group.<br />

```sql
UPDATE azure.management_groups.management_groups
SET 
data__displayName = '{{ displayName }}',
data__parentGroupId = '{{ parentGroupId }}'
WHERE 
groupId = '{{ groupId }}' --required
AND Cache-Control = '{{ Cache-Control}}'
RETURNING
id,
name,
properties,
type;
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

Delete management group.<br />If a management group contains child resources, the request will fail.<br />

```sql
DELETE FROM azure.management_groups.management_groups
WHERE groupId = '{{ groupId }}' --required
AND Cache-Control = '{{ Cache-Control }}'
;
```
</TabItem>
</Tabs>
