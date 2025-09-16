--- 
title: connected_environments_storages
hide_title: false
hide_table_of_contents: false
keywords:
  - connected_environments_storages
  - container_apps
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

Creates, updates, deletes, gets or lists a <code>connected_environments_storages</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>connected_environments_storages</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.container_apps.connected_environments_storages" /></td></tr>
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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Storage properties</td>
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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Storage properties</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-connectedEnvironmentName"><code>connectedEnvironmentName</code></a>, <a href="#parameter-storageName"><code>storageName</code></a></td>
    <td></td>
    <td>Get storage for a connectedEnvironment.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-connectedEnvironmentName"><code>connectedEnvironmentName</code></a></td>
    <td></td>
    <td>Get all storages for a connectedEnvironment.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-connectedEnvironmentName"><code>connectedEnvironmentName</code></a>, <a href="#parameter-storageName"><code>storageName</code></a></td>
    <td></td>
    <td>Create or update storage for a connectedEnvironment.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-connectedEnvironmentName"><code>connectedEnvironmentName</code></a>, <a href="#parameter-storageName"><code>storageName</code></a></td>
    <td></td>
    <td>Delete storage for a connectedEnvironment.</td>
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
<tr id="parameter-connectedEnvironmentName">
    <td><CopyableCode code="connectedEnvironmentName" /></td>
    <td><code>string</code></td>
    <td>Name of the Environment.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-storageName">
    <td><CopyableCode code="storageName" /></td>
    <td><code>string</code></td>
    <td>Name of the storage.</td>
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
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Get storage for a connectedEnvironment.

```sql
SELECT
properties
FROM azure.container_apps.connected_environments_storages
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND connectedEnvironmentName = '{{ connectedEnvironmentName }}' -- required
AND storageName = '{{ storageName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Get all storages for a connectedEnvironment.

```sql
SELECT
properties
FROM azure.container_apps.connected_environments_storages
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND connectedEnvironmentName = '{{ connectedEnvironmentName }}' -- required
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

Create or update storage for a connectedEnvironment.

```sql
INSERT INTO azure.container_apps.connected_environments_storages (
data__properties,
subscriptionId,
resourceGroupName,
connectedEnvironmentName,
storageName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ connectedEnvironmentName }}',
'{{ storageName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: connected_environments_storages
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the connected_environments_storages resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the connected_environments_storages resource.
    - name: connectedEnvironmentName
      value: string
      description: Required parameter for the connected_environments_storages resource.
    - name: storageName
      value: string
      description: Required parameter for the connected_environments_storages resource.
    - name: properties
      value: object
      description: |
        Storage properties
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

Delete storage for a connectedEnvironment.

```sql
DELETE FROM azure.container_apps.connected_environments_storages
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND connectedEnvironmentName = '{{ connectedEnvironmentName }}' --required
AND storageName = '{{ storageName }}' --required
;
```
</TabItem>
</Tabs>
