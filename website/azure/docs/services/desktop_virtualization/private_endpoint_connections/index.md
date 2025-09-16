--- 
title: private_endpoint_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - private_endpoint_connections
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

Creates, updates, deletes, gets or lists a <code>private_endpoint_connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>private_endpoint_connections</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.desktop_virtualization.private_endpoint_connections" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_by_workspace"
    values={[
        { label: 'get_by_workspace', value: 'get_by_workspace' },
        { label: 'get_by_host_pool', value: 'get_by_host_pool' },
        { label: 'list_by_workspace', value: 'list_by_workspace' },
        { label: 'list_by_host_pool', value: 'list_by_host_pool' }
    ]}
>
<TabItem value="get_by_workspace">

Successfully retrieved the connection.

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
    <td>Resource properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_by_host_pool">

Successfully retrieved the connection.

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
    <td>Resource properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_workspace">

Successfully retrieved connection list.

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
    <td>Resource properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_host_pool">

Successfully retrieved connection list.

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
    <td>Resource properties.</td>
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
    <td><a href="#get_by_workspace"><CopyableCode code="get_by_workspace" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-privateEndpointConnectionName"><code>privateEndpointConnectionName</code></a></td>
    <td></td>
    <td>Get a private endpoint connection.</td>
</tr>
<tr>
    <td><a href="#get_by_host_pool"><CopyableCode code="get_by_host_pool" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-hostPoolName"><code>hostPoolName</code></a>, <a href="#parameter-privateEndpointConnectionName"><code>privateEndpointConnectionName</code></a></td>
    <td></td>
    <td>Get a private endpoint connection.</td>
</tr>
<tr>
    <td><a href="#list_by_workspace"><CopyableCode code="list_by_workspace" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a></td>
    <td></td>
    <td>List private endpoint connections.</td>
</tr>
<tr>
    <td><a href="#list_by_host_pool"><CopyableCode code="list_by_host_pool" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-hostPoolName"><code>hostPoolName</code></a></td>
    <td><a href="#parameter-pageSize"><code>pageSize</code></a>, <a href="#parameter-isDescending"><code>isDescending</code></a>, <a href="#parameter-initialSkip"><code>initialSkip</code></a></td>
    <td>List private endpoint connections associated with hostpool.</td>
</tr>
<tr>
    <td><a href="#delete_by_workspace"><CopyableCode code="delete_by_workspace" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-privateEndpointConnectionName"><code>privateEndpointConnectionName</code></a></td>
    <td></td>
    <td>Remove a connection.</td>
</tr>
<tr>
    <td><a href="#delete_by_host_pool"><CopyableCode code="delete_by_host_pool" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-hostPoolName"><code>hostPoolName</code></a>, <a href="#parameter-privateEndpointConnectionName"><code>privateEndpointConnectionName</code></a></td>
    <td></td>
    <td>Remove a connection.</td>
</tr>
<tr>
    <td><a href="#update_by_workspace"><CopyableCode code="update_by_workspace" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-privateEndpointConnectionName"><code>privateEndpointConnectionName</code></a></td>
    <td></td>
    <td>Approve or reject a private endpoint connection.</td>
</tr>
<tr>
    <td><a href="#update_by_host_pool"><CopyableCode code="update_by_host_pool" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-hostPoolName"><code>hostPoolName</code></a>, <a href="#parameter-privateEndpointConnectionName"><code>privateEndpointConnectionName</code></a></td>
    <td></td>
    <td>Approve or reject a private endpoint connection.</td>
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
<tr id="parameter-privateEndpointConnectionName">
    <td><CopyableCode code="privateEndpointConnectionName" /></td>
    <td><code>string</code></td>
    <td>The name of the private endpoint connection associated with the Azure resource.</td>
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
<tr id="parameter-workspaceName">
    <td><CopyableCode code="workspaceName" /></td>
    <td><code>string</code></td>
    <td>The name of the workspace</td>
</tr>
<tr id="parameter-initialSkip">
    <td><CopyableCode code="initialSkip" /></td>
    <td><code>integer (int32)</code></td>
    <td>Initial number of items to skip.</td>
</tr>
<tr id="parameter-isDescending">
    <td><CopyableCode code="isDescending" /></td>
    <td><code>boolean</code></td>
    <td>Indicates whether the collection is descending.</td>
</tr>
<tr id="parameter-pageSize">
    <td><CopyableCode code="pageSize" /></td>
    <td><code>integer (int32)</code></td>
    <td>Number of items per page.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_by_workspace"
    values={[
        { label: 'get_by_workspace', value: 'get_by_workspace' },
        { label: 'get_by_host_pool', value: 'get_by_host_pool' },
        { label: 'list_by_workspace', value: 'list_by_workspace' },
        { label: 'list_by_host_pool', value: 'list_by_host_pool' }
    ]}
>
<TabItem value="get_by_workspace">

Get a private endpoint connection.

```sql
SELECT
properties
FROM azure.desktop_virtualization.private_endpoint_connections
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND workspaceName = '{{ workspaceName }}' -- required
AND privateEndpointConnectionName = '{{ privateEndpointConnectionName }}' -- required
;
```
</TabItem>
<TabItem value="get_by_host_pool">

Get a private endpoint connection.

```sql
SELECT
properties
FROM azure.desktop_virtualization.private_endpoint_connections
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND hostPoolName = '{{ hostPoolName }}' -- required
AND privateEndpointConnectionName = '{{ privateEndpointConnectionName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_workspace">

List private endpoint connections.

```sql
SELECT
properties
FROM azure.desktop_virtualization.private_endpoint_connections
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND workspaceName = '{{ workspaceName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_host_pool">

List private endpoint connections associated with hostpool.

```sql
SELECT
properties
FROM azure.desktop_virtualization.private_endpoint_connections
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND hostPoolName = '{{ hostPoolName }}' -- required
AND pageSize = '{{ pageSize }}'
AND isDescending = '{{ isDescending }}'
AND initialSkip = '{{ initialSkip }}'
;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_by_workspace"
    values={[
        { label: 'delete_by_workspace', value: 'delete_by_workspace' },
        { label: 'delete_by_host_pool', value: 'delete_by_host_pool' }
    ]}
>
<TabItem value="delete_by_workspace">

Remove a connection.

```sql
DELETE FROM azure.desktop_virtualization.private_endpoint_connections
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND workspaceName = '{{ workspaceName }}' --required
AND privateEndpointConnectionName = '{{ privateEndpointConnectionName }}' --required
;
```
</TabItem>
<TabItem value="delete_by_host_pool">

Remove a connection.

```sql
DELETE FROM azure.desktop_virtualization.private_endpoint_connections
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND hostPoolName = '{{ hostPoolName }}' --required
AND privateEndpointConnectionName = '{{ privateEndpointConnectionName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="update_by_workspace"
    values={[
        { label: 'update_by_workspace', value: 'update_by_workspace' },
        { label: 'update_by_host_pool', value: 'update_by_host_pool' }
    ]}
>
<TabItem value="update_by_workspace">

Approve or reject a private endpoint connection.

```sql
EXEC azure.desktop_virtualization.private_endpoint_connections.update_by_workspace 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@workspaceName='{{ workspaceName }}' --required, 
@privateEndpointConnectionName='{{ privateEndpointConnectionName }}' --required 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="update_by_host_pool">

Approve or reject a private endpoint connection.

```sql
EXEC azure.desktop_virtualization.private_endpoint_connections.update_by_host_pool 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@hostPoolName='{{ hostPoolName }}' --required, 
@privateEndpointConnectionName='{{ privateEndpointConnectionName }}' --required 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
</Tabs>
