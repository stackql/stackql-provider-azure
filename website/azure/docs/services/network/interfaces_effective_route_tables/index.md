--- 
title: interfaces_effective_route_tables
hide_title: false
hide_table_of_contents: false
keywords:
  - interfaces_effective_route_tables
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

Creates, updates, deletes, gets or lists an <code>interfaces_effective_route_tables</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>interfaces_effective_route_tables</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.interfaces_effective_route_tables" /></td></tr>
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

Request successful. The operation returns a list of EffectRoute resources.

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
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the user defined route. This is optional.</td>
</tr>
<tr>
    <td><CopyableCode code="addressPrefix" /></td>
    <td><code>array</code></td>
    <td>The address prefixes of the effective routes in CIDR notation.</td>
</tr>
<tr>
    <td><CopyableCode code="disableBgpRoutePropagation" /></td>
    <td><code>boolean</code></td>
    <td>If true, on-premises routes are not propagated to the network interfaces in the subnet.</td>
</tr>
<tr>
    <td><CopyableCode code="nextHopIpAddress" /></td>
    <td><code>array</code></td>
    <td>The IP address of the next hop of the effective route.</td>
</tr>
<tr>
    <td><CopyableCode code="nextHopType" /></td>
    <td><code>string</code></td>
    <td>The type of Azure hop the packet should be sent to.</td>
</tr>
<tr>
    <td><CopyableCode code="source" /></td>
    <td><code>string</code></td>
    <td>Who created the route.</td>
</tr>
<tr>
    <td><CopyableCode code="state" /></td>
    <td><code>string</code></td>
    <td>The value of effective route.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-networkInterfaceName"><code>networkInterfaceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets all route tables applied to a network interface.</td>
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
<tr id="parameter-networkInterfaceName">
    <td><CopyableCode code="networkInterfaceName" /></td>
    <td><code>string</code></td>
    <td>The name of the network interface.</td>
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

Gets all route tables applied to a network interface.

```sql
SELECT
name,
addressPrefix,
disableBgpRoutePropagation,
nextHopIpAddress,
nextHopType,
source,
state
FROM azure.network.interfaces_effective_route_tables
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND networkInterfaceName = '{{ networkInterfaceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>
