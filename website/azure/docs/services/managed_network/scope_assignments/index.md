--- 
title: scope_assignments
hide_title: false
hide_table_of_contents: false
keywords:
  - scope_assignments
  - managed_network
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

Creates, updates, deletes, gets or lists a <code>scope_assignments</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>scope_assignments</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_network.scope_assignments" /></td></tr>
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

OK - Returns information about the scope assignment.

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
    <td>The Scope Assignment properties</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

OK - Returns information about the scope assignment.

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
    <td>The Scope Assignment properties</td>
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
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-scopeAssignmentName"><code>scopeAssignmentName</code></a></td>
    <td></td>
    <td>Get the specified scope assignment.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a></td>
    <td></td>
    <td>Get the specified scope assignment.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-scopeAssignmentName"><code>scopeAssignmentName</code></a></td>
    <td></td>
    <td>Creates a scope assignment.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-scopeAssignmentName"><code>scopeAssignmentName</code></a></td>
    <td></td>
    <td>Deletes a scope assignment.</td>
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
<tr id="parameter-scope">
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>The scope of the scope assignment to delete.</td>
</tr>
<tr id="parameter-scopeAssignmentName">
    <td><CopyableCode code="scopeAssignmentName" /></td>
    <td><code>string</code></td>
    <td>The name of the scope assignment to delete.</td>
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

Get the specified scope assignment.

```sql
SELECT
properties
FROM azure.managed_network.scope_assignments
WHERE scope = '{{ scope }}' -- required
AND scopeAssignmentName = '{{ scopeAssignmentName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Get the specified scope assignment.

```sql
SELECT
properties
FROM azure.managed_network.scope_assignments
WHERE scope = '{{ scope }}' -- required
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

Creates a scope assignment.

```sql
INSERT INTO azure.managed_network.scope_assignments (
data__properties,
scope,
scopeAssignmentName
)
SELECT 
'{{ properties }}',
'{{ scope }}',
'{{ scopeAssignmentName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: scope_assignments
  props:
    - name: scope
      value: string
      description: Required parameter for the scope_assignments resource.
    - name: scopeAssignmentName
      value: string
      description: Required parameter for the scope_assignments resource.
    - name: properties
      value: object
      description: |
        The Scope Assignment properties
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

Deletes a scope assignment.

```sql
DELETE FROM azure.managed_network.scope_assignments
WHERE scope = '{{ scope }}' --required
AND scopeAssignmentName = '{{ scopeAssignmentName }}' --required
;
```
</TabItem>
</Tabs>
