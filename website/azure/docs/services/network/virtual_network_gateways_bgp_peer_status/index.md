--- 
title: virtual_network_gateways_bgp_peer_status
hide_title: false
hide_table_of_contents: false
keywords:
  - virtual_network_gateways_bgp_peer_status
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

Creates, updates, deletes, gets or lists a <code>virtual_network_gateways_bgp_peer_status</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>virtual_network_gateways_bgp_peer_status</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.virtual_network_gateways_bgp_peer_status" /></td></tr>
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

List of BGP peer statuses.

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
    <td><CopyableCode code="asn" /></td>
    <td><code>integer (int64)</code></td>
    <td>The autonomous system number of the remote BGP peer.</td>
</tr>
<tr>
    <td><CopyableCode code="connectedDuration" /></td>
    <td><code>string</code></td>
    <td>For how long the peering has been up.</td>
</tr>
<tr>
    <td><CopyableCode code="localAddress" /></td>
    <td><code>string</code></td>
    <td>The virtual network gateway's local address.</td>
</tr>
<tr>
    <td><CopyableCode code="messagesReceived" /></td>
    <td><code>integer (int64)</code></td>
    <td>The number of BGP messages received.</td>
</tr>
<tr>
    <td><CopyableCode code="messagesSent" /></td>
    <td><code>integer (int64)</code></td>
    <td>The number of BGP messages sent.</td>
</tr>
<tr>
    <td><CopyableCode code="neighbor" /></td>
    <td><code>string</code></td>
    <td>The remote BGP peer.</td>
</tr>
<tr>
    <td><CopyableCode code="routesReceived" /></td>
    <td><code>integer (int64)</code></td>
    <td>The number of routes learned from this peer.</td>
</tr>
<tr>
    <td><CopyableCode code="state" /></td>
    <td><code>string</code></td>
    <td>The BGP peer state.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkGatewayName"><code>virtualNetworkGatewayName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-peer"><code>peer</code></a></td>
    <td>The GetBgpPeerStatus operation retrieves the status of all BGP peers.</td>
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
    <td>The name of the resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-virtualNetworkGatewayName">
    <td><CopyableCode code="virtualNetworkGatewayName" /></td>
    <td><code>string</code></td>
    <td>The name of the virtual network gateway.</td>
</tr>
<tr id="parameter-peer">
    <td><CopyableCode code="peer" /></td>
    <td><code>string</code></td>
    <td>The IP address of the peer to retrieve the status of.</td>
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

The GetBgpPeerStatus operation retrieves the status of all BGP peers.

```sql
SELECT
asn,
connectedDuration,
localAddress,
messagesReceived,
messagesSent,
neighbor,
routesReceived,
state
FROM azure.network.virtual_network_gateways_bgp_peer_status
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND virtualNetworkGatewayName = '{{ virtualNetworkGatewayName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND peer = '{{ peer }}'
;
```
</TabItem>
</Tabs>
