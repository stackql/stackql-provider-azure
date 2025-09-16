--- 
title: access_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - access_policies
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

Creates, updates, deletes, gets or lists an <code>access_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>access_policies</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.redis.access_policies" /></td></tr>
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

Response of get access policy.

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
    <td>Properties of an access policy.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Response of list access policies.

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
    <td>Properties of an access policy.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cacheName"><code>cacheName</code></a>, <a href="#parameter-accessPolicyName"><code>accessPolicyName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets the detailed information about an access policy of a redis cache</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cacheName"><code>cacheName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets the list of access policies associated with this redis cache</td>
</tr>
<tr>
    <td><a href="#create_update"><CopyableCode code="create_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cacheName"><code>cacheName</code></a>, <a href="#parameter-accessPolicyName"><code>accessPolicyName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Adds an access policy to the redis cache</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cacheName"><code>cacheName</code></a>, <a href="#parameter-accessPolicyName"><code>accessPolicyName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes the access policy from a redis cache</td>
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
<tr id="parameter-accessPolicyName">
    <td><CopyableCode code="accessPolicyName" /></td>
    <td><code>string</code></td>
    <td>The name of the access policy that is being added to the Redis cache.</td>
</tr>
<tr id="parameter-cacheName">
    <td><CopyableCode code="cacheName" /></td>
    <td><code>string</code></td>
    <td>The name of the Redis cache.</td>
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
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Gets the detailed information about an access policy of a redis cache

```sql
SELECT
properties
FROM azure_isv.redis.access_policies
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND cacheName = '{{ cacheName }}' -- required
AND accessPolicyName = '{{ accessPolicyName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets the list of access policies associated with this redis cache

```sql
SELECT
properties
FROM azure_isv.redis.access_policies
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND cacheName = '{{ cacheName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_update"
    values={[
        { label: 'create_update', value: 'create_update' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_update">

Adds an access policy to the redis cache

```sql
INSERT INTO azure_isv.redis.access_policies (
data__properties,
resourceGroupName,
cacheName,
accessPolicyName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ cacheName }}',
'{{ accessPolicyName }}',
'{{ subscriptionId }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: access_policies
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the access_policies resource.
    - name: cacheName
      value: string
      description: Required parameter for the access_policies resource.
    - name: accessPolicyName
      value: string
      description: Required parameter for the access_policies resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the access_policies resource.
    - name: properties
      value: object
      description: |
        Properties of an access policy.
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

Deletes the access policy from a redis cache

```sql
DELETE FROM azure_isv.redis.access_policies
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND cacheName = '{{ cacheName }}' --required
AND accessPolicyName = '{{ accessPolicyName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
