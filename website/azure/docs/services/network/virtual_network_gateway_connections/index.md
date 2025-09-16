--- 
title: virtual_network_gateway_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - virtual_network_gateway_connections
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

Creates, updates, deletes, gets or lists a <code>virtual_network_gateway_connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>virtual_network_gateway_connections</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.virtual_network_gateway_connections" /></td></tr>
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

Request successful. The operation returns the resulting VirtualNetworkGatewayConnection resource.

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
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the virtual network gateway connection.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Request successful. The operation resets the virtual network gateway connection shared key.

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
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the virtual network gateway connection.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkGatewayConnectionName"><code>virtualNetworkGatewayConnectionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets the specified virtual network gateway connection by resource group.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>The List VirtualNetworkGatewayConnections operation retrieves all the virtual network gateways connections created.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkGatewayConnectionName"><code>virtualNetworkGatewayConnectionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Creates or updates a virtual network gateway connection in the specified resource group.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkGatewayConnectionName"><code>virtualNetworkGatewayConnectionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes the specified virtual network Gateway connection.</td>
</tr>
<tr>
    <td><a href="#update_tags"><CopyableCode code="update_tags" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkGatewayConnectionName"><code>virtualNetworkGatewayConnectionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Updates a virtual network gateway connection tags.</td>
</tr>
<tr>
    <td><a href="#set_shared_key"><CopyableCode code="set_shared_key" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkGatewayConnectionName"><code>virtualNetworkGatewayConnectionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-value"><code>value</code></a></td>
    <td></td>
    <td>The Put VirtualNetworkGatewayConnectionSharedKey operation sets the virtual network gateway connection shared key for passed virtual network gateway connection in the specified resource group through Network resource provider.</td>
</tr>
<tr>
    <td><a href="#reset_shared_key"><CopyableCode code="reset_shared_key" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkGatewayConnectionName"><code>virtualNetworkGatewayConnectionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-keyLength"><code>keyLength</code></a></td>
    <td></td>
    <td>The VirtualNetworkGatewayConnectionResetSharedKey operation resets the virtual network gateway connection shared key for passed virtual network gateway connection in the specified resource group through Network resource provider.</td>
</tr>
<tr>
    <td><a href="#start_packet_capture"><CopyableCode code="start_packet_capture" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkGatewayConnectionName"><code>virtualNetworkGatewayConnectionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Starts packet capture on virtual network gateway connection in the specified resource group.</td>
</tr>
<tr>
    <td><a href="#stop_packet_capture"><CopyableCode code="stop_packet_capture" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkGatewayConnectionName"><code>virtualNetworkGatewayConnectionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Stops packet capture on virtual network gateway connection in the specified resource group.</td>
</tr>
<tr>
    <td><a href="#reset_connection"><CopyableCode code="reset_connection" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkGatewayConnectionName"><code>virtualNetworkGatewayConnectionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Resets the virtual network gateway connection specified.</td>
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
<tr id="parameter-virtualNetworkGatewayConnectionName">
    <td><CopyableCode code="virtualNetworkGatewayConnectionName" /></td>
    <td><code>string</code></td>
    <td>The name of the virtual network gateway Connection.</td>
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

Gets the specified virtual network gateway connection by resource group.

```sql
SELECT
id,
name,
etag,
properties,
systemData,
type
FROM azure.network.virtual_network_gateway_connections
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND virtualNetworkGatewayConnectionName = '{{ virtualNetworkGatewayConnectionName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

The List VirtualNetworkGatewayConnections operation retrieves all the virtual network gateways connections created.

```sql
SELECT
id,
name,
etag,
properties,
systemData,
type
FROM azure.network.virtual_network_gateway_connections
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
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

Creates or updates a virtual network gateway connection in the specified resource group.

```sql
INSERT INTO azure.network.virtual_network_gateway_connections (
data__properties,
resourceGroupName,
virtualNetworkGatewayConnectionName,
subscriptionId
)
SELECT 
'{{ properties }}' /* required */,
'{{ resourceGroupName }}',
'{{ virtualNetworkGatewayConnectionName }}',
'{{ subscriptionId }}'
RETURNING
id,
name,
etag,
properties,
systemData,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: virtual_network_gateway_connections
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the virtual_network_gateway_connections resource.
    - name: virtualNetworkGatewayConnectionName
      value: string
      description: Required parameter for the virtual_network_gateway_connections resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the virtual_network_gateway_connections resource.
    - name: properties
      value: object
      description: |
        Properties of the virtual network gateway connection.
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

Deletes the specified virtual network Gateway connection.

```sql
DELETE FROM azure.network.virtual_network_gateway_connections
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND virtualNetworkGatewayConnectionName = '{{ virtualNetworkGatewayConnectionName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="update_tags"
    values={[
        { label: 'update_tags', value: 'update_tags' },
        { label: 'set_shared_key', value: 'set_shared_key' },
        { label: 'reset_shared_key', value: 'reset_shared_key' },
        { label: 'start_packet_capture', value: 'start_packet_capture' },
        { label: 'stop_packet_capture', value: 'stop_packet_capture' },
        { label: 'reset_connection', value: 'reset_connection' }
    ]}
>
<TabItem value="update_tags">

Updates a virtual network gateway connection tags.

```sql
EXEC azure.network.virtual_network_gateway_connections.update_tags 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@virtualNetworkGatewayConnectionName='{{ virtualNetworkGatewayConnectionName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"tags": "{{ tags }}"
}'
;
```
</TabItem>
<TabItem value="set_shared_key">

The Put VirtualNetworkGatewayConnectionSharedKey operation sets the virtual network gateway connection shared key for passed virtual network gateway connection in the specified resource group through Network resource provider.

```sql
EXEC azure.network.virtual_network_gateway_connections.set_shared_key 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@virtualNetworkGatewayConnectionName='{{ virtualNetworkGatewayConnectionName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"value": "{{ value }}", 
"id": "{{ id }}"
}'
;
```
</TabItem>
<TabItem value="reset_shared_key">

The VirtualNetworkGatewayConnectionResetSharedKey operation resets the virtual network gateway connection shared key for passed virtual network gateway connection in the specified resource group through Network resource provider.

```sql
EXEC azure.network.virtual_network_gateway_connections.reset_shared_key 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@virtualNetworkGatewayConnectionName='{{ virtualNetworkGatewayConnectionName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"keyLength": {{ keyLength }}
}'
;
```
</TabItem>
<TabItem value="start_packet_capture">

Starts packet capture on virtual network gateway connection in the specified resource group.

```sql
EXEC azure.network.virtual_network_gateway_connections.start_packet_capture 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@virtualNetworkGatewayConnectionName='{{ virtualNetworkGatewayConnectionName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"filterData": "{{ filterData }}"
}'
;
```
</TabItem>
<TabItem value="stop_packet_capture">

Stops packet capture on virtual network gateway connection in the specified resource group.

```sql
EXEC azure.network.virtual_network_gateway_connections.stop_packet_capture 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@virtualNetworkGatewayConnectionName='{{ virtualNetworkGatewayConnectionName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"sasUrl": "{{ sasUrl }}"
}'
;
```
</TabItem>
<TabItem value="reset_connection">

Resets the virtual network gateway connection specified.

```sql
EXEC azure.network.virtual_network_gateway_connections.reset_connection 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@virtualNetworkGatewayConnectionName='{{ virtualNetworkGatewayConnectionName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
