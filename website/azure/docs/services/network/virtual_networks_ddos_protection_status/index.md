--- 
title: virtual_networks_ddos_protection_status
hide_title: false
hide_table_of_contents: false
keywords:
  - virtual_networks_ddos_protection_status
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

Creates, updates, deletes, gets or lists a <code>virtual_networks_ddos_protection_status</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>virtual_networks_ddos_protection_status</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.virtual_networks_ddos_protection_status" /></td></tr>
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

Request successful. The operation returns the Ddos Protection Status of all IP Addresses under this Virtual Network.

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
    <td><CopyableCode code="ddosProtectionPlanId" /></td>
    <td><code>string</code></td>
    <td> DDoS protection plan Resource Id of a if IP address is protected through a plan.</td>
</tr>
<tr>
    <td><CopyableCode code="isWorkloadProtected" /></td>
    <td><code>string</code></td>
    <td>Value indicating whether the IP address is DDoS workload protected or not.</td>
</tr>
<tr>
    <td><CopyableCode code="publicIpAddress" /></td>
    <td><code>string</code></td>
    <td>IP Address of the Public IP Resource</td>
</tr>
<tr>
    <td><CopyableCode code="publicIpAddressId" /></td>
    <td><code>string</code></td>
    <td>Public IP ARM resource ID</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkName"><code>virtualNetworkName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-top"><code>top</code></a>, <a href="#parameter-skipToken"><code>skipToken</code></a></td>
    <td>Gets the Ddos Protection Status of all IP Addresses under the Virtual Network</td>
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
<tr id="parameter-virtualNetworkName">
    <td><CopyableCode code="virtualNetworkName" /></td>
    <td><code>string</code></td>
    <td>The name of the virtual network.</td>
</tr>
<tr id="parameter-skipToken">
    <td><CopyableCode code="skipToken" /></td>
    <td><code>string</code></td>
    <td>The skipToken that is given with nextLink.</td>
</tr>
<tr id="parameter-top">
    <td><CopyableCode code="top" /></td>
    <td><code>integer (int32)</code></td>
    <td>The max number of ip addresses to return.</td>
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

Gets the Ddos Protection Status of all IP Addresses under the Virtual Network

```sql
SELECT
ddosProtectionPlanId,
isWorkloadProtected,
publicIpAddress,
publicIpAddressId
FROM azure.network.virtual_networks_ddos_protection_status
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND virtualNetworkName = '{{ virtualNetworkName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND top = '{{ top }}'
AND skipToken = '{{ skipToken }}'
;
```
</TabItem>
</Tabs>
