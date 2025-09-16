--- 
title: express_route_circuits_stats
hide_title: false
hide_table_of_contents: false
keywords:
  - express_route_circuits_stats
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

Creates, updates, deletes, gets or lists an <code>express_route_circuits_stats</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>express_route_circuits_stats</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.express_route_circuits_stats" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Request successful. The operation returns the resulting ExpressRouteCircuitStats resource.

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
    <td><CopyableCode code="primarybytesIn" /></td>
    <td><code>integer (int64)</code></td>
    <td>The Primary BytesIn of the peering.</td>
</tr>
<tr>
    <td><CopyableCode code="primarybytesOut" /></td>
    <td><code>integer (int64)</code></td>
    <td>The primary BytesOut of the peering.</td>
</tr>
<tr>
    <td><CopyableCode code="secondarybytesIn" /></td>
    <td><code>integer (int64)</code></td>
    <td>The secondary BytesIn of the peering.</td>
</tr>
<tr>
    <td><CopyableCode code="secondarybytesOut" /></td>
    <td><code>integer (int64)</code></td>
    <td>The secondary BytesOut of the peering.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-circuitName"><code>circuitName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets all the stats from an express route circuit in a resource group.</td>
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
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Gets all the stats from an express route circuit in a resource group.

```sql
SELECT
primarybytesIn,
primarybytesOut,
secondarybytesIn,
secondarybytesOut
FROM azure.network.express_route_circuits_stats
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND circuitName = '{{ circuitName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>
