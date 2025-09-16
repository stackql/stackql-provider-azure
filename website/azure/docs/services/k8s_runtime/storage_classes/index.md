--- 
title: storage_classes
hide_title: false
hide_table_of_contents: false
keywords:
  - storage_classes
  - k8s_runtime
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

Creates, updates, deletes, gets or lists a <code>storage_classes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>storage_classes</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.k8s_runtime.storage_classes" /></td></tr>
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

Azure operation completed successfully.

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
    <td>The resource-specific properties for this resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Azure operation completed successfully.

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
    <td>The resource-specific properties for this resource.</td>
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
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-storageClassName"><code>storageClassName</code></a></td>
    <td></td>
    <td>Get a StorageClassResource</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a></td>
    <td></td>
    <td>List StorageClassResource resources by parent</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-storageClassName"><code>storageClassName</code></a></td>
    <td></td>
    <td>Create a StorageClassResource</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-storageClassName"><code>storageClassName</code></a></td>
    <td></td>
    <td>Update a StorageClassResource</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-storageClassName"><code>storageClassName</code></a></td>
    <td></td>
    <td>Delete a StorageClassResource</td>
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
<tr id="parameter-resourceUri">
    <td><CopyableCode code="resourceUri" /></td>
    <td><code>string</code></td>
    <td>The fully qualified Azure Resource manager identifier of the resource.</td>
</tr>
<tr id="parameter-storageClassName">
    <td><CopyableCode code="storageClassName" /></td>
    <td><code>string</code></td>
    <td>The name of the the storage class</td>
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

Get a StorageClassResource

```sql
SELECT
properties
FROM azure.k8s_runtime.storage_classes
WHERE resourceUri = '{{ resourceUri }}' -- required
AND storageClassName = '{{ storageClassName }}' -- required
;
```
</TabItem>
<TabItem value="list">

List StorageClassResource resources by parent

```sql
SELECT
properties
FROM azure.k8s_runtime.storage_classes
WHERE resourceUri = '{{ resourceUri }}' -- required
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

Create a StorageClassResource

```sql
INSERT INTO azure.k8s_runtime.storage_classes (
data__properties,
resourceUri,
storageClassName
)
SELECT 
'{{ properties }}',
'{{ resourceUri }}',
'{{ storageClassName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: storage_classes
  props:
    - name: resourceUri
      value: string
      description: Required parameter for the storage_classes resource.
    - name: storageClassName
      value: string
      description: Required parameter for the storage_classes resource.
    - name: properties
      value: object
      description: |
        The resource-specific properties for this resource.
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

Update a StorageClassResource

```sql
UPDATE azure.k8s_runtime.storage_classes
SET 
data__properties = '{{ properties }}'
WHERE 
resourceUri = '{{ resourceUri }}' --required
AND storageClassName = '{{ storageClassName }}' --required
RETURNING
properties;
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

Delete a StorageClassResource

```sql
DELETE FROM azure.k8s_runtime.storage_classes
WHERE resourceUri = '{{ resourceUri }}' --required
AND storageClassName = '{{ storageClassName }}' --required
;
```
</TabItem>
</Tabs>
