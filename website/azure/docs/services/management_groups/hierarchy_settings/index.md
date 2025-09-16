--- 
title: hierarchy_settings
hide_title: false
hide_table_of_contents: false
keywords:
  - hierarchy_settings
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

Creates, updates, deletes, gets or lists a <code>hierarchy_settings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>hierarchy_settings</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.management_groups.hierarchy_settings" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' },
        { label: 'get', value: 'get' }
    ]}
>
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
    <td>The fully qualified ID for the settings object.  For example, /providers/Microsoft.Management/managementGroups/0000000-0000-0000-0000-000000000000/settings/default.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the object. In this case, default.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The generic properties of hierarchy settings. (title: Properties)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource.  For example, Microsoft.Management/managementGroups/settings.</td>
</tr>
</tbody>
</table>
</TabItem>
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
    <td>The fully qualified ID for the settings object.  For example, /providers/Microsoft.Management/managementGroups/0000000-0000-0000-0000-000000000000/settings/default.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the object. In this case, default.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The generic properties of hierarchy settings. (title: Properties)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource.  For example, Microsoft.Management/managementGroups/settings.</td>
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
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-groupId"><code>groupId</code></a></td>
    <td></td>
    <td>Gets all the hierarchy settings defined at the Management Group level. Settings can only be set on the root Management Group of the hierarchy.<br /></td>
</tr>
<tr>
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-groupId"><code>groupId</code></a></td>
    <td></td>
    <td>Gets the hierarchy settings defined at the Management Group level. Settings can only be set on the root Management Group of the hierarchy.<br /></td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-groupId"><code>groupId</code></a></td>
    <td></td>
    <td>Creates or updates the hierarchy settings defined at the Management Group level.<br /></td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-groupId"><code>groupId</code></a></td>
    <td></td>
    <td>Updates the hierarchy settings defined at the Management Group level.<br /></td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-groupId"><code>groupId</code></a></td>
    <td></td>
    <td>Deletes the hierarchy settings defined at the Management Group level.<br /></td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' },
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="list">

Gets all the hierarchy settings defined at the Management Group level. Settings can only be set on the root Management Group of the hierarchy.<br />

```sql
SELECT
id,
name,
properties,
type
FROM azure.management_groups.hierarchy_settings
WHERE groupId = '{{ groupId }}' -- required
;
```
</TabItem>
<TabItem value="get">

Gets the hierarchy settings defined at the Management Group level. Settings can only be set on the root Management Group of the hierarchy.<br />

```sql
SELECT
id,
name,
properties,
type
FROM azure.management_groups.hierarchy_settings
WHERE groupId = '{{ groupId }}' -- required
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

Creates or updates the hierarchy settings defined at the Management Group level.<br />

```sql
INSERT INTO azure.management_groups.hierarchy_settings (
data__properties,
groupId
)
SELECT 
'{{ properties }}',
'{{ groupId }}'
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
- name: hierarchy_settings
  props:
    - name: groupId
      value: string
      description: Required parameter for the hierarchy_settings resource.
    - name: properties
      value: object
      description: |
        The properties of the request to create or update Management Group settings
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

Updates the hierarchy settings defined at the Management Group level.<br />

```sql
UPDATE azure.management_groups.hierarchy_settings
SET 
data__properties = '{{ properties }}'
WHERE 
groupId = '{{ groupId }}' --required
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

Deletes the hierarchy settings defined at the Management Group level.<br />

```sql
DELETE FROM azure.management_groups.hierarchy_settings
WHERE groupId = '{{ groupId }}' --required
;
```
</TabItem>
</Tabs>
