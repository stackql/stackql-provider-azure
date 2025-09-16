--- 
title: volumes_replications
hide_title: false
hide_table_of_contents: false
keywords:
  - volumes_replications
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

Creates, updates, deletes, gets or lists a <code>volumes_replications</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>volumes_replications</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.netapp.volumes_replications" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
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
    <td><CopyableCode code="endpointType" /></td>
    <td><code>string</code></td>
    <td>Indicates whether the local volume is the source or destination for the Volume Replication</td>
</tr>
<tr>
    <td><CopyableCode code="remoteVolumeRegion" /></td>
    <td><code>string</code></td>
    <td>The remote region for the other end of the Volume Replication.</td>
</tr>
<tr>
    <td><CopyableCode code="remoteVolumeResourceId" /></td>
    <td><code>string</code></td>
    <td>The resource ID of the remote volume.</td>
</tr>
<tr>
    <td><CopyableCode code="replicationId" /></td>
    <td><code>string</code></td>
    <td>UUID v4 used to identify the replication. (pattern: <code>^[a-fA-F0-9]&#123;8&#125;-[a-fA-F0-9]&#123;4&#125;-[a-fA-F0-9]&#123;4&#125;-[a-fA-F0-9]&#123;4&#125;-[a-fA-F0-9]&#123;12&#125;$</code>, example: 5ee41ce4-8f44-4ecd-ad89-8c1e573fe3b8)</td>
</tr>
<tr>
    <td><CopyableCode code="replicationSchedule" /></td>
    <td><code>string</code></td>
    <td>Schedule</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-poolName"><code>poolName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a></td>
    <td></td>
    <td>List all replications for a specified volume</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-poolName"><code>poolName</code></a>, <a href="#parameter-volumeName"><code>volumeName</code></a></td>
    <td></td>
    <td>Delete the replication connection on the destination volume, and send release to the source replication</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

List all replications for a specified volume

```sql
SELECT
endpointType,
remoteVolumeRegion,
remoteVolumeResourceId,
replicationId,
replicationSchedule
FROM azure_isv.netapp.volumes_replications
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND poolName = '{{ poolName }}' -- required
AND volumeName = '{{ volumeName }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="delete"
    values={[
        { label: 'delete', value: 'delete' }
    ]}
>
<TabItem value="delete">

Delete the replication connection on the destination volume, and send release to the source replication

```sql
EXEC azure_isv.netapp.volumes_replications.delete 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@poolName='{{ poolName }}' --required, 
@volumeName='{{ volumeName }}' --required
;
```
</TabItem>
</Tabs>
