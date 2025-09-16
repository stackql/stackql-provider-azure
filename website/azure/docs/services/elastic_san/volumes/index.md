--- 
title: volumes
hide_title: false
hide_table_of_contents: false
keywords:
  - volumes
  - elastic_san
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

Creates, updates, deletes, gets or lists a <code>volumes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>volumes</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.elastic_san.volumes" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_volume_group', value: 'list_by_volume_group' }
    ]}
>
<TabItem value="get">

Operation completed successfully; retrieved Volume.

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
    <td>Properties of Volume.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_volume_group">

Operation completed successfully; retrieved volumes in a volume group.

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
    <td>Properties of Volume.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-elasticSanName"><code>elasticSanName</code></a>, <a href="#parameter-volumeGroupName"><code>volumeGroupName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a></td>
    <td></td>
    <td>Get an Volume.</td>
</tr>
<tr>
    <td><a href="#list_by_volume_group"><CopyableCode code="list_by_volume_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-elasticSanName"><code>elasticSanName</code></a>, <a href="#parameter-volumeGroupName"><code>volumeGroupName</code></a></td>
    <td></td>
    <td>List Volumes in a VolumeGroup.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-elasticSanName"><code>elasticSanName</code></a>, <a href="#parameter-volumeGroupName"><code>volumeGroupName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Create a Volume.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-elasticSanName"><code>elasticSanName</code></a>, <a href="#parameter-volumeGroupName"><code>volumeGroupName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a></td>
    <td></td>
    <td>Update an Volume.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-elasticSanName"><code>elasticSanName</code></a>, <a href="#parameter-volumeGroupName"><code>volumeGroupName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a></td>
    <td><a href="#parameter-x-ms-delete-snapshots"><code>x-ms-delete-snapshots</code></a>, <a href="#parameter-x-ms-force-delete"><code>x-ms-force-delete</code></a></td>
    <td>Delete an Volume.</td>
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
<tr id="parameter-elasticSanName">
    <td><CopyableCode code="elasticSanName" /></td>
    <td><code>string</code></td>
    <td>The name of the ElasticSan.</td>
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
<tr id="parameter-volumeGroupName">
    <td><CopyableCode code="volumeGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the VolumeGroup.</td>
</tr>
<tr id="parameter-volumeName">
    <td><CopyableCode code="volumeName" /></td>
    <td><code>string</code></td>
    <td>The name of the Volume.</td>
</tr>
<tr id="parameter-x-ms-delete-snapshots">
    <td><CopyableCode code="x-ms-delete-snapshots" /></td>
    <td><code>string</code></td>
    <td>Optional, used to delete snapshots under volume. Allowed value are only true or false. Default value is false.</td>
</tr>
<tr id="parameter-x-ms-force-delete">
    <td><CopyableCode code="x-ms-force-delete" /></td>
    <td><code>string</code></td>
    <td>Optional, used to delete volume if active sessions present. Allowed value are only true or false. Default value is false.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_volume_group', value: 'list_by_volume_group' }
    ]}
>
<TabItem value="get">

Get an Volume.

```sql
SELECT
properties
FROM azure.elastic_san.volumes
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND elasticSanName = '{{ elasticSanName }}' -- required
AND volumeGroupName = '{{ volumeGroupName }}' -- required
AND volumeName = '{{ volumeName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_volume_group">

List Volumes in a VolumeGroup.

```sql
SELECT
properties
FROM azure.elastic_san.volumes
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND elasticSanName = '{{ elasticSanName }}' -- required
AND volumeGroupName = '{{ volumeGroupName }}' -- required
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

Create a Volume.

```sql
INSERT INTO azure.elastic_san.volumes (
data__properties,
subscriptionId,
resourceGroupName,
elasticSanName,
volumeGroupName,
volumeName
)
SELECT 
'{{ properties }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ elasticSanName }}',
'{{ volumeGroupName }}',
'{{ volumeName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: volumes
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the volumes resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the volumes resource.
    - name: elasticSanName
      value: string
      description: Required parameter for the volumes resource.
    - name: volumeGroupName
      value: string
      description: Required parameter for the volumes resource.
    - name: volumeName
      value: string
      description: Required parameter for the volumes resource.
    - name: properties
      value: object
      description: |
        Properties of Volume.
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

Update an Volume.

```sql
UPDATE azure.elastic_san.volumes
SET 
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND elasticSanName = '{{ elasticSanName }}' --required
AND volumeGroupName = '{{ volumeGroupName }}' --required
AND volumeName = '{{ volumeName }}' --required
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

Delete an Volume.

```sql
DELETE FROM azure.elastic_san.volumes
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND elasticSanName = '{{ elasticSanName }}' --required
AND volumeGroupName = '{{ volumeGroupName }}' --required
AND volumeName = '{{ volumeName }}' --required
AND x-ms-delete-snapshots = '{{ x-ms-delete-snapshots }}'
AND x-ms-force-delete = '{{ x-ms-force-delete }}'
;
```
</TabItem>
</Tabs>
