--- 
title: disk_restore_points
hide_title: false
hide_table_of_contents: false
keywords:
  - disk_restore_points
  - compute
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

Creates, updates, deletes, gets or lists a <code>disk_restore_points</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>disk_restore_points</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.disk_restore_points" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_restore_point', value: 'list_by_restore_point' }
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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Resource Id</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource name</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of an incremental disk restore point</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_restore_point">

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
    <td>Resource Id</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource name</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of an incremental disk restore point</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-restorePointCollectionName"><code>restorePointCollectionName</code></a>, <a href="#parameter-vmRestorePointName"><code>vmRestorePointName</code></a>, <a href="#parameter-diskRestorePointName"><code>diskRestorePointName</code></a></td>
    <td></td>
    <td>Get disk restorePoint resource</td>
</tr>
<tr>
    <td><a href="#list_by_restore_point"><CopyableCode code="list_by_restore_point" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-restorePointCollectionName"><code>restorePointCollectionName</code></a>, <a href="#parameter-vmRestorePointName"><code>vmRestorePointName</code></a></td>
    <td></td>
    <td>Lists diskRestorePoints under a vmRestorePoint.</td>
</tr>
<tr>
    <td><a href="#grant_access"><CopyableCode code="grant_access" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-restorePointCollectionName"><code>restorePointCollectionName</code></a>, <a href="#parameter-vmRestorePointName"><code>vmRestorePointName</code></a>, <a href="#parameter-diskRestorePointName"><code>diskRestorePointName</code></a>, <a href="#parameter-access"><code>access</code></a>, <a href="#parameter-durationInSeconds"><code>durationInSeconds</code></a></td>
    <td></td>
    <td>Grants access to a diskRestorePoint.</td>
</tr>
<tr>
    <td><a href="#revoke_access"><CopyableCode code="revoke_access" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-restorePointCollectionName"><code>restorePointCollectionName</code></a>, <a href="#parameter-vmRestorePointName"><code>vmRestorePointName</code></a>, <a href="#parameter-diskRestorePointName"><code>diskRestorePointName</code></a></td>
    <td></td>
    <td>Revokes access to a diskRestorePoint.</td>
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
<tr id="parameter-diskRestorePointName">
    <td><CopyableCode code="diskRestorePointName" /></td>
    <td><code>string</code></td>
    <td>The name of the disk restore point created.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group.</td>
</tr>
<tr id="parameter-restorePointCollectionName">
    <td><CopyableCode code="restorePointCollectionName" /></td>
    <td><code>string</code></td>
    <td>The name of the restore point collection that the disk restore point belongs.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
<tr id="parameter-vmRestorePointName">
    <td><CopyableCode code="vmRestorePointName" /></td>
    <td><code>string</code></td>
    <td>The name of the vm restore point that the disk disk restore point belongs.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_restore_point', value: 'list_by_restore_point' }
    ]}
>
<TabItem value="get">

Get disk restorePoint resource

```sql
SELECT
id,
name,
properties,
type
FROM azure.compute.disk_restore_points
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND restorePointCollectionName = '{{ restorePointCollectionName }}' -- required
AND vmRestorePointName = '{{ vmRestorePointName }}' -- required
AND diskRestorePointName = '{{ diskRestorePointName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_restore_point">

Lists diskRestorePoints under a vmRestorePoint.

```sql
SELECT
id,
name,
properties,
type
FROM azure.compute.disk_restore_points
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND restorePointCollectionName = '{{ restorePointCollectionName }}' -- required
AND vmRestorePointName = '{{ vmRestorePointName }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="grant_access"
    values={[
        { label: 'grant_access', value: 'grant_access' },
        { label: 'revoke_access', value: 'revoke_access' }
    ]}
>
<TabItem value="grant_access">

Grants access to a diskRestorePoint.

```sql
EXEC azure.compute.disk_restore_points.grant_access 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@restorePointCollectionName='{{ restorePointCollectionName }}' --required, 
@vmRestorePointName='{{ vmRestorePointName }}' --required, 
@diskRestorePointName='{{ diskRestorePointName }}' --required 
@@json=
'{
"access": "{{ access }}", 
"durationInSeconds": {{ durationInSeconds }}, 
"getSecureVMGuestStateSAS": {{ getSecureVMGuestStateSAS }}, 
"fileFormat": "{{ fileFormat }}"
}'
;
```
</TabItem>
<TabItem value="revoke_access">

Revokes access to a diskRestorePoint.

```sql
EXEC azure.compute.disk_restore_points.revoke_access 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@restorePointCollectionName='{{ restorePointCollectionName }}' --required, 
@vmRestorePointName='{{ vmRestorePointName }}' --required, 
@diskRestorePointName='{{ diskRestorePointName }}' --required
;
```
</TabItem>
</Tabs>
