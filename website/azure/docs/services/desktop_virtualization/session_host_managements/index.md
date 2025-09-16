--- 
title: session_host_managements
hide_title: false
hide_table_of_contents: false
keywords:
  - session_host_managements
  - desktop_virtualization
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

Creates, updates, deletes, gets or lists a <code>session_host_managements</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>session_host_managements</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.desktop_virtualization.session_host_managements" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_host_pool', value: 'list_by_host_pool' }
    ]}
>
<TabItem value="get">

Successfully retrieved sessionHostManagement.

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
    <td>Detailed properties for SessionHostManagement</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_host_pool">

Successfully retrieved SessionHostManagements in HostPool.

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
    <td>Detailed properties for SessionHostManagement</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-hostPoolName"><code>hostPoolName</code></a></td>
    <td></td>
    <td>Get a SessionHostManagement.</td>
</tr>
<tr>
    <td><a href="#list_by_host_pool"><CopyableCode code="list_by_host_pool" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-hostPoolName"><code>hostPoolName</code></a></td>
    <td></td>
    <td>List SessionHostManagements by hostPool.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-hostPoolName"><code>hostPoolName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Create or update a SessionHostManagement.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-hostPoolName"><code>hostPoolName</code></a></td>
    <td></td>
    <td>Update a SessionHostManagement.</td>
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
<tr id="parameter-hostPoolName">
    <td><CopyableCode code="hostPoolName" /></td>
    <td><code>string</code></td>
    <td>The name of the host pool within the specified resource group</td>
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
        { label: 'list_by_host_pool', value: 'list_by_host_pool' }
    ]}
>
<TabItem value="get">

Get a SessionHostManagement.

```sql
SELECT
properties
FROM azure.desktop_virtualization.session_host_managements
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND hostPoolName = '{{ hostPoolName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_host_pool">

List SessionHostManagements by hostPool.

```sql
SELECT
properties
FROM azure.desktop_virtualization.session_host_managements
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND hostPoolName = '{{ hostPoolName }}' -- required
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

Create or update a SessionHostManagement.

```sql
INSERT INTO azure.desktop_virtualization.session_host_managements (
data__properties,
subscriptionId,
resourceGroupName,
hostPoolName
)
SELECT 
'{{ properties }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ hostPoolName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: session_host_managements
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the session_host_managements resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the session_host_managements resource.
    - name: hostPoolName
      value: string
      description: Required parameter for the session_host_managements resource.
    - name: properties
      value: object
      description: |
        Detailed properties for SessionHostManagement
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

Update a SessionHostManagement.

```sql
UPDATE azure.desktop_virtualization.session_host_managements
SET 
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND hostPoolName = '{{ hostPoolName }}' --required
RETURNING
properties;
```
</TabItem>
</Tabs>
