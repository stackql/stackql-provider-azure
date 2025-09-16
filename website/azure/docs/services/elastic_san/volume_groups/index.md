--- 
title: volume_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - volume_groups
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

Creates, updates, deletes, gets or lists a <code>volume_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>volume_groups</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.elastic_san.volume_groups" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_elastic_san', value: 'list_by_elastic_san' }
    ]}
>
<TabItem value="get">

Operation completed successfully; retrieved iSCSI Target.

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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Identity for the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of VolumeGroup.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_elastic_san">

OK -- Operation completed successfully; retrieved Volume Group List.

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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Identity for the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of VolumeGroup.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-elasticSanName"><code>elasticSanName</code></a>, <a href="#parameter-volumeGroupName"><code>volumeGroupName</code></a></td>
    <td></td>
    <td>Get an VolumeGroups.</td>
</tr>
<tr>
    <td><a href="#list_by_elastic_san"><CopyableCode code="list_by_elastic_san" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-elasticSanName"><code>elasticSanName</code></a></td>
    <td></td>
    <td>List VolumeGroups.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-elasticSanName"><code>elasticSanName</code></a>, <a href="#parameter-volumeGroupName"><code>volumeGroupName</code></a></td>
    <td></td>
    <td>Create a Volume Group.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-elasticSanName"><code>elasticSanName</code></a>, <a href="#parameter-volumeGroupName"><code>volumeGroupName</code></a></td>
    <td></td>
    <td>Update an VolumeGroup.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-elasticSanName"><code>elasticSanName</code></a>, <a href="#parameter-volumeGroupName"><code>volumeGroupName</code></a></td>
    <td></td>
    <td>Delete an VolumeGroup.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_elastic_san', value: 'list_by_elastic_san' }
    ]}
>
<TabItem value="get">

Get an VolumeGroups.

```sql
SELECT
identity,
properties
FROM azure.elastic_san.volume_groups
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND elasticSanName = '{{ elasticSanName }}' -- required
AND volumeGroupName = '{{ volumeGroupName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_elastic_san">

List VolumeGroups.

```sql
SELECT
identity,
properties
FROM azure.elastic_san.volume_groups
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND elasticSanName = '{{ elasticSanName }}' -- required
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

Create a Volume Group.

```sql
INSERT INTO azure.elastic_san.volume_groups (
data__identity,
data__properties,
subscriptionId,
resourceGroupName,
elasticSanName,
volumeGroupName
)
SELECT 
'{{ identity }}',
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ elasticSanName }}',
'{{ volumeGroupName }}'
RETURNING
identity,
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: volume_groups
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the volume_groups resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the volume_groups resource.
    - name: elasticSanName
      value: string
      description: Required parameter for the volume_groups resource.
    - name: volumeGroupName
      value: string
      description: Required parameter for the volume_groups resource.
    - name: identity
      value: object
      description: |
        Identity for the resource.
    - name: properties
      value: object
      description: |
        Properties of VolumeGroup.
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

Update an VolumeGroup.

```sql
UPDATE azure.elastic_san.volume_groups
SET 
data__identity = '{{ identity }}',
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND elasticSanName = '{{ elasticSanName }}' --required
AND volumeGroupName = '{{ volumeGroupName }}' --required
RETURNING
identity,
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

Delete an VolumeGroup.

```sql
DELETE FROM azure.elastic_san.volume_groups
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND elasticSanName = '{{ elasticSanName }}' --required
AND volumeGroupName = '{{ volumeGroupName }}' --required
;
```
</TabItem>
</Tabs>
