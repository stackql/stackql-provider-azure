--- 
title: packet_core_data_planes
hide_title: false
hide_table_of_contents: false
keywords:
  - packet_core_data_planes
  - mobile_network
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

Creates, updates, deletes, gets or lists a <code>packet_core_data_planes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>packet_core_data_planes</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.mobile_network.packet_core_data_planes" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_packet_core_control_plane', value: 'list_by_packet_core_control_plane' }
    ]}
>
<TabItem value="get">

Request successful. The operation returns the resulting packet core data plane resource.

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
    <td>Packet core data plane Properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_packet_core_control_plane">

Request successful. The operation returns a list of packet core data plane resources.

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
    <td>Packet core data plane Properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-packetCoreControlPlaneName"><code>packetCoreControlPlaneName</code></a>, <a href="#parameter-packetCoreDataPlaneName"><code>packetCoreDataPlaneName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets information about the specified packet core data plane.</td>
</tr>
<tr>
    <td><a href="#list_by_packet_core_control_plane"><CopyableCode code="list_by_packet_core_control_plane" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-packetCoreControlPlaneName"><code>packetCoreControlPlaneName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Lists all the packet core data planes associated with a packet core control plane.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-packetCoreControlPlaneName"><code>packetCoreControlPlaneName</code></a>, <a href="#parameter-packetCoreDataPlaneName"><code>packetCoreDataPlaneName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Creates or updates a packet core data plane. Must be created in the same location as its parent packet core control plane.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-packetCoreControlPlaneName"><code>packetCoreControlPlaneName</code></a>, <a href="#parameter-packetCoreDataPlaneName"><code>packetCoreDataPlaneName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes the specified packet core data plane.</td>
</tr>
<tr>
    <td><a href="#update_tags"><CopyableCode code="update_tags" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-packetCoreControlPlaneName"><code>packetCoreControlPlaneName</code></a>, <a href="#parameter-packetCoreDataPlaneName"><code>packetCoreDataPlaneName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Updates packet core data planes tags.</td>
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
<tr id="parameter-packetCoreControlPlaneName">
    <td><CopyableCode code="packetCoreControlPlaneName" /></td>
    <td><code>string</code></td>
    <td>The name of the packet core control plane.</td>
</tr>
<tr id="parameter-packetCoreDataPlaneName">
    <td><CopyableCode code="packetCoreDataPlaneName" /></td>
    <td><code>string</code></td>
    <td>The name of the packet core data plane.</td>
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
        { label: 'list_by_packet_core_control_plane', value: 'list_by_packet_core_control_plane' }
    ]}
>
<TabItem value="get">

Gets information about the specified packet core data plane.

```sql
SELECT
location,
properties,
tags
FROM azure.mobile_network.packet_core_data_planes
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND packetCoreControlPlaneName = '{{ packetCoreControlPlaneName }}' -- required
AND packetCoreDataPlaneName = '{{ packetCoreDataPlaneName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_packet_core_control_plane">

Lists all the packet core data planes associated with a packet core control plane.

```sql
SELECT
location,
properties,
tags
FROM azure.mobile_network.packet_core_data_planes
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND packetCoreControlPlaneName = '{{ packetCoreControlPlaneName }}' -- required
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

Creates or updates a packet core data plane. Must be created in the same location as its parent packet core control plane.

```sql
INSERT INTO azure.mobile_network.packet_core_data_planes (
data__properties,
data__tags,
data__location,
resourceGroupName,
packetCoreControlPlaneName,
packetCoreDataPlaneName,
subscriptionId
)
SELECT 
'{{ properties }}' /* required */,
'{{ tags }}',
'{{ location }}',
'{{ resourceGroupName }}',
'{{ packetCoreControlPlaneName }}',
'{{ packetCoreDataPlaneName }}',
'{{ subscriptionId }}'
RETURNING
location,
properties,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: packet_core_data_planes
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the packet_core_data_planes resource.
    - name: packetCoreControlPlaneName
      value: string
      description: Required parameter for the packet_core_data_planes resource.
    - name: packetCoreDataPlaneName
      value: string
      description: Required parameter for the packet_core_data_planes resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the packet_core_data_planes resource.
    - name: properties
      value: object
      description: |
        Packet core data plane Properties.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        The geo-location where the resource lives
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

Deletes the specified packet core data plane.

```sql
DELETE FROM azure.mobile_network.packet_core_data_planes
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND packetCoreControlPlaneName = '{{ packetCoreControlPlaneName }}' --required
AND packetCoreDataPlaneName = '{{ packetCoreDataPlaneName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="update_tags"
    values={[
        { label: 'update_tags', value: 'update_tags' }
    ]}
>
<TabItem value="update_tags">

Updates packet core data planes tags.

```sql
EXEC azure.mobile_network.packet_core_data_planes.update_tags 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@packetCoreControlPlaneName='{{ packetCoreControlPlaneName }}' --required, 
@packetCoreDataPlaneName='{{ packetCoreDataPlaneName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"tags": "{{ tags }}"
}'
;
```
</TabItem>
</Tabs>
