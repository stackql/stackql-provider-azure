--- 
title: volume_snapshots
hide_title: false
hide_table_of_contents: false
keywords:
  - volume_snapshots
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

Creates, updates, deletes, gets or lists a <code>volume_snapshots</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>volume_snapshots</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.elastic_san.volume_snapshots" /></td></tr>
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

Operation completed successfully; retrieved Volume Snapshot.

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
    <td>Properties of Volume Snapshot.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_volume_group">

Operation completed successfully; retrieved snapshots in a volume group.

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
    <td>Properties of Volume Snapshot.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-elasticSanName"><code>elasticSanName</code></a>, <a href="#parameter-volumeGroupName"><code>volumeGroupName</code></a>, <a href="#parameter-snapshotName"><code>snapshotName</code></a></td>
    <td></td>
    <td>Get a Volume Snapshot.</td>
</tr>
<tr>
    <td><a href="#list_by_volume_group"><CopyableCode code="list_by_volume_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-elasticSanName"><code>elasticSanName</code></a>, <a href="#parameter-volumeGroupName"><code>volumeGroupName</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>List Snapshots in a VolumeGroup or List Snapshots by Volume (name) in a VolumeGroup using filter</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-elasticSanName"><code>elasticSanName</code></a>, <a href="#parameter-volumeGroupName"><code>volumeGroupName</code></a>, <a href="#parameter-snapshotName"><code>snapshotName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Create a Volume Snapshot.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-elasticSanName"><code>elasticSanName</code></a>, <a href="#parameter-volumeGroupName"><code>volumeGroupName</code></a>, <a href="#parameter-snapshotName"><code>snapshotName</code></a></td>
    <td></td>
    <td>Delete a Volume Snapshot.</td>
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
<tr id="parameter-snapshotName">
    <td><CopyableCode code="snapshotName" /></td>
    <td><code>string</code></td>
    <td>The name of the volume snapshot within the given volume group.</td>
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
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>Specify $filter='volumeName eq &lt;volume name&gt;' to filter on volume.</td>
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

Get a Volume Snapshot.

```sql
SELECT
properties
FROM azure.elastic_san.volume_snapshots
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND elasticSanName = '{{ elasticSanName }}' -- required
AND volumeGroupName = '{{ volumeGroupName }}' -- required
AND snapshotName = '{{ snapshotName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_volume_group">

List Snapshots in a VolumeGroup or List Snapshots by Volume (name) in a VolumeGroup using filter

```sql
SELECT
properties
FROM azure.elastic_san.volume_snapshots
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND elasticSanName = '{{ elasticSanName }}' -- required
AND volumeGroupName = '{{ volumeGroupName }}' -- required
AND $filter = '{{ $filter }}'
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

Create a Volume Snapshot.

```sql
INSERT INTO azure.elastic_san.volume_snapshots (
data__properties,
subscriptionId,
resourceGroupName,
elasticSanName,
volumeGroupName,
snapshotName
)
SELECT 
'{{ properties }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ elasticSanName }}',
'{{ volumeGroupName }}',
'{{ snapshotName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: volume_snapshots
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the volume_snapshots resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the volume_snapshots resource.
    - name: elasticSanName
      value: string
      description: Required parameter for the volume_snapshots resource.
    - name: volumeGroupName
      value: string
      description: Required parameter for the volume_snapshots resource.
    - name: snapshotName
      value: string
      description: Required parameter for the volume_snapshots resource.
    - name: properties
      value: object
      description: |
        Properties of Volume Snapshot.
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

Delete a Volume Snapshot.

```sql
DELETE FROM azure.elastic_san.volume_snapshots
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND elasticSanName = '{{ elasticSanName }}' --required
AND volumeGroupName = '{{ volumeGroupName }}' --required
AND snapshotName = '{{ snapshotName }}' --required
;
```
</TabItem>
</Tabs>
