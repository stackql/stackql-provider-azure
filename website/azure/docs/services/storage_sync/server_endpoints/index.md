--- 
title: server_endpoints
hide_title: false
hide_table_of_contents: false
keywords:
  - server_endpoints
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

Creates, updates, deletes, gets or lists a <code>server_endpoints</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>server_endpoints</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage_sync.server_endpoints" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_sync_group', value: 'list_by_sync_group' }
    ]}
>
<TabItem value="get">

Server Endpoint object

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
    <td>Server Endpoint properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_sync_group">

Array of Server Endpoint resources in Sync Group

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
    <td>Server Endpoint properties.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageSyncServiceName"><code>storageSyncServiceName</code></a>, <a href="#parameter-syncGroupName"><code>syncGroupName</code></a>, <a href="#parameter-serverEndpointName"><code>serverEndpointName</code></a></td>
    <td></td>
    <td>Get a ServerEndpoint.</td>
</tr>
<tr>
    <td><a href="#list_by_sync_group"><CopyableCode code="list_by_sync_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageSyncServiceName"><code>storageSyncServiceName</code></a>, <a href="#parameter-syncGroupName"><code>syncGroupName</code></a></td>
    <td></td>
    <td>Get a ServerEndpoint list.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageSyncServiceName"><code>storageSyncServiceName</code></a>, <a href="#parameter-syncGroupName"><code>syncGroupName</code></a>, <a href="#parameter-serverEndpointName"><code>serverEndpointName</code></a></td>
    <td></td>
    <td>Create a new ServerEndpoint.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageSyncServiceName"><code>storageSyncServiceName</code></a>, <a href="#parameter-syncGroupName"><code>syncGroupName</code></a>, <a href="#parameter-serverEndpointName"><code>serverEndpointName</code></a></td>
    <td></td>
    <td>Patch a given ServerEndpoint.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageSyncServiceName"><code>storageSyncServiceName</code></a>, <a href="#parameter-syncGroupName"><code>syncGroupName</code></a>, <a href="#parameter-serverEndpointName"><code>serverEndpointName</code></a></td>
    <td></td>
    <td>Delete a given ServerEndpoint.</td>
</tr>
<tr>
    <td><a href="#recall_action"><CopyableCode code="recall_action" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageSyncServiceName"><code>storageSyncServiceName</code></a>, <a href="#parameter-syncGroupName"><code>syncGroupName</code></a>, <a href="#parameter-serverEndpointName"><code>serverEndpointName</code></a></td>
    <td></td>
    <td>Recall a server endpoint.</td>
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
<tr id="parameter-serverEndpointName">
    <td><CopyableCode code="serverEndpointName" /></td>
    <td><code>string</code></td>
    <td>Name of Server Endpoint object.</td>
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
<tr id="parameter-syncGroupName">
    <td><CopyableCode code="syncGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of Sync Group resource.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_sync_group', value: 'list_by_sync_group' }
    ]}
>
<TabItem value="get">

Get a ServerEndpoint.

```sql
SELECT
properties
FROM azure.storage_sync.server_endpoints
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND storageSyncServiceName = '{{ storageSyncServiceName }}' -- required
AND syncGroupName = '{{ syncGroupName }}' -- required
AND serverEndpointName = '{{ serverEndpointName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_sync_group">

Get a ServerEndpoint list.

```sql
SELECT
properties
FROM azure.storage_sync.server_endpoints
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND storageSyncServiceName = '{{ storageSyncServiceName }}' -- required
AND syncGroupName = '{{ syncGroupName }}' -- required
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

Create a new ServerEndpoint.

```sql
INSERT INTO azure.storage_sync.server_endpoints (
data__properties,
subscriptionId,
resourceGroupName,
storageSyncServiceName,
syncGroupName,
serverEndpointName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ storageSyncServiceName }}',
'{{ syncGroupName }}',
'{{ serverEndpointName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: server_endpoints
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the server_endpoints resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the server_endpoints resource.
    - name: storageSyncServiceName
      value: string
      description: Required parameter for the server_endpoints resource.
    - name: syncGroupName
      value: string
      description: Required parameter for the server_endpoints resource.
    - name: serverEndpointName
      value: string
      description: Required parameter for the server_endpoints resource.
    - name: properties
      value: object
      description: |
        The parameters used to create the server endpoint.
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

Patch a given ServerEndpoint.

```sql
UPDATE azure.storage_sync.server_endpoints
SET 
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND storageSyncServiceName = '{{ storageSyncServiceName }}' --required
AND syncGroupName = '{{ syncGroupName }}' --required
AND serverEndpointName = '{{ serverEndpointName }}' --required
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

Delete a given ServerEndpoint.

```sql
DELETE FROM azure.storage_sync.server_endpoints
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND storageSyncServiceName = '{{ storageSyncServiceName }}' --required
AND syncGroupName = '{{ syncGroupName }}' --required
AND serverEndpointName = '{{ serverEndpointName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="recall_action"
    values={[
        { label: 'recall_action', value: 'recall_action' }
    ]}
>
<TabItem value="recall_action">

Recall a server endpoint.

```sql
EXEC azure.storage_sync.server_endpoints.recall_action 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@storageSyncServiceName='{{ storageSyncServiceName }}' --required, 
@syncGroupName='{{ syncGroupName }}' --required, 
@serverEndpointName='{{ serverEndpointName }}' --required 
@@json=
'{
"pattern": "{{ pattern }}", 
"recallPath": "{{ recallPath }}"
}'
;
```
</TabItem>
</Tabs>
