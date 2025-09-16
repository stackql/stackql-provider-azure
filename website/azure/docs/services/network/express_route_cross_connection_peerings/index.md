--- 
title: express_route_cross_connection_peerings
hide_title: false
hide_table_of_contents: false
keywords:
  - express_route_cross_connection_peerings
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

Creates, updates, deletes, gets or lists an <code>express_route_cross_connection_peerings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>express_route_cross_connection_peerings</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.express_route_cross_connection_peerings" /></td></tr>
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

Request successful. The operation returns the resulting ExpressRouteCrossConnectionPeering resource.

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
    <td>Resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource that is unique within a resource group. This name can be used to access the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the express route cross connection peering.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Request successful. The operation returns a list of ExpressRouteCrossConnectionPeering resources.

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
    <td>Resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource that is unique within a resource group. This name can be used to access the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the express route cross connection peering.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-crossConnectionName"><code>crossConnectionName</code></a>, <a href="#parameter-peeringName"><code>peeringName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets the specified peering for the ExpressRouteCrossConnection.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-crossConnectionName"><code>crossConnectionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets all peerings in a specified ExpressRouteCrossConnection.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-crossConnectionName"><code>crossConnectionName</code></a>, <a href="#parameter-peeringName"><code>peeringName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates or updates a peering in the specified ExpressRouteCrossConnection.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-crossConnectionName"><code>crossConnectionName</code></a>, <a href="#parameter-peeringName"><code>peeringName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes the specified peering from the ExpressRouteCrossConnection.</td>
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
<tr id="parameter-crossConnectionName">
    <td><CopyableCode code="crossConnectionName" /></td>
    <td><code>string</code></td>
    <td>The name of the ExpressRouteCrossConnection.</td>
</tr>
<tr id="parameter-peeringName">
    <td><CopyableCode code="peeringName" /></td>
    <td><code>string</code></td>
    <td>The name of the peering.</td>
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

Gets the specified peering for the ExpressRouteCrossConnection.

```sql
SELECT
id,
name,
etag,
properties
FROM azure.network.express_route_cross_connection_peerings
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND crossConnectionName = '{{ crossConnectionName }}' -- required
AND peeringName = '{{ peeringName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets all peerings in a specified ExpressRouteCrossConnection.

```sql
SELECT
id,
name,
etag,
properties
FROM azure.network.express_route_cross_connection_peerings
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND crossConnectionName = '{{ crossConnectionName }}' -- required
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

Creates or updates a peering in the specified ExpressRouteCrossConnection.

```sql
INSERT INTO azure.network.express_route_cross_connection_peerings (
data__properties,
data__name,
data__id,
resourceGroupName,
crossConnectionName,
peeringName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ name }}',
'{{ id }}',
'{{ resourceGroupName }}',
'{{ crossConnectionName }}',
'{{ peeringName }}',
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
- name: express_route_cross_connection_peerings
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the express_route_cross_connection_peerings resource.
    - name: crossConnectionName
      value: string
      description: Required parameter for the express_route_cross_connection_peerings resource.
    - name: peeringName
      value: string
      description: Required parameter for the express_route_cross_connection_peerings resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the express_route_cross_connection_peerings resource.
    - name: properties
      value: object
      description: |
        Properties of the express route cross connection peering.
    - name: name
      value: string
      description: |
        The name of the resource that is unique within a resource group. This name can be used to access the resource.
    - name: id
      value: string
      description: |
        Resource ID.
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

Deletes the specified peering from the ExpressRouteCrossConnection.

```sql
DELETE FROM azure.network.express_route_cross_connection_peerings
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND crossConnectionName = '{{ crossConnectionName }}' --required
AND peeringName = '{{ peeringName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
