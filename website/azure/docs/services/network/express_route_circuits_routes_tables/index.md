--- 
title: express_route_circuits_routes_tables
hide_title: false
hide_table_of_contents: false
keywords:
  - express_route_circuits_routes_tables
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

Creates, updates, deletes, gets or lists an <code>express_route_circuits_routes_tables</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>express_route_circuits_routes_tables</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.express_route_circuits_routes_tables" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

Request successful. The operation returns the resulting ExpressRouteCircuitsRouteTable resource.

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
    <td><CopyableCode code="locPrf" /></td>
    <td><code>string</code></td>
    <td>Local preference value as set with the set local-preference route-map configuration command.</td>
</tr>
<tr>
    <td><CopyableCode code="network" /></td>
    <td><code>string</code></td>
    <td>IP address of a network entity.</td>
</tr>
<tr>
    <td><CopyableCode code="nextHop" /></td>
    <td><code>string</code></td>
    <td>NextHop address.</td>
</tr>
<tr>
    <td><CopyableCode code="path" /></td>
    <td><code>string</code></td>
    <td>Autonomous system paths to the destination network.</td>
</tr>
<tr>
    <td><CopyableCode code="weight" /></td>
    <td><code>integer (int32)</code></td>
    <td>Route Weight.</td>
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
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-circuitName"><code>circuitName</code></a>, <a href="#parameter-peeringName"><code>peeringName</code></a>, <a href="#parameter-devicePath"><code>devicePath</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets the currently advertised routes table associated with the express route circuit in a resource group.</td>
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
<tr id="parameter-circuitName">
    <td><CopyableCode code="circuitName" /></td>
    <td><code>string</code></td>
    <td>The name of the express route circuit.</td>
</tr>
<tr id="parameter-devicePath">
    <td><CopyableCode code="devicePath" /></td>
    <td><code>string</code></td>
    <td>The path of the device.</td>
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
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

Gets the currently advertised routes table associated with the express route circuit in a resource group.

```sql
SELECT
locPrf,
network,
nextHop,
path,
weight
FROM azure.network.express_route_circuits_routes_tables
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND circuitName = '{{ circuitName }}' -- required
AND peeringName = '{{ peeringName }}' -- required
AND devicePath = '{{ devicePath }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>
