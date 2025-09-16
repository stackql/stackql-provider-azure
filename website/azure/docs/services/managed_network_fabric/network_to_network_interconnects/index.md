--- 
title: network_to_network_interconnects
hide_title: false
hide_table_of_contents: false
keywords:
  - network_to_network_interconnects
  - managed_network_fabric
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

Creates, updates, deletes, gets or lists a <code>network_to_network_interconnects</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>network_to_network_interconnects</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_network_fabric.network_to_network_interconnects" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_network_fabric', value: 'list_by_network_fabric' }
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
    <td>Resource properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_network_fabric">

Lists all Network To Network Interconnects under the resource group.

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
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkFabricName"><code>networkFabricName</code></a>, <a href="#parameter-networkToNetworkInterconnectName"><code>networkToNetworkInterconnectName</code></a></td>
    <td></td>
    <td>Implements NetworkToNetworkInterconnects GET method.</td>
</tr>
<tr>
    <td><a href="#list_by_network_fabric"><CopyableCode code="list_by_network_fabric" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkFabricName"><code>networkFabricName</code></a></td>
    <td></td>
    <td>Implements Network To Network Interconnects list by Network Fabric GET method.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkFabricName"><code>networkFabricName</code></a>, <a href="#parameter-networkToNetworkInterconnectName"><code>networkToNetworkInterconnectName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Configuration used to setup CE-PE connectivity PUT Method.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkFabricName"><code>networkFabricName</code></a>, <a href="#parameter-networkToNetworkInterconnectName"><code>networkToNetworkInterconnectName</code></a></td>
    <td></td>
    <td>Update certain properties of the Network To NetworkInterconnects resource.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkFabricName"><code>networkFabricName</code></a>, <a href="#parameter-networkToNetworkInterconnectName"><code>networkToNetworkInterconnectName</code></a></td>
    <td></td>
    <td>Implements NetworkToNetworkInterconnects DELETE method.</td>
</tr>
<tr>
    <td><a href="#update_npb_static_route_bfd_administrative_state"><CopyableCode code="update_npb_static_route_bfd_administrative_state" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkFabricName"><code>networkFabricName</code></a>, <a href="#parameter-networkToNetworkInterconnectName"><code>networkToNetworkInterconnectName</code></a></td>
    <td></td>
    <td>Updates the NPB Static Route BFD Administrative State.</td>
</tr>
<tr>
    <td><a href="#update_administrative_state"><CopyableCode code="update_administrative_state" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkFabricName"><code>networkFabricName</code></a>, <a href="#parameter-networkToNetworkInterconnectName"><code>networkToNetworkInterconnectName</code></a></td>
    <td></td>
    <td>Updates the Admin State.</td>
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
<tr id="parameter-networkFabricName">
    <td><CopyableCode code="networkFabricName" /></td>
    <td><code>string</code></td>
    <td>Name of the Network Fabric.</td>
</tr>
<tr id="parameter-networkToNetworkInterconnectName">
    <td><CopyableCode code="networkToNetworkInterconnectName" /></td>
    <td><code>string</code></td>
    <td>Name of the Network to Network Interconnect.</td>
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
        { label: 'list_by_network_fabric', value: 'list_by_network_fabric' }
    ]}
>
<TabItem value="get">

Implements NetworkToNetworkInterconnects GET method.

```sql
SELECT
properties
FROM azure.managed_network_fabric.network_to_network_interconnects
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND networkFabricName = '{{ networkFabricName }}' -- required
AND networkToNetworkInterconnectName = '{{ networkToNetworkInterconnectName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_network_fabric">

Implements Network To Network Interconnects list by Network Fabric GET method.

```sql
SELECT
properties
FROM azure.managed_network_fabric.network_to_network_interconnects
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND networkFabricName = '{{ networkFabricName }}' -- required
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

Configuration used to setup CE-PE connectivity PUT Method.

```sql
INSERT INTO azure.managed_network_fabric.network_to_network_interconnects (
data__properties,
subscriptionId,
resourceGroupName,
networkFabricName,
networkToNetworkInterconnectName
)
SELECT 
'{{ properties }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ networkFabricName }}',
'{{ networkToNetworkInterconnectName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: network_to_network_interconnects
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the network_to_network_interconnects resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the network_to_network_interconnects resource.
    - name: networkFabricName
      value: string
      description: Required parameter for the network_to_network_interconnects resource.
    - name: networkToNetworkInterconnectName
      value: string
      description: Required parameter for the network_to_network_interconnects resource.
    - name: properties
      value: object
      description: |
        Resource properties.
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

Update certain properties of the Network To NetworkInterconnects resource.

```sql
UPDATE azure.managed_network_fabric.network_to_network_interconnects
SET 
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND networkFabricName = '{{ networkFabricName }}' --required
AND networkToNetworkInterconnectName = '{{ networkToNetworkInterconnectName }}' --required
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

Implements NetworkToNetworkInterconnects DELETE method.

```sql
DELETE FROM azure.managed_network_fabric.network_to_network_interconnects
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND networkFabricName = '{{ networkFabricName }}' --required
AND networkToNetworkInterconnectName = '{{ networkToNetworkInterconnectName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="update_npb_static_route_bfd_administrative_state"
    values={[
        { label: 'update_npb_static_route_bfd_administrative_state', value: 'update_npb_static_route_bfd_administrative_state' },
        { label: 'update_administrative_state', value: 'update_administrative_state' }
    ]}
>
<TabItem value="update_npb_static_route_bfd_administrative_state">

Updates the NPB Static Route BFD Administrative State.

```sql
EXEC azure.managed_network_fabric.network_to_network_interconnects.update_npb_static_route_bfd_administrative_state 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@networkFabricName='{{ networkFabricName }}' --required, 
@networkToNetworkInterconnectName='{{ networkToNetworkInterconnectName }}' --required 
@@json=
'{
"state": "{{ state }}", 
"resourceIds": "{{ resourceIds }}"
}'
;
```
</TabItem>
<TabItem value="update_administrative_state">

Updates the Admin State.

```sql
EXEC azure.managed_network_fabric.network_to_network_interconnects.update_administrative_state 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@networkFabricName='{{ networkFabricName }}' --required, 
@networkToNetworkInterconnectName='{{ networkToNetworkInterconnectName }}' --required 
@@json=
'{
"state": "{{ state }}", 
"resourceIds": "{{ resourceIds }}"
}'
;
```
</TabItem>
</Tabs>
