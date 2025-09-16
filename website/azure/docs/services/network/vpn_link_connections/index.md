--- 
title: vpn_link_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - vpn_link_connections
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

Creates, updates, deletes, gets or lists a <code>vpn_link_connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>vpn_link_connections</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.vpn_link_connections" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_by_vpn_connection"
    values={[
        { label: 'list_by_vpn_connection', value: 'list_by_vpn_connection' }
    ]}
>
<TabItem value="list_by_vpn_connection">

Request successful. Returns all Vpn connections for a virtual wan vpn gateway.

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
    <td>Properties of the VPN site link connection.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
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
    <td><a href="#list_by_vpn_connection"><CopyableCode code="list_by_vpn_connection" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-gatewayName"><code>gatewayName</code></a>, <a href="#parameter-connectionName"><code>connectionName</code></a></td>
    <td></td>
    <td>Retrieves all vpn site link connections for a particular virtual wan vpn gateway vpn connection.</td>
</tr>
<tr>
    <td><a href="#reset_connection"><CopyableCode code="reset_connection" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-gatewayName"><code>gatewayName</code></a>, <a href="#parameter-connectionName"><code>connectionName</code></a>, <a href="#parameter-linkConnectionName"><code>linkConnectionName</code></a></td>
    <td></td>
    <td>Resets the VpnLink connection specified.</td>
</tr>
<tr>
    <td><a href="#set_or_init_default_shared_key"><CopyableCode code="set_or_init_default_shared_key" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-gatewayName"><code>gatewayName</code></a>, <a href="#parameter-connectionName"><code>connectionName</code></a>, <a href="#parameter-linkConnectionName"><code>linkConnectionName</code></a></td>
    <td></td>
    <td>Sets or auto generates the shared key based on the user input. If users give a shared key value, it does the set operation. If key length is given, the operation creates a random key of the pre-defined length.</td>
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
    <td>The name of the connection.</td>
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
    <td>The resource group name of the VpnGateway.</td>
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
    defaultValue="list_by_vpn_connection"
    values={[
        { label: 'list_by_vpn_connection', value: 'list_by_vpn_connection' }
    ]}
>
<TabItem value="list_by_vpn_connection">

Retrieves all vpn site link connections for a particular virtual wan vpn gateway vpn connection.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.network.vpn_link_connections
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND gatewayName = '{{ gatewayName }}' -- required
AND connectionName = '{{ connectionName }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="reset_connection"
    values={[
        { label: 'reset_connection', value: 'reset_connection' },
        { label: 'set_or_init_default_shared_key', value: 'set_or_init_default_shared_key' }
    ]}
>
<TabItem value="reset_connection">

Resets the VpnLink connection specified.

```sql
EXEC azure.network.vpn_link_connections.reset_connection 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@gatewayName='{{ gatewayName }}' --required, 
@connectionName='{{ connectionName }}' --required, 
@linkConnectionName='{{ linkConnectionName }}' --required
;
```
</TabItem>
<TabItem value="set_or_init_default_shared_key">

Sets or auto generates the shared key based on the user input. If users give a shared key value, it does the set operation. If key length is given, the operation creates a random key of the pre-defined length.

```sql
EXEC azure.network.vpn_link_connections.set_or_init_default_shared_key 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@gatewayName='{{ gatewayName }}' --required, 
@connectionName='{{ connectionName }}' --required, 
@linkConnectionName='{{ linkConnectionName }}' --required 
@@json=
'{
"properties": "{{ properties }}", 
"id": "{{ id }}", 
"name": "{{ name }}"
}'
;
```
</TabItem>
</Tabs>
