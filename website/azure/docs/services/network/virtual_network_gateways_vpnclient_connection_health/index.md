--- 
title: virtual_network_gateways_vpnclient_connection_health
hide_title: false
hide_table_of_contents: false
keywords:
  - virtual_network_gateways_vpnclient_connection_health
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

Creates, updates, deletes, gets or lists a <code>virtual_network_gateways_vpnclient_connection_health</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>virtual_network_gateways_vpnclient_connection_health</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.virtual_network_gateways_vpnclient_connection_health" /></td></tr>
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

List of VPN client connection health details.

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
    <td><CopyableCode code="egressBytesTransferred" /></td>
    <td><code>integer (int64)</code></td>
    <td>The egress bytes per second.</td>
</tr>
<tr>
    <td><CopyableCode code="egressPacketsTransferred" /></td>
    <td><code>integer (int64)</code></td>
    <td>The egress packets per second.</td>
</tr>
<tr>
    <td><CopyableCode code="ingressBytesTransferred" /></td>
    <td><code>integer (int64)</code></td>
    <td>The ingress bytes per second.</td>
</tr>
<tr>
    <td><CopyableCode code="ingressPacketsTransferred" /></td>
    <td><code>integer (int64)</code></td>
    <td>The ingress packets per second.</td>
</tr>
<tr>
    <td><CopyableCode code="maxBandwidth" /></td>
    <td><code>integer (int64)</code></td>
    <td>The max band width.</td>
</tr>
<tr>
    <td><CopyableCode code="maxPacketsPerSecond" /></td>
    <td><code>integer (int64)</code></td>
    <td>The max packets transferred per second.</td>
</tr>
<tr>
    <td><CopyableCode code="privateIpAddress" /></td>
    <td><code>string</code></td>
    <td>The assigned private Ip of a connected vpn client.</td>
</tr>
<tr>
    <td><CopyableCode code="publicIpAddress" /></td>
    <td><code>string</code></td>
    <td>The public Ip of a connected vpn client.</td>
</tr>
<tr>
    <td><CopyableCode code="vpnConnectionDuration" /></td>
    <td><code>integer (int64)</code></td>
    <td>The duration time of a connected vpn client.</td>
</tr>
<tr>
    <td><CopyableCode code="vpnConnectionId" /></td>
    <td><code>string</code></td>
    <td>The vpn client Id.</td>
</tr>
<tr>
    <td><CopyableCode code="vpnConnectionTime" /></td>
    <td><code>string</code></td>
    <td>The start time of a connected vpn client.</td>
</tr>
<tr>
    <td><CopyableCode code="vpnUserName" /></td>
    <td><code>string</code></td>
    <td>The user name of a connected vpn client.</td>
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
    <td></td>
    <td>Get VPN client connection health detail per P2S client connection of the virtual network gateway in the specified resource group.</td>
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

Get VPN client connection health detail per P2S client connection of the virtual network gateway in the specified resource group.

```sql
SELECT
egressBytesTransferred,
egressPacketsTransferred,
ingressBytesTransferred,
ingressPacketsTransferred,
maxBandwidth,
maxPacketsPerSecond,
privateIpAddress,
publicIpAddress,
vpnConnectionDuration,
vpnConnectionId,
vpnConnectionTime,
vpnUserName
FROM azure.network.virtual_network_gateways_vpnclient_connection_health
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND virtualNetworkGatewayName = '{{ virtualNetworkGatewayName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>
