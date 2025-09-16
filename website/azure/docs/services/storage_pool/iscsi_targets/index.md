--- 
title: iscsi_targets
hide_title: false
hide_table_of_contents: false
keywords:
  - iscsi_targets
  - storage_pool
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

Creates, updates, deletes, gets or lists an <code>iscsi_targets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>iscsi_targets</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage_pool.iscsi_targets" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_disk_pool', value: 'list_by_disk_pool' }
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
    <td><CopyableCode code="managedBy" /></td>
    <td><code>string</code></td>
    <td>Azure resource id. Indicates if this resource is managed by another Azure resource.</td>
</tr>
<tr>
    <td><CopyableCode code="managedByExtended" /></td>
    <td><code>array</code></td>
    <td>List of Azure resource ids that manage this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties for iSCSI Target operations.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Resource metadata required by ARM RPC</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_disk_pool">

Operation completed successfully; retrieved iSCSI Targets in a Disk pool.

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
    <td><CopyableCode code="managedBy" /></td>
    <td><code>string</code></td>
    <td>Azure resource id. Indicates if this resource is managed by another Azure resource.</td>
</tr>
<tr>
    <td><CopyableCode code="managedByExtended" /></td>
    <td><code>array</code></td>
    <td>List of Azure resource ids that manage this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties for iSCSI Target operations.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Resource metadata required by ARM RPC</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-diskPoolName"><code>diskPoolName</code></a>, <a href="#parameter-iscsiTargetName"><code>iscsiTargetName</code></a></td>
    <td></td>
    <td>Get an iSCSI Target.</td>
</tr>
<tr>
    <td><a href="#list_by_disk_pool"><CopyableCode code="list_by_disk_pool" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-diskPoolName"><code>diskPoolName</code></a></td>
    <td></td>
    <td>Get iSCSI Targets in a Disk pool.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-diskPoolName"><code>diskPoolName</code></a>, <a href="#parameter-iscsiTargetName"><code>iscsiTargetName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Create or Update an iSCSI Target.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-diskPoolName"><code>diskPoolName</code></a>, <a href="#parameter-iscsiTargetName"><code>iscsiTargetName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Update an iSCSI Target.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-diskPoolName"><code>diskPoolName</code></a>, <a href="#parameter-iscsiTargetName"><code>iscsiTargetName</code></a></td>
    <td></td>
    <td>Delete an iSCSI Target.</td>
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
<tr id="parameter-diskPoolName">
    <td><CopyableCode code="diskPoolName" /></td>
    <td><code>string</code></td>
    <td>The name of the Disk Pool.</td>
</tr>
<tr id="parameter-iscsiTargetName">
    <td><CopyableCode code="iscsiTargetName" /></td>
    <td><code>string</code></td>
    <td>The name of the iSCSI Target.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_disk_pool', value: 'list_by_disk_pool' }
    ]}
>
<TabItem value="get">

Get an iSCSI Target.

```sql
SELECT
managedBy,
managedByExtended,
properties,
systemData
FROM azure.storage_pool.iscsi_targets
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND diskPoolName = '{{ diskPoolName }}' -- required
AND iscsiTargetName = '{{ iscsiTargetName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_disk_pool">

Get iSCSI Targets in a Disk pool.

```sql
SELECT
managedBy,
managedByExtended,
properties,
systemData
FROM azure.storage_pool.iscsi_targets
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND diskPoolName = '{{ diskPoolName }}' -- required
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

Create or Update an iSCSI Target.

```sql
INSERT INTO azure.storage_pool.iscsi_targets (
data__properties,
data__managedBy,
data__managedByExtended,
subscriptionId,
resourceGroupName,
diskPoolName,
iscsiTargetName
)
SELECT 
'{{ properties }}' /* required */,
'{{ managedBy }}',
'{{ managedByExtended }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ diskPoolName }}',
'{{ iscsiTargetName }}'
RETURNING
managedBy,
managedByExtended,
properties,
systemData
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: iscsi_targets
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the iscsi_targets resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the iscsi_targets resource.
    - name: diskPoolName
      value: string
      description: Required parameter for the iscsi_targets resource.
    - name: iscsiTargetName
      value: string
      description: Required parameter for the iscsi_targets resource.
    - name: properties
      value: object
      description: |
        Properties for iSCSI Target create request.
    - name: managedBy
      value: string
      description: |
        Azure resource id. Indicates if this resource is managed by another Azure resource.
    - name: managedByExtended
      value: array
      description: |
        List of Azure resource ids that manage this resource.
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

Update an iSCSI Target.

```sql
UPDATE azure.storage_pool.iscsi_targets
SET 
data__properties = '{{ properties }}',
data__managedBy = '{{ managedBy }}',
data__managedByExtended = '{{ managedByExtended }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND diskPoolName = '{{ diskPoolName }}' --required
AND iscsiTargetName = '{{ iscsiTargetName }}' --required
AND data__properties = '{{ properties }}' --required
RETURNING
managedBy,
managedByExtended,
properties,
systemData;
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

Delete an iSCSI Target.

```sql
DELETE FROM azure.storage_pool.iscsi_targets
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND diskPoolName = '{{ diskPoolName }}' --required
AND iscsiTargetName = '{{ iscsiTargetName }}' --required
;
```
</TabItem>
</Tabs>
