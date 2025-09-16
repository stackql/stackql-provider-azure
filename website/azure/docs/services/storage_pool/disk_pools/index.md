--- 
title: disk_pools
hide_title: false
hide_table_of_contents: false
keywords:
  - disk_pools
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

Creates, updates, deletes, gets or lists a <code>disk_pools</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>disk_pools</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage_pool.disk_pools" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
    ]}
>
<TabItem value="get">

Operation completed successfully; retrieved Disk pool.

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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives.</td>
</tr>
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
    <td>Properties of Disk Pool.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>Determines the SKU of the Disk pool</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Resource metadata required by ARM RPC</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group">

Operation completed successfully; retrieved diskPools by resource group

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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives.</td>
</tr>
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
    <td>Properties of Disk Pool.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>Determines the SKU of the Disk pool</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Resource metadata required by ARM RPC</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_subscription">

Operation completed successfully; retrieved diskPools by subscription

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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives.</td>
</tr>
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
    <td>Properties of Disk Pool.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>Determines the SKU of the Disk pool</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Resource metadata required by ARM RPC</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-diskPoolName"><code>diskPoolName</code></a></td>
    <td></td>
    <td>Get a Disk pool.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td>Gets a list of DiskPools in a resource group.</td>
</tr>
<tr>
    <td><a href="#list_by_subscription"><CopyableCode code="list_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets a list of Disk Pools in a subscription</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-diskPoolName"><code>diskPoolName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a>, <a href="#parameter-data__location"><code>data__location</code></a>, <a href="#parameter-data__sku"><code>data__sku</code></a></td>
    <td></td>
    <td>Create or Update Disk pool. This create or update operation can take 15 minutes to complete. This is expected service behavior.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-diskPoolName"><code>diskPoolName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Update a Disk pool.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-diskPoolName"><code>diskPoolName</code></a></td>
    <td></td>
    <td>Delete a Disk pool; attached disks are not affected. This delete operation can take 10 minutes to complete. This is expected service behavior.</td>
</tr>
<tr>
    <td><a href="#start"><CopyableCode code="start" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-diskPoolName"><code>diskPoolName</code></a></td>
    <td></td>
    <td>The operation to start a Disk Pool. This start operation can take 10 minutes to complete. This is expected service behavior.</td>
</tr>
<tr>
    <td><a href="#deallocate"><CopyableCode code="deallocate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-diskPoolName"><code>diskPoolName</code></a></td>
    <td></td>
    <td>Shuts down the Disk Pool and releases the compute resources. You are not billed for the compute resources that this Disk Pool uses. This operation can take 10 minutes to complete. This is expected service behavior.</td>
</tr>
<tr>
    <td><a href="#upgrade"><CopyableCode code="upgrade" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-diskPoolName"><code>diskPoolName</code></a></td>
    <td></td>
    <td>Upgrade replaces the underlying virtual machine hosts one at a time. This operation can take 10-15 minutes to complete. This is expected service behavior.</td>
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
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
    ]}
>
<TabItem value="get">

Get a Disk pool.

```sql
SELECT
location,
managedBy,
managedByExtended,
properties,
sku,
systemData,
tags
FROM azure.storage_pool.disk_pools
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND diskPoolName = '{{ diskPoolName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_resource_group">

Gets a list of DiskPools in a resource group.

```sql
SELECT
location,
managedBy,
managedByExtended,
properties,
sku,
systemData,
tags
FROM azure.storage_pool.disk_pools
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_subscription">

Gets a list of Disk Pools in a subscription

```sql
SELECT
location,
managedBy,
managedByExtended,
properties,
sku,
systemData,
tags
FROM azure.storage_pool.disk_pools
WHERE subscriptionId = '{{ subscriptionId }}' -- required
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

Create or Update Disk pool. This create or update operation can take 15 minutes to complete. This is expected service behavior.

```sql
INSERT INTO azure.storage_pool.disk_pools (
data__sku,
data__properties,
data__tags,
data__location,
data__managedBy,
data__managedByExtended,
subscriptionId,
resourceGroupName,
diskPoolName
)
SELECT 
'{{ sku }}' /* required */,
'{{ properties }}' /* required */,
'{{ tags }}',
'{{ location }}' /* required */,
'{{ managedBy }}',
'{{ managedByExtended }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ diskPoolName }}'
RETURNING
location,
managedBy,
managedByExtended,
properties,
sku,
systemData,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: disk_pools
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the disk_pools resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the disk_pools resource.
    - name: diskPoolName
      value: string
      description: Required parameter for the disk_pools resource.
    - name: sku
      value: object
      description: |
        Determines the SKU of the Disk Pool
    - name: properties
      value: object
      description: |
        Properties for Disk Pool create request.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        The geo-location where the resource lives.
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

Update a Disk pool.

```sql
UPDATE azure.storage_pool.disk_pools
SET 
data__managedBy = '{{ managedBy }}',
data__managedByExtended = '{{ managedByExtended }}',
data__properties = '{{ properties }}',
data__sku = '{{ sku }}',
data__tags = '{{ tags }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND diskPoolName = '{{ diskPoolName }}' --required
AND data__properties = '{{ properties }}' --required
RETURNING
location,
managedBy,
managedByExtended,
properties,
sku,
systemData,
tags;
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

Delete a Disk pool; attached disks are not affected. This delete operation can take 10 minutes to complete. This is expected service behavior.

```sql
DELETE FROM azure.storage_pool.disk_pools
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND diskPoolName = '{{ diskPoolName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="start"
    values={[
        { label: 'start', value: 'start' },
        { label: 'deallocate', value: 'deallocate' },
        { label: 'upgrade', value: 'upgrade' }
    ]}
>
<TabItem value="start">

The operation to start a Disk Pool. This start operation can take 10 minutes to complete. This is expected service behavior.

```sql
EXEC azure.storage_pool.disk_pools.start 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@diskPoolName='{{ diskPoolName }}' --required
;
```
</TabItem>
<TabItem value="deallocate">

Shuts down the Disk Pool and releases the compute resources. You are not billed for the compute resources that this Disk Pool uses. This operation can take 10 minutes to complete. This is expected service behavior.

```sql
EXEC azure.storage_pool.disk_pools.deallocate 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@diskPoolName='{{ diskPoolName }}' --required
;
```
</TabItem>
<TabItem value="upgrade">

Upgrade replaces the underlying virtual machine hosts one at a time. This operation can take 10-15 minutes to complete. This is expected service behavior.

```sql
EXEC azure.storage_pool.disk_pools.upgrade 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@diskPoolName='{{ diskPoolName }}' --required
;
```
</TabItem>
</Tabs>
