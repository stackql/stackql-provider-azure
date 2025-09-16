--- 
title: virtual_network_gateways_vpnclient_ipsec_parameters
hide_title: false
hide_table_of_contents: false
keywords:
  - virtual_network_gateways_vpnclient_ipsec_parameters
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

Creates, updates, deletes, gets or lists a <code>virtual_network_gateways_vpnclient_ipsec_parameters</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>virtual_network_gateways_vpnclient_ipsec_parameters</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.virtual_network_gateways_vpnclient_ipsec_parameters" /></td></tr>
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

Request successful. The operation returns the set vpnclient ipsec parameters for P2S client of VirtualNetworkGateway resource.

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
    <td><CopyableCode code="dhGroup" /></td>
    <td><code>string</code></td>
    <td>The DH Group used in IKE Phase 1 for initial SA.</td>
</tr>
<tr>
    <td><CopyableCode code="ikeEncryption" /></td>
    <td><code>string</code></td>
    <td>The IKE encryption algorithm (IKE phase 2).</td>
</tr>
<tr>
    <td><CopyableCode code="ikeIntegrity" /></td>
    <td><code>string</code></td>
    <td>The IKE integrity algorithm (IKE phase 2).</td>
</tr>
<tr>
    <td><CopyableCode code="ipsecEncryption" /></td>
    <td><code>string</code></td>
    <td>The IPSec encryption algorithm (IKE phase 1).</td>
</tr>
<tr>
    <td><CopyableCode code="ipsecIntegrity" /></td>
    <td><code>string</code></td>
    <td>The IPSec integrity algorithm (IKE phase 1).</td>
</tr>
<tr>
    <td><CopyableCode code="pfsGroup" /></td>
    <td><code>string</code></td>
    <td>The Pfs Group used in IKE Phase 2 for new child SA.</td>
</tr>
<tr>
    <td><CopyableCode code="saDataSizeKilobytes" /></td>
    <td><code>integer (int32)</code></td>
    <td>The IPSec Security Association (also called Quick Mode or Phase 2 SA) payload size in KB for P2S client..</td>
</tr>
<tr>
    <td><CopyableCode code="saLifeTimeSeconds" /></td>
    <td><code>integer (int32)</code></td>
    <td>The IPSec Security Association (also called Quick Mode or Phase 2 SA) lifetime in seconds for P2S client.</td>
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
    <td>The Get VpnclientIpsecParameters operation retrieves information about the vpnclient ipsec policy for P2S client of virtual network gateway in the specified resource group through Network resource provider.</td>
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
    <td>The virtual network gateway name.</td>
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

The Get VpnclientIpsecParameters operation retrieves information about the vpnclient ipsec policy for P2S client of virtual network gateway in the specified resource group through Network resource provider.

```sql
SELECT
dhGroup,
ikeEncryption,
ikeIntegrity,
ipsecEncryption,
ipsecIntegrity,
pfsGroup,
saDataSizeKilobytes,
saLifeTimeSeconds
FROM azure.network.virtual_network_gateways_vpnclient_ipsec_parameters
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND virtualNetworkGatewayName = '{{ virtualNetworkGatewayName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>
