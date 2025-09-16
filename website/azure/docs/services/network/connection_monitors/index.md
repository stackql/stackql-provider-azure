--- 
title: connection_monitors
hide_title: false
hide_table_of_contents: false
keywords:
  - connection_monitors
  - network
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

Creates, updates, deletes, gets or lists a <code>connection_monitors</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>connection_monitors</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.connection_monitors" /></td></tr>
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

Request successful. The operation returns a connection monitor.

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
    <td>ID of the connection monitor.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the connection monitor.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Connection monitor location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the connection monitor result.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Connection monitor tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Connection monitor type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Successful connection monitor enumeration request.

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
    <td>ID of the connection monitor.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the connection monitor.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Connection monitor location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the connection monitor result.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Connection monitor tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Connection monitor type.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkWatcherName"><code>networkWatcherName</code></a>, <a href="#parameter-connectionMonitorName"><code>connectionMonitorName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets a connection monitor by name.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkWatcherName"><code>networkWatcherName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Lists all connection monitors for the specified Network Watcher.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkWatcherName"><code>networkWatcherName</code></a>, <a href="#parameter-connectionMonitorName"><code>connectionMonitorName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td><a href="#parameter-migrate"><code>migrate</code></a></td>
    <td>Create or update a connection monitor.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkWatcherName"><code>networkWatcherName</code></a>, <a href="#parameter-connectionMonitorName"><code>connectionMonitorName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes the specified connection monitor.</td>
</tr>
<tr>
    <td><a href="#update_tags"><CopyableCode code="update_tags" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkWatcherName"><code>networkWatcherName</code></a>, <a href="#parameter-connectionMonitorName"><code>connectionMonitorName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Update tags of the specified connection monitor.</td>
</tr>
<tr>
    <td><a href="#stop"><CopyableCode code="stop" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkWatcherName"><code>networkWatcherName</code></a>, <a href="#parameter-connectionMonitorName"><code>connectionMonitorName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Stops the specified connection monitor.</td>
</tr>
<tr>
    <td><a href="#start"><CopyableCode code="start" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkWatcherName"><code>networkWatcherName</code></a>, <a href="#parameter-connectionMonitorName"><code>connectionMonitorName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Starts the specified connection monitor.</td>
</tr>
<tr>
    <td><a href="#query"><CopyableCode code="query" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkWatcherName"><code>networkWatcherName</code></a>, <a href="#parameter-connectionMonitorName"><code>connectionMonitorName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Query a snapshot of the most recent connection states.</td>
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
<tr id="parameter-connectionMonitorName">
    <td><CopyableCode code="connectionMonitorName" /></td>
    <td><code>string</code></td>
    <td>The name given to the connection monitor.</td>
</tr>
<tr id="parameter-networkWatcherName">
    <td><CopyableCode code="networkWatcherName" /></td>
    <td><code>string</code></td>
    <td>The name of the Network Watcher resource.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group containing Network Watcher.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-migrate">
    <td><CopyableCode code="migrate" /></td>
    <td><code>string</code></td>
    <td>Value indicating whether connection monitor V1 should be migrated to V2 format.</td>
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

Gets a connection monitor by name.

```sql
SELECT
id,
name,
etag,
location,
properties,
tags,
type
FROM azure.network.connection_monitors
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND networkWatcherName = '{{ networkWatcherName }}' -- required
AND connectionMonitorName = '{{ connectionMonitorName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists all connection monitors for the specified Network Watcher.

```sql
SELECT
id,
name,
etag,
location,
properties,
tags,
type
FROM azure.network.connection_monitors
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND networkWatcherName = '{{ networkWatcherName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
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

Create or update a connection monitor.

```sql
INSERT INTO azure.network.connection_monitors (
data__location,
data__tags,
data__properties,
resourceGroupName,
networkWatcherName,
connectionMonitorName,
subscriptionId,
migrate
)
SELECT 
'{{ location }}',
'{{ tags }}',
'{{ properties }}' /* required */,
'{{ resourceGroupName }}',
'{{ networkWatcherName }}',
'{{ connectionMonitorName }}',
'{{ subscriptionId }}',
'{{ migrate }}'
RETURNING
id,
name,
etag,
location,
properties,
tags,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: connection_monitors
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the connection_monitors resource.
    - name: networkWatcherName
      value: string
      description: Required parameter for the connection_monitors resource.
    - name: connectionMonitorName
      value: string
      description: Required parameter for the connection_monitors resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the connection_monitors resource.
    - name: location
      value: string
      description: |
        Connection monitor location.
    - name: tags
      value: object
      description: |
        Connection monitor tags.
    - name: properties
      value: object
      description: |
        Properties of the connection monitor.
    - name: migrate
      value: string
      description: Value indicating whether connection monitor V1 should be migrated to V2 format.
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

Deletes the specified connection monitor.

```sql
DELETE FROM azure.network.connection_monitors
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND networkWatcherName = '{{ networkWatcherName }}' --required
AND connectionMonitorName = '{{ connectionMonitorName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="update_tags"
    values={[
        { label: 'update_tags', value: 'update_tags' },
        { label: 'stop', value: 'stop' },
        { label: 'start', value: 'start' },
        { label: 'query', value: 'query' }
    ]}
>
<TabItem value="update_tags">

Update tags of the specified connection monitor.

```sql
EXEC azure.network.connection_monitors.update_tags 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@networkWatcherName='{{ networkWatcherName }}' --required, 
@connectionMonitorName='{{ connectionMonitorName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"tags": "{{ tags }}"
}'
;
```
</TabItem>
<TabItem value="stop">

Stops the specified connection monitor.

```sql
EXEC azure.network.connection_monitors.stop 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@networkWatcherName='{{ networkWatcherName }}' --required, 
@connectionMonitorName='{{ connectionMonitorName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="start">

Starts the specified connection monitor.

```sql
EXEC azure.network.connection_monitors.start 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@networkWatcherName='{{ networkWatcherName }}' --required, 
@connectionMonitorName='{{ connectionMonitorName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="query">

Query a snapshot of the most recent connection states.

```sql
EXEC azure.network.connection_monitors.query 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@networkWatcherName='{{ networkWatcherName }}' --required, 
@connectionMonitorName='{{ connectionMonitorName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
