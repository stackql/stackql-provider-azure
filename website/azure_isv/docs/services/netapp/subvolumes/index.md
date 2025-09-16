--- 
title: subvolumes
hide_title: false
hide_table_of_contents: false
keywords:
  - subvolumes
  - netapp
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>subvolumes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>subvolumes</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.netapp.subvolumes" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_volume', value: 'list_by_volume' }
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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Subvolume Properties</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_volume">

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
    <td>Subvolume Properties</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-poolName"><code>poolName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a>, <a href="#parameter-subvolumeName"><code>subvolumeName</code></a></td>
    <td></td>
    <td>Returns the path associated with the subvolumeName provided</td>
</tr>
<tr>
    <td><a href="#list_by_volume"><CopyableCode code="list_by_volume" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-poolName"><code>poolName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a></td>
    <td></td>
    <td>Returns a list of the subvolumes in the volume</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-poolName"><code>poolName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a>, <a href="#parameter-subvolumeName"><code>subvolumeName</code></a></td>
    <td></td>
    <td>Creates a subvolume in the path or clones the subvolume mentioned in the parentPath</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-poolName"><code>poolName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a>, <a href="#parameter-subvolumeName"><code>subvolumeName</code></a></td>
    <td></td>
    <td>Patch a subvolume</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-poolName"><code>poolName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a>, <a href="#parameter-subvolumeName"><code>subvolumeName</code></a></td>
    <td></td>
    <td>Delete subvolume</td>
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
<tr id="parameter-accountName">
    <td><CopyableCode code="accountName" /></td>
    <td><code>string</code></td>
    <td>The name of the NetApp account</td>
</tr>
<tr id="parameter-poolName">
    <td><CopyableCode code="poolName" /></td>
    <td><code>string</code></td>
    <td>The name of the capacity pool</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-subvolumeName">
    <td><CopyableCode code="subvolumeName" /></td>
    <td><code>string</code></td>
    <td>The name of the subvolume.</td>
</tr>
<tr id="parameter-volumeName">
    <td><CopyableCode code="volumeName" /></td>
    <td><code>string</code></td>
    <td>The name of the volume</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_volume', value: 'list_by_volume' }
    ]}
>
<TabItem value="get">

Returns the path associated with the subvolumeName provided

```sql
SELECT
properties
FROM azure_isv.netapp.subvolumes
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND poolName = '{{ poolName }}' -- required
AND volumeName = '{{ volumeName }}' -- required
AND subvolumeName = '{{ subvolumeName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_volume">

Returns a list of the subvolumes in the volume

```sql
SELECT
properties
FROM azure_isv.netapp.subvolumes
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND poolName = '{{ poolName }}' -- required
AND volumeName = '{{ volumeName }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

Creates a subvolume in the path or clones the subvolume mentioned in the parentPath

```sql
INSERT INTO azure_isv.netapp.subvolumes (
data__properties,
subscriptionId,
resourceGroupName,
accountName,
poolName,
volumeName,
subvolumeName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ accountName }}',
'{{ poolName }}',
'{{ volumeName }}',
'{{ subvolumeName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: subvolumes
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the subvolumes resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the subvolumes resource.
    - name: accountName
      value: string
      description: Required parameter for the subvolumes resource.
    - name: poolName
      value: string
      description: Required parameter for the subvolumes resource.
    - name: volumeName
      value: string
      description: Required parameter for the subvolumes resource.
    - name: subvolumeName
      value: string
      description: Required parameter for the subvolumes resource.
    - name: properties
      value: object
      description: |
        Subvolume Properties
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

Patch a subvolume

```sql
UPDATE azure_isv.netapp.subvolumes
SET 
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND accountName = '{{ accountName }}' --required
AND poolName = '{{ poolName }}' --required
AND volumeName = '{{ volumeName }}' --required
AND subvolumeName = '{{ subvolumeName }}' --required
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

Delete subvolume

```sql
DELETE FROM azure_isv.netapp.subvolumes
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND accountName = '{{ accountName }}' --required
AND poolName = '{{ poolName }}' --required
AND volumeName = '{{ volumeName }}' --required
AND subvolumeName = '{{ subvolumeName }}' --required
;
```
</TabItem>
</Tabs>
