--- 
title: storage_targets
hide_title: false
hide_table_of_contents: false
keywords:
  - storage_targets
  - storage_cache
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

Creates, updates, deletes, gets or lists a <code>storage_targets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>storage_targets</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage_cache.storage_targets" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_cache', value: 'list_by_cache' }
    ]}
>
<TabItem value="get">

Returns the Storage Target object corresponding to storageTargetName.

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
    <td>Resource ID of the Storage Target.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the Storage Target. (pattern: <code>^[-0-9a-zA-Z_]&#123;1,80&#125;$</code>)</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Region name string.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>StorageTarget properties</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The system meta data relating to this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of the Storage Target; Microsoft.StorageCache/Cache/StorageTarget</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_cache">

Returns the list of Storage Targets defined by cache name.

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
    <td>Resource ID of the Storage Target.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the Storage Target. (pattern: <code>^[-0-9a-zA-Z_]&#123;1,80&#125;$</code>)</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Region name string.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>StorageTarget properties</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The system meta data relating to this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of the Storage Target; Microsoft.StorageCache/Cache/StorageTarget</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-cacheName"><code>cacheName</code></a>, <a href="#parameter-storageTargetName"><code>storageTargetName</code></a></td>
    <td></td>
    <td>Returns a Storage Target from a cache.</td>
</tr>
<tr>
    <td><a href="#list_by_cache"><CopyableCode code="list_by_cache" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-cacheName"><code>cacheName</code></a></td>
    <td></td>
    <td>Returns a list of Storage Targets for the specified cache.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-cacheName"><code>cacheName</code></a>, <a href="#parameter-storageTargetName"><code>storageTargetName</code></a></td>
    <td></td>
    <td>Create or update a Storage Target. This operation is allowed at any time, but if the cache is down or unhealthy, the actual creation/modification of the Storage Target may be delayed until the cache is healthy again.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-cacheName"><code>cacheName</code></a>, <a href="#parameter-storageTargetName"><code>storageTargetName</code></a></td>
    <td><a href="#parameter-force"><code>force</code></a></td>
    <td>Removes a Storage Target from a cache. This operation is allowed at any time, but if the cache is down or unhealthy, the actual removal of the Storage Target may be delayed until the cache is healthy again. Note that if the cache has data to flush to the Storage Target, the data will be flushed before the Storage Target will be deleted.</td>
</tr>
<tr>
    <td><a href="#dns_refresh"><CopyableCode code="dns_refresh" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-cacheName"><code>cacheName</code></a>, <a href="#parameter-storageTargetName"><code>storageTargetName</code></a></td>
    <td></td>
    <td>Tells a storage target to refresh its DNS information.</td>
</tr>
<tr>
    <td><a href="#flush"><CopyableCode code="flush" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-cacheName"><code>cacheName</code></a>, <a href="#parameter-storageTargetName"><code>storageTargetName</code></a></td>
    <td></td>
    <td>Tells the cache to write all dirty data to the Storage Target's backend storage. Client requests to this storage target's namespace will return errors until the flush operation completes.</td>
</tr>
<tr>
    <td><a href="#suspend"><CopyableCode code="suspend" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-cacheName"><code>cacheName</code></a>, <a href="#parameter-storageTargetName"><code>storageTargetName</code></a></td>
    <td></td>
    <td>Suspends client access to a storage target.</td>
</tr>
<tr>
    <td><a href="#resume"><CopyableCode code="resume" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-cacheName"><code>cacheName</code></a>, <a href="#parameter-storageTargetName"><code>storageTargetName</code></a></td>
    <td></td>
    <td>Resumes client access to a previously suspended storage target.</td>
</tr>
<tr>
    <td><a href="#invalidate"><CopyableCode code="invalidate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-cacheName"><code>cacheName</code></a>, <a href="#parameter-storageTargetName"><code>storageTargetName</code></a></td>
    <td></td>
    <td>Invalidate all cached data for a storage target. Cached files are discarded and fetched from the back end on the next request.</td>
</tr>
<tr>
    <td><a href="#restore_defaults"><CopyableCode code="restore_defaults" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-cacheName"><code>cacheName</code></a>, <a href="#parameter-storageTargetName"><code>storageTargetName</code></a></td>
    <td></td>
    <td>Tells a storage target to restore its settings to their default values.</td>
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
<tr id="parameter-cacheName">
    <td><CopyableCode code="cacheName" /></td>
    <td><code>string</code></td>
    <td>Name of cache. Length of name must not be greater than 80 and chars must be from the [-0-9a-zA-Z_] char class.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-storageTargetName">
    <td><CopyableCode code="storageTargetName" /></td>
    <td><code>string</code></td>
    <td>Name of Storage Target.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-force">
    <td><CopyableCode code="force" /></td>
    <td><code>string</code></td>
    <td>Boolean value requesting the force delete operation for a storage target. Force delete discards unwritten-data in the cache instead of flushing it to back-end storage.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_cache', value: 'list_by_cache' }
    ]}
>
<TabItem value="get">

Returns a Storage Target from a cache.

```sql
SELECT
id,
name,
location,
properties,
systemData,
type
FROM azure.storage_cache.storage_targets
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND cacheName = '{{ cacheName }}' -- required
AND storageTargetName = '{{ storageTargetName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_cache">

Returns a list of Storage Targets for the specified cache.

```sql
SELECT
id,
name,
location,
properties,
systemData,
type
FROM azure.storage_cache.storage_targets
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND cacheName = '{{ cacheName }}' -- required
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

Create or update a Storage Target. This operation is allowed at any time, but if the cache is down or unhealthy, the actual creation/modification of the Storage Target may be delayed until the cache is healthy again.

```sql
INSERT INTO azure.storage_cache.storage_targets (
data__properties,
resourceGroupName,
subscriptionId,
cacheName,
storageTargetName
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ subscriptionId }}',
'{{ cacheName }}',
'{{ storageTargetName }}'
RETURNING
id,
name,
location,
properties,
systemData,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: storage_targets
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the storage_targets resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the storage_targets resource.
    - name: cacheName
      value: string
      description: Required parameter for the storage_targets resource.
    - name: storageTargetName
      value: string
      description: Required parameter for the storage_targets resource.
    - name: properties
      value: object
      description: |
        StorageTarget properties
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

Removes a Storage Target from a cache. This operation is allowed at any time, but if the cache is down or unhealthy, the actual removal of the Storage Target may be delayed until the cache is healthy again. Note that if the cache has data to flush to the Storage Target, the data will be flushed before the Storage Target will be deleted.

```sql
DELETE FROM azure.storage_cache.storage_targets
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND cacheName = '{{ cacheName }}' --required
AND storageTargetName = '{{ storageTargetName }}' --required
AND force = '{{ force }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="dns_refresh"
    values={[
        { label: 'dns_refresh', value: 'dns_refresh' },
        { label: 'flush', value: 'flush' },
        { label: 'suspend', value: 'suspend' },
        { label: 'resume', value: 'resume' },
        { label: 'invalidate', value: 'invalidate' },
        { label: 'restore_defaults', value: 'restore_defaults' }
    ]}
>
<TabItem value="dns_refresh">

Tells a storage target to refresh its DNS information.

```sql
EXEC azure.storage_cache.storage_targets.dns_refresh 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@cacheName='{{ cacheName }}' --required, 
@storageTargetName='{{ storageTargetName }}' --required
;
```
</TabItem>
<TabItem value="flush">

Tells the cache to write all dirty data to the Storage Target's backend storage. Client requests to this storage target's namespace will return errors until the flush operation completes.

```sql
EXEC azure.storage_cache.storage_targets.flush 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@cacheName='{{ cacheName }}' --required, 
@storageTargetName='{{ storageTargetName }}' --required
;
```
</TabItem>
<TabItem value="suspend">

Suspends client access to a storage target.

```sql
EXEC azure.storage_cache.storage_targets.suspend 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@cacheName='{{ cacheName }}' --required, 
@storageTargetName='{{ storageTargetName }}' --required
;
```
</TabItem>
<TabItem value="resume">

Resumes client access to a previously suspended storage target.

```sql
EXEC azure.storage_cache.storage_targets.resume 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@cacheName='{{ cacheName }}' --required, 
@storageTargetName='{{ storageTargetName }}' --required
;
```
</TabItem>
<TabItem value="invalidate">

Invalidate all cached data for a storage target. Cached files are discarded and fetched from the back end on the next request.

```sql
EXEC azure.storage_cache.storage_targets.invalidate 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@cacheName='{{ cacheName }}' --required, 
@storageTargetName='{{ storageTargetName }}' --required
;
```
</TabItem>
<TabItem value="restore_defaults">

Tells a storage target to restore its settings to their default values.

```sql
EXEC azure.storage_cache.storage_targets.restore_defaults 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@cacheName='{{ cacheName }}' --required, 
@storageTargetName='{{ storageTargetName }}' --required
;
```
</TabItem>
</Tabs>
