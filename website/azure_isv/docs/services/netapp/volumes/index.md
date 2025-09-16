--- 
title: volumes
hide_title: false
hide_table_of_contents: false
keywords:
  - volumes
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

Creates, updates, deletes, gets or lists a <code>volumes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>volumes</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.netapp.volumes" /></td></tr>
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
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Volume properties</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="zones" /></td>
    <td><code>array</code></td>
    <td>Availability Zone</td>
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
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Volume properties</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="zones" /></td>
    <td><code>array</code></td>
    <td>Availability Zone</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-poolName"><code>poolName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a></td>
    <td></td>
    <td>Get the details of the specified volume</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-poolName"><code>poolName</code></a></td>
    <td></td>
    <td>List all volumes within the capacity pool</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-poolName"><code>poolName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a>, <a href="#parameter-data__location"><code>data__location</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Create or update the specified volume within the capacity pool</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-poolName"><code>poolName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a></td>
    <td></td>
    <td>Patch the specified volume</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-poolName"><code>poolName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a></td>
    <td><a href="#parameter-forceDelete"><code>forceDelete</code></a></td>
    <td>Delete the specified volume</td>
</tr>
<tr>
    <td><a href="#populate_availability_zone"><CopyableCode code="populate_availability_zone" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-poolName"><code>poolName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a></td>
    <td></td>
    <td>This operation will populate availability zone information for a volume</td>
</tr>
<tr>
    <td><a href="#revert"><CopyableCode code="revert" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-poolName"><code>poolName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a></td>
    <td></td>
    <td>Revert a volume to the snapshot specified in the body</td>
</tr>
<tr>
    <td><a href="#reset_cifs_password"><CopyableCode code="reset_cifs_password" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-poolName"><code>poolName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a></td>
    <td></td>
    <td>Reset cifs password from volume</td>
</tr>
<tr>
    <td><a href="#break_file_locks"><CopyableCode code="break_file_locks" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-poolName"><code>poolName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a></td>
    <td></td>
    <td>Break all the file locks on a volume</td>
</tr>
<tr>
    <td><a href="#break_replication"><CopyableCode code="break_replication" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-poolName"><code>poolName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a></td>
    <td></td>
    <td>Break the replication connection on the destination volume</td>
</tr>
<tr>
    <td><a href="#reestablish_replication"><CopyableCode code="reestablish_replication" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-poolName"><code>poolName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a></td>
    <td></td>
    <td>Re-establish a previously deleted replication between 2 volumes that have a common ad-hoc or policy-based snapshots</td>
</tr>
<tr>
    <td><a href="#replication_status"><CopyableCode code="replication_status" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-poolName"><code>poolName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a></td>
    <td></td>
    <td>Get the status of the replication</td>
</tr>
<tr>
    <td><a href="#resync_replication"><CopyableCode code="resync_replication" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-poolName"><code>poolName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a></td>
    <td></td>
    <td>Resync the connection on the destination volume. If the operation is ran on the source volume it will reverse-resync the connection and sync from destination to source.</td>
</tr>
<tr>
    <td><a href="#authorize_replication"><CopyableCode code="authorize_replication" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-poolName"><code>poolName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a></td>
    <td></td>
    <td>Authorize the replication connection on the source volume</td>
</tr>
<tr>
    <td><a href="#re_initialize_replication"><CopyableCode code="re_initialize_replication" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-poolName"><code>poolName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a></td>
    <td></td>
    <td>Re-Initializes the replication connection on the destination volume</td>
</tr>
<tr>
    <td><a href="#pool_change"><CopyableCode code="pool_change" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-poolName"><code>poolName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a>, <a href="#parameter-newPoolResourceId"><code>newPoolResourceId</code></a></td>
    <td></td>
    <td>Moves volume to another pool</td>
</tr>
<tr>
    <td><a href="#relocate"><CopyableCode code="relocate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-poolName"><code>poolName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a></td>
    <td></td>
    <td>Relocates volume to a new stamp</td>
</tr>
<tr>
    <td><a href="#finalize_relocation"><CopyableCode code="finalize_relocation" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-poolName"><code>poolName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a></td>
    <td></td>
    <td>Finalizes the relocation of the volume and cleans up the old volume.</td>
</tr>
<tr>
    <td><a href="#revert_relocation"><CopyableCode code="revert_relocation" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-poolName"><code>poolName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a></td>
    <td></td>
    <td>Reverts the volume relocation process, cleans up the new volume and starts using the former-existing volume.</td>
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
<tr id="parameter-volumeName">
    <td><CopyableCode code="volumeName" /></td>
    <td><code>string</code></td>
    <td>The name of the volume</td>
</tr>
<tr id="parameter-forceDelete">
    <td><CopyableCode code="forceDelete" /></td>
    <td><code>boolean</code></td>
    <td>An option to force delete the volume. Will cleanup resources connected to the particular volume</td>
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

Get the details of the specified volume

```sql
SELECT
etag,
location,
properties,
tags,
zones
FROM azure_isv.netapp.volumes
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND poolName = '{{ poolName }}' -- required
AND volumeName = '{{ volumeName }}' -- required
;
```
</TabItem>
<TabItem value="list">

List all volumes within the capacity pool

```sql
SELECT
etag,
location,
properties,
tags,
zones
FROM azure_isv.netapp.volumes
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND poolName = '{{ poolName }}' -- required
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

Create or update the specified volume within the capacity pool

```sql
INSERT INTO azure_isv.netapp.volumes (
data__tags,
data__location,
data__zones,
data__properties,
subscriptionId,
resourceGroupName,
accountName,
poolName,
volumeName
)
SELECT 
'{{ tags }}',
'{{ location }}' /* required */,
'{{ zones }}',
'{{ properties }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ accountName }}',
'{{ poolName }}',
'{{ volumeName }}'
RETURNING
etag,
location,
properties,
tags,
zones
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: volumes
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the volumes resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the volumes resource.
    - name: accountName
      value: string
      description: Required parameter for the volumes resource.
    - name: poolName
      value: string
      description: Required parameter for the volumes resource.
    - name: volumeName
      value: string
      description: Required parameter for the volumes resource.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        The geo-location where the resource lives
    - name: zones
      value: array
      description: |
        Availability Zone
    - name: properties
      value: object
      description: |
        Volume properties
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

Patch the specified volume

```sql
UPDATE azure_isv.netapp.volumes
SET 
data__location = '{{ location }}',
data__tags = '{{ tags }}',
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND accountName = '{{ accountName }}' --required
AND poolName = '{{ poolName }}' --required
AND volumeName = '{{ volumeName }}' --required
RETURNING
etag,
location,
properties,
tags,
zones;
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

Delete the specified volume

```sql
DELETE FROM azure_isv.netapp.volumes
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND accountName = '{{ accountName }}' --required
AND poolName = '{{ poolName }}' --required
AND volumeName = '{{ volumeName }}' --required
AND forceDelete = '{{ forceDelete }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="populate_availability_zone"
    values={[
        { label: 'populate_availability_zone', value: 'populate_availability_zone' },
        { label: 'revert', value: 'revert' },
        { label: 'reset_cifs_password', value: 'reset_cifs_password' },
        { label: 'break_file_locks', value: 'break_file_locks' },
        { label: 'break_replication', value: 'break_replication' },
        { label: 'reestablish_replication', value: 'reestablish_replication' },
        { label: 'replication_status', value: 'replication_status' },
        { label: 'resync_replication', value: 'resync_replication' },
        { label: 'authorize_replication', value: 'authorize_replication' },
        { label: 're_initialize_replication', value: 're_initialize_replication' },
        { label: 'pool_change', value: 'pool_change' },
        { label: 'relocate', value: 'relocate' },
        { label: 'finalize_relocation', value: 'finalize_relocation' },
        { label: 'revert_relocation', value: 'revert_relocation' }
    ]}
>
<TabItem value="populate_availability_zone">

This operation will populate availability zone information for a volume

```sql
EXEC azure_isv.netapp.volumes.populate_availability_zone 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@poolName='{{ poolName }}' --required, 
@volumeName='{{ volumeName }}' --required
;
```
</TabItem>
<TabItem value="revert">

Revert a volume to the snapshot specified in the body

```sql
EXEC azure_isv.netapp.volumes.revert 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@poolName='{{ poolName }}' --required, 
@volumeName='{{ volumeName }}' --required 
@@json=
'{
"snapshotId": "{{ snapshotId }}"
}'
;
```
</TabItem>
<TabItem value="reset_cifs_password">

Reset cifs password from volume

```sql
EXEC azure_isv.netapp.volumes.reset_cifs_password 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@poolName='{{ poolName }}' --required, 
@volumeName='{{ volumeName }}' --required
;
```
</TabItem>
<TabItem value="break_file_locks">

Break all the file locks on a volume

```sql
EXEC azure_isv.netapp.volumes.break_file_locks 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@poolName='{{ poolName }}' --required, 
@volumeName='{{ volumeName }}' --required 
@@json=
'{
"clientIp": "{{ clientIp }}", 
"confirmRunningDisruptiveOperation": {{ confirmRunningDisruptiveOperation }}
}'
;
```
</TabItem>
<TabItem value="break_replication">

Break the replication connection on the destination volume

```sql
EXEC azure_isv.netapp.volumes.break_replication 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@poolName='{{ poolName }}' --required, 
@volumeName='{{ volumeName }}' --required 
@@json=
'{
"forceBreakReplication": {{ forceBreakReplication }}
}'
;
```
</TabItem>
<TabItem value="reestablish_replication">

Re-establish a previously deleted replication between 2 volumes that have a common ad-hoc or policy-based snapshots

```sql
EXEC azure_isv.netapp.volumes.reestablish_replication 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@poolName='{{ poolName }}' --required, 
@volumeName='{{ volumeName }}' --required 
@@json=
'{
"sourceVolumeId": "{{ sourceVolumeId }}"
}'
;
```
</TabItem>
<TabItem value="replication_status">

Get the status of the replication

```sql
EXEC azure_isv.netapp.volumes.replication_status 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@poolName='{{ poolName }}' --required, 
@volumeName='{{ volumeName }}' --required
;
```
</TabItem>
<TabItem value="resync_replication">

Resync the connection on the destination volume. If the operation is ran on the source volume it will reverse-resync the connection and sync from destination to source.

```sql
EXEC azure_isv.netapp.volumes.resync_replication 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@poolName='{{ poolName }}' --required, 
@volumeName='{{ volumeName }}' --required
;
```
</TabItem>
<TabItem value="authorize_replication">

Authorize the replication connection on the source volume

```sql
EXEC azure_isv.netapp.volumes.authorize_replication 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@poolName='{{ poolName }}' --required, 
@volumeName='{{ volumeName }}' --required 
@@json=
'{
"remoteVolumeResourceId": "{{ remoteVolumeResourceId }}"
}'
;
```
</TabItem>
<TabItem value="re_initialize_replication">

Re-Initializes the replication connection on the destination volume

```sql
EXEC azure_isv.netapp.volumes.re_initialize_replication 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@poolName='{{ poolName }}' --required, 
@volumeName='{{ volumeName }}' --required
;
```
</TabItem>
<TabItem value="pool_change">

Moves volume to another pool

```sql
EXEC azure_isv.netapp.volumes.pool_change 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@poolName='{{ poolName }}' --required, 
@volumeName='{{ volumeName }}' --required 
@@json=
'{
"newPoolResourceId": "{{ newPoolResourceId }}"
}'
;
```
</TabItem>
<TabItem value="relocate">

Relocates volume to a new stamp

```sql
EXEC azure_isv.netapp.volumes.relocate 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@poolName='{{ poolName }}' --required, 
@volumeName='{{ volumeName }}' --required 
@@json=
'{
"creationToken": "{{ creationToken }}"
}'
;
```
</TabItem>
<TabItem value="finalize_relocation">

Finalizes the relocation of the volume and cleans up the old volume.

```sql
EXEC azure_isv.netapp.volumes.finalize_relocation 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@poolName='{{ poolName }}' --required, 
@volumeName='{{ volumeName }}' --required
;
```
</TabItem>
<TabItem value="revert_relocation">

Reverts the volume relocation process, cleans up the new volume and starts using the former-existing volume.

```sql
EXEC azure_isv.netapp.volumes.revert_relocation 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@poolName='{{ poolName }}' --required, 
@volumeName='{{ volumeName }}' --required
;
```
</TabItem>
</Tabs>
