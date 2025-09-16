--- 
title: patch_schedules
hide_title: false
hide_table_of_contents: false
keywords:
  - patch_schedules
  - redis
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

Creates, updates, deletes, gets or lists a <code>patch_schedules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>patch_schedules</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.redis.patch_schedules" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_redis_resource', value: 'list_by_redis_resource' }
    ]}
>
<TabItem value="get">

Response of get patch schedules.

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
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>List of patch schedules for a Redis cache.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_redis_resource">

Successfully got the current patch schedules

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
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>List of patch schedules for a Redis cache.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-default"><code>default</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets the patching schedule of a redis cache.</td>
</tr>
<tr>
    <td><a href="#list_by_redis_resource"><CopyableCode code="list_by_redis_resource" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cacheName"><code>cacheName</code></a></td>
    <td></td>
    <td>Gets all patch schedules in the specified redis cache (there is only one).</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-default"><code>default</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Create or replace the patching schedule for Redis cache.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-default"><code>default</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes the patching schedule of a redis cache.</td>
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
    <td>The name of the Redis cache.</td>
</tr>
<tr id="parameter-default">
    <td><CopyableCode code="default" /></td>
    <td><code>string</code></td>
    <td>Default string modeled as parameter for auto generation to work correctly.</td>
</tr>
<tr id="parameter-name">
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the redis cache.</td>
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
        { label: 'list_by_redis_resource', value: 'list_by_redis_resource' }
    ]}
>
<TabItem value="get">

Gets the patching schedule of a redis cache.

```sql
SELECT
location,
properties
FROM azure_isv.redis.patch_schedules
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND name = '{{ name }}' -- required
AND default = '{{ default }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_redis_resource">

Gets all patch schedules in the specified redis cache (there is only one).

```sql
SELECT
location,
properties
FROM azure_isv.redis.patch_schedules
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
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

Create or replace the patching schedule for Redis cache.

```sql
INSERT INTO azure_isv.redis.patch_schedules (
data__properties,
resourceGroupName,
name,
default,
subscriptionId
)
SELECT 
'{{ properties }}' /* required */,
'{{ resourceGroupName }}',
'{{ name }}',
'{{ default }}',
'{{ subscriptionId }}'
RETURNING
location,
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: patch_schedules
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the patch_schedules resource.
    - name: name
      value: string
      description: Required parameter for the patch_schedules resource.
    - name: default
      value: string
      description: Required parameter for the patch_schedules resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the patch_schedules resource.
    - name: properties
      value: object
      description: |
        List of patch schedules for a Redis cache.
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

Deletes the patching schedule of a redis cache.

```sql
DELETE FROM azure_isv.redis.patch_schedules
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND name = '{{ name }}' --required
AND default = '{{ default }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
