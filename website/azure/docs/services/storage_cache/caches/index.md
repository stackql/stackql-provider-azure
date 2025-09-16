--- 
title: caches
hide_title: false
hide_table_of_contents: false
keywords:
  - caches
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

Creates, updates, deletes, gets or lists a <code>caches</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>caches</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage_cache.caches" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Returns the cache object corresponding to cache name.

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
    <td>Resource ID of the cache.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of cache. (pattern: <code>^[-0-9a-zA-Z_]&#123;1,80&#125;$</code>)</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The identity of the cache, if configured.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Region name string.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the cache.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>SKU for the cache.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The system meta data relating to this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of the cache; Microsoft.StorageCache/Cache</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group">

A list of cache objects. Note that entity references might replace complete cache objects, as described in http://docs.oasis-open.org/odata/odata-json-format/v4.01/cs01/odata-json-format-v4.01-cs01.html#sec_EntityReference

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
    <td>Resource ID of the cache.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of cache. (pattern: <code>^[-0-9a-zA-Z_]&#123;1,80&#125;$</code>)</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The identity of the cache, if configured.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Region name string.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the cache.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>SKU for the cache.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The system meta data relating to this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of the cache; Microsoft.StorageCache/Cache</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

A list of cache objects. Note that entity references might replace complete cache objects, as described in http://docs.oasis-open.org/odata/odata-json-format/v4.01/cs01/odata-json-format-v4.01-cs01.html#sec_EntityReference

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
    <td>Resource ID of the cache.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of cache. (pattern: <code>^[-0-9a-zA-Z_]&#123;1,80&#125;$</code>)</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The identity of the cache, if configured.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Region name string.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the cache.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>SKU for the cache.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The system meta data relating to this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of the cache; Microsoft.StorageCache/Cache</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cacheName"><code>cacheName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Returns a cache.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Returns all caches the user has access to under a resource group.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Returns all caches the user has access to under a subscription.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-cacheName"><code>cacheName</code></a></td>
    <td></td>
    <td>Create or update a cache.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-cacheName"><code>cacheName</code></a></td>
    <td></td>
    <td>Update a cache instance.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cacheName"><code>cacheName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Schedules a cache for deletion.</td>
</tr>
<tr>
    <td><a href="#debug_info"><CopyableCode code="debug_info" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-cacheName"><code>cacheName</code></a></td>
    <td></td>
    <td>Tells a cache to write generate debug info for support to process.</td>
</tr>
<tr>
    <td><a href="#flush"><CopyableCode code="flush" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-cacheName"><code>cacheName</code></a></td>
    <td></td>
    <td>Tells a cache to write all dirty data to the Storage Target(s). During the flush, clients will see errors returned until the flush is complete.</td>
</tr>
<tr>
    <td><a href="#start"><CopyableCode code="start" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-cacheName"><code>cacheName</code></a></td>
    <td></td>
    <td>Tells a Stopped state cache to transition to Active state.</td>
</tr>
<tr>
    <td><a href="#stop"><CopyableCode code="stop" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-cacheName"><code>cacheName</code></a></td>
    <td></td>
    <td>Tells an Active cache to transition to Stopped state.</td>
</tr>
<tr>
    <td><a href="#start_priming_job"><CopyableCode code="start_priming_job" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-cacheName"><code>cacheName</code></a>, <a href="#parameter-primingJobName"><code>primingJobName</code></a>, <a href="#parameter-primingManifestUrl"><code>primingManifestUrl</code></a></td>
    <td></td>
    <td>Create a priming job. This operation is only allowed when the cache is healthy.</td>
</tr>
<tr>
    <td><a href="#stop_priming_job"><CopyableCode code="stop_priming_job" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cacheName"><code>cacheName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-primingJobId"><code>primingJobId</code></a></td>
    <td></td>
    <td>Schedule a priming job for deletion.</td>
</tr>
<tr>
    <td><a href="#pause_priming_job"><CopyableCode code="pause_priming_job" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cacheName"><code>cacheName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-primingJobId"><code>primingJobId</code></a></td>
    <td></td>
    <td>Schedule a priming job to be paused.</td>
</tr>
<tr>
    <td><a href="#resume_priming_job"><CopyableCode code="resume_priming_job" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cacheName"><code>cacheName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-primingJobId"><code>primingJobId</code></a></td>
    <td></td>
    <td>Resumes a paused priming job.</td>
</tr>
<tr>
    <td><a href="#upgrade_firmware"><CopyableCode code="upgrade_firmware" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-cacheName"><code>cacheName</code></a></td>
    <td></td>
    <td>Upgrade a cache's firmware if a new version is available. Otherwise, this operation has no effect.</td>
</tr>
<tr>
    <td><a href="#space_allocation"><CopyableCode code="space_allocation" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-cacheName"><code>cacheName</code></a></td>
    <td></td>
    <td>Update cache space allocation.</td>
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
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Returns a cache.

```sql
SELECT
id,
name,
identity,
location,
properties,
sku,
systemData,
tags,
type
FROM azure.storage_cache.caches
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND cacheName = '{{ cacheName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_resource_group">

Returns all caches the user has access to under a resource group.

```sql
SELECT
id,
name,
identity,
location,
properties,
sku,
systemData,
tags,
type
FROM azure.storage_cache.caches
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Returns all caches the user has access to under a subscription.

```sql
SELECT
id,
name,
identity,
location,
properties,
sku,
systemData,
tags,
type
FROM azure.storage_cache.caches
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

Create or update a cache.

```sql
INSERT INTO azure.storage_cache.caches (
data__tags,
data__location,
data__identity,
data__properties,
data__sku,
resourceGroupName,
subscriptionId,
cacheName
)
SELECT 
'{{ tags }}',
'{{ location }}',
'{{ identity }}',
'{{ properties }}',
'{{ sku }}',
'{{ resourceGroupName }}',
'{{ subscriptionId }}',
'{{ cacheName }}'
RETURNING
id,
name,
identity,
location,
properties,
sku,
systemData,
tags,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: caches
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the caches resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the caches resource.
    - name: cacheName
      value: string
      description: Required parameter for the caches resource.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        Region name string.
    - name: identity
      value: object
      description: |
        The identity of the cache, if configured.
    - name: properties
      value: object
      description: |
        Properties of the cache.
    - name: sku
      value: object
      description: |
        SKU for the cache.
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

Update a cache instance.

```sql
UPDATE azure.storage_cache.caches
SET 
data__tags = '{{ tags }}',
data__location = '{{ location }}',
data__identity = '{{ identity }}',
data__properties = '{{ properties }}',
data__sku = '{{ sku }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND cacheName = '{{ cacheName }}' --required
RETURNING
id,
name,
identity,
location,
properties,
sku,
systemData,
tags,
type;
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

Schedules a cache for deletion.

```sql
DELETE FROM azure.storage_cache.caches
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND cacheName = '{{ cacheName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="debug_info"
    values={[
        { label: 'debug_info', value: 'debug_info' },
        { label: 'flush', value: 'flush' },
        { label: 'start', value: 'start' },
        { label: 'stop', value: 'stop' },
        { label: 'start_priming_job', value: 'start_priming_job' },
        { label: 'stop_priming_job', value: 'stop_priming_job' },
        { label: 'pause_priming_job', value: 'pause_priming_job' },
        { label: 'resume_priming_job', value: 'resume_priming_job' },
        { label: 'upgrade_firmware', value: 'upgrade_firmware' },
        { label: 'space_allocation', value: 'space_allocation' }
    ]}
>
<TabItem value="debug_info">

Tells a cache to write generate debug info for support to process.

```sql
EXEC azure.storage_cache.caches.debug_info 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@cacheName='{{ cacheName }}' --required
;
```
</TabItem>
<TabItem value="flush">

Tells a cache to write all dirty data to the Storage Target(s). During the flush, clients will see errors returned until the flush is complete.

```sql
EXEC azure.storage_cache.caches.flush 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@cacheName='{{ cacheName }}' --required
;
```
</TabItem>
<TabItem value="start">

Tells a Stopped state cache to transition to Active state.

```sql
EXEC azure.storage_cache.caches.start 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@cacheName='{{ cacheName }}' --required
;
```
</TabItem>
<TabItem value="stop">

Tells an Active cache to transition to Stopped state.

```sql
EXEC azure.storage_cache.caches.stop 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@cacheName='{{ cacheName }}' --required
;
```
</TabItem>
<TabItem value="start_priming_job">

Create a priming job. This operation is only allowed when the cache is healthy.

```sql
EXEC azure.storage_cache.caches.start_priming_job 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@cacheName='{{ cacheName }}' --required 
@@json=
'{
"primingJobName": "{{ primingJobName }}", 
"primingManifestUrl": "{{ primingManifestUrl }}"
}'
;
```
</TabItem>
<TabItem value="stop_priming_job">

Schedule a priming job for deletion.

```sql
EXEC azure.storage_cache.caches.stop_priming_job 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@cacheName='{{ cacheName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"primingJobId": "{{ primingJobId }}"
}'
;
```
</TabItem>
<TabItem value="pause_priming_job">

Schedule a priming job to be paused.

```sql
EXEC azure.storage_cache.caches.pause_priming_job 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@cacheName='{{ cacheName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"primingJobId": "{{ primingJobId }}"
}'
;
```
</TabItem>
<TabItem value="resume_priming_job">

Resumes a paused priming job.

```sql
EXEC azure.storage_cache.caches.resume_priming_job 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@cacheName='{{ cacheName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"primingJobId": "{{ primingJobId }}"
}'
;
```
</TabItem>
<TabItem value="upgrade_firmware">

Upgrade a cache's firmware if a new version is available. Otherwise, this operation has no effect.

```sql
EXEC azure.storage_cache.caches.upgrade_firmware 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@cacheName='{{ cacheName }}' --required
;
```
</TabItem>
<TabItem value="space_allocation">

Update cache space allocation.

```sql
EXEC azure.storage_cache.caches.space_allocation 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@cacheName='{{ cacheName }}' --required
;
```
</TabItem>
</Tabs>
