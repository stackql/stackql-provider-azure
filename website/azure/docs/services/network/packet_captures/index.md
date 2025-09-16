--- 
title: packet_captures
hide_title: false
hide_table_of_contents: false
keywords:
  - packet_captures
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

Creates, updates, deletes, gets or lists a <code>packet_captures</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>packet_captures</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.packet_captures" /></td></tr>
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

Request successful. The operation returns a packet capture session.

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
    <td>ID of the packet capture operation.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the packet capture session.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the packet capture result.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Successful packet capture enumeration request.

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
    <td>ID of the packet capture operation.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the packet capture session.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the packet capture result.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkWatcherName"><code>networkWatcherName</code></a>, <a href="#parameter-packetCaptureName"><code>packetCaptureName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets a packet capture session by name.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkWatcherName"><code>networkWatcherName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Lists all packet capture sessions within the specified resource group.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkWatcherName"><code>networkWatcherName</code></a>, <a href="#parameter-packetCaptureName"><code>packetCaptureName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Create and start a packet capture on the specified VM.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkWatcherName"><code>networkWatcherName</code></a>, <a href="#parameter-packetCaptureName"><code>packetCaptureName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes the specified packet capture session.</td>
</tr>
<tr>
    <td><a href="#stop"><CopyableCode code="stop" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkWatcherName"><code>networkWatcherName</code></a>, <a href="#parameter-packetCaptureName"><code>packetCaptureName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Stops a specified packet capture session.</td>
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
<tr id="parameter-networkWatcherName">
    <td><CopyableCode code="networkWatcherName" /></td>
    <td><code>string</code></td>
    <td>The name of the network watcher.</td>
</tr>
<tr id="parameter-packetCaptureName">
    <td><CopyableCode code="packetCaptureName" /></td>
    <td><code>string</code></td>
    <td>The name of the packet capture session.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group.</td>
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

Gets a packet capture session by name.

```sql
SELECT
id,
name,
etag,
properties
FROM azure.network.packet_captures
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND networkWatcherName = '{{ networkWatcherName }}' -- required
AND packetCaptureName = '{{ packetCaptureName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists all packet capture sessions within the specified resource group.

```sql
SELECT
id,
name,
etag,
properties
FROM azure.network.packet_captures
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND networkWatcherName = '{{ networkWatcherName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
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

Create and start a packet capture on the specified VM.

```sql
INSERT INTO azure.network.packet_captures (
data__properties,
resourceGroupName,
networkWatcherName,
packetCaptureName,
subscriptionId
)
SELECT 
'{{ properties }}' /* required */,
'{{ resourceGroupName }}',
'{{ networkWatcherName }}',
'{{ packetCaptureName }}',
'{{ subscriptionId }}'
RETURNING
id,
name,
etag,
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: packet_captures
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the packet_captures resource.
    - name: networkWatcherName
      value: string
      description: Required parameter for the packet_captures resource.
    - name: packetCaptureName
      value: string
      description: Required parameter for the packet_captures resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the packet_captures resource.
    - name: properties
      value: object
      description: |
        Properties of the packet capture.
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

Deletes the specified packet capture session.

```sql
DELETE FROM azure.network.packet_captures
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND networkWatcherName = '{{ networkWatcherName }}' --required
AND packetCaptureName = '{{ packetCaptureName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="stop"
    values={[
        { label: 'stop', value: 'stop' }
    ]}
>
<TabItem value="stop">

Stops a specified packet capture session.

```sql
EXEC azure.network.packet_captures.stop 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@networkWatcherName='{{ networkWatcherName }}' --required, 
@packetCaptureName='{{ packetCaptureName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
