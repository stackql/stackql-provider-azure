--- 
title: registered_servers
hide_title: false
hide_table_of_contents: false
keywords:
  - registered_servers
  - storage_sync
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

Creates, updates, deletes, gets or lists a <code>registered_servers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>registered_servers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage_sync.registered_servers" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_storage_sync_service', value: 'list_by_storage_sync_service' }
    ]}
>
<TabItem value="get">

Registered Server resources in Sync Group

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
    <td>RegisteredServer properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_storage_sync_service">

Array of Registered Server resources in Storage Sync Service

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
    <td>RegisteredServer properties.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageSyncServiceName"><code>storageSyncServiceName</code></a>, <a href="#parameter-serverId"><code>serverId</code></a></td>
    <td></td>
    <td>Get a given registered server.</td>
</tr>
<tr>
    <td><a href="#list_by_storage_sync_service"><CopyableCode code="list_by_storage_sync_service" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageSyncServiceName"><code>storageSyncServiceName</code></a></td>
    <td></td>
    <td>Get a given registered server list.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageSyncServiceName"><code>storageSyncServiceName</code></a>, <a href="#parameter-serverId"><code>serverId</code></a></td>
    <td></td>
    <td>Add a new registered server.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageSyncServiceName"><code>storageSyncServiceName</code></a>, <a href="#parameter-serverId"><code>serverId</code></a></td>
    <td></td>
    <td>Update registered server.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageSyncServiceName"><code>storageSyncServiceName</code></a>, <a href="#parameter-serverId"><code>serverId</code></a></td>
    <td></td>
    <td>Delete the given registered server.</td>
</tr>
<tr>
    <td><a href="#trigger_rollover"><CopyableCode code="trigger_rollover" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageSyncServiceName"><code>storageSyncServiceName</code></a>, <a href="#parameter-serverId"><code>serverId</code></a></td>
    <td></td>
    <td>Triggers Server certificate rollover.</td>
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
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-serverId">
    <td><CopyableCode code="serverId" /></td>
    <td><code>string</code></td>
    <td>Server Id</td>
</tr>
<tr id="parameter-storageSyncServiceName">
    <td><CopyableCode code="storageSyncServiceName" /></td>
    <td><code>string</code></td>
    <td>Name of Storage Sync Service resource.</td>
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
        { label: 'list_by_storage_sync_service', value: 'list_by_storage_sync_service' }
    ]}
>
<TabItem value="get">

Get a given registered server.

```sql
SELECT
properties
FROM azure.storage_sync.registered_servers
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND storageSyncServiceName = '{{ storageSyncServiceName }}' -- required
AND serverId = '{{ serverId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_storage_sync_service">

Get a given registered server list.

```sql
SELECT
properties
FROM azure.storage_sync.registered_servers
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND storageSyncServiceName = '{{ storageSyncServiceName }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

Add a new registered server.

```sql
INSERT INTO azure.storage_sync.registered_servers (
data__properties,
subscriptionId,
resourceGroupName,
storageSyncServiceName,
serverId
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ storageSyncServiceName }}',
'{{ serverId }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: registered_servers
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the registered_servers resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the registered_servers resource.
    - name: storageSyncServiceName
      value: string
      description: Required parameter for the registered_servers resource.
    - name: serverId
      value: string
      description: Required parameter for the registered_servers resource.
    - name: properties
      value: object
      description: |
        The parameters used to create the registered server.
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

Update registered server.

```sql
UPDATE azure.storage_sync.registered_servers
SET 
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND storageSyncServiceName = '{{ storageSyncServiceName }}' --required
AND serverId = '{{ serverId }}' --required
RETURNING
properties;
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

Delete the given registered server.

```sql
DELETE FROM azure.storage_sync.registered_servers
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND storageSyncServiceName = '{{ storageSyncServiceName }}' --required
AND serverId = '{{ serverId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="trigger_rollover"
    values={[
        { label: 'trigger_rollover', value: 'trigger_rollover' }
    ]}
>
<TabItem value="trigger_rollover">

Triggers Server certificate rollover.

```sql
EXEC azure.storage_sync.registered_servers.trigger_rollover 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@storageSyncServiceName='{{ storageSyncServiceName }}' --required, 
@serverId='{{ serverId }}' --required 
@@json=
'{
"serverCertificate": "{{ serverCertificate }}"
}'
;
```
</TabItem>
</Tabs>
