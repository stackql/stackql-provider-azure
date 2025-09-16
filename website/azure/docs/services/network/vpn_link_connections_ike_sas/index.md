--- 
title: vpn_link_connections_ike_sas
hide_title: false
hide_table_of_contents: false
keywords:
  - vpn_link_connections_ike_sas
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

Creates, updates, deletes, gets or lists a <code>vpn_link_connections_ike_sas</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vpn_link_connections_ike_sas</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vpn_link_connections_ike_sas" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-gatewayName"><code>gatewayName</code></a>, <a href="#parameter-connectionName"><code>connectionName</code></a>, <a href="#parameter-linkConnectionName"><code>linkConnectionName</code></a></td>
    <td></td>
    <td>Lists IKE Security Associations for Vpn Site Link Connection in the specified resource group.</td>
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
<tr id="parameter-connectionName">
    <td><CopyableCode code="connectionName" /></td>
    <td><code>string</code></td>
    <td>The name of the vpn connection.</td>
</tr>
<tr id="parameter-gatewayName">
    <td><CopyableCode code="gatewayName" /></td>
    <td><code>string</code></td>
    <td>The name of the gateway.</td>
</tr>
<tr id="parameter-linkConnectionName">
    <td><CopyableCode code="linkConnectionName" /></td>
    <td><code>string</code></td>
    <td>The name of the vpn link connection.</td>
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

## Lifecycle Methods

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Lists IKE Security Associations for Vpn Site Link Connection in the specified resource group.

```sql
EXEC azure.network.vpn_link_connections_ike_sas.get 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@gatewayName='{{ gatewayName }}' --required, 
@connectionName='{{ connectionName }}' --required, 
@linkConnectionName='{{ linkConnectionName }}' --required
;
```
</TabItem>
</Tabs>
