--- 
title: p2s_vpn_gateways
hide_title: false
hide_table_of_contents: false
keywords:
  - p2s_vpn_gateways
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

Creates, updates, deletes, gets or lists a <code>p2s_vpn_gateways</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>p2s_vpn_gateways</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.p2s_vpn_gateways" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Request successful. Returns the details of the virtual wan p2s vpn gateway retrieved.

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
    <td>Properties of the P2SVpnGateway.</td>
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
<TabItem value="list_by_resource_group">

Request successful. Returns the details of all the P2SVpnGateways in the resource group.

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
    <td>Properties of the P2SVpnGateway.</td>
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

Request successful. Returns the details of all the P2SVpnGateways in the subscription.

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
    <td>Properties of the P2SVpnGateway.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-gatewayName"><code>gatewayName</code></a></td>
    <td></td>
    <td>Retrieves the details of a virtual wan p2s vpn gateway.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td>Lists all the P2SVpnGateways in a resource group.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Lists all the P2SVpnGateways in a subscription.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-gatewayName"><code>gatewayName</code></a>, <a href="#parameter-data__location"><code>data__location</code></a></td>
    <td></td>
    <td>Creates a virtual wan p2s vpn gateway if it doesn't exist else updates the existing gateway.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-gatewayName"><code>gatewayName</code></a></td>
    <td></td>
    <td>Deletes a virtual wan p2s vpn gateway.</td>
</tr>
<tr>
    <td><a href="#update_tags"><CopyableCode code="update_tags" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-gatewayName"><code>gatewayName</code></a></td>
    <td></td>
    <td>Updates virtual wan p2s vpn gateway tags.</td>
</tr>
<tr>
    <td><a href="#reset"><CopyableCode code="reset" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-gatewayName"><code>gatewayName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Resets the primary of the p2s vpn gateway in the specified resource group.</td>
</tr>
<tr>
    <td><a href="#generate_vpn_profile"><CopyableCode code="generate_vpn_profile" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-gatewayName"><code>gatewayName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Generates VPN profile for P2S client of the P2SVpnGateway in the specified resource group.</td>
</tr>
<tr>
    <td><a href="#disconnect_p2s_vpn_connections"><CopyableCode code="disconnect_p2s_vpn_connections" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-p2sVpnGatewayName"><code>p2sVpnGatewayName</code></a></td>
    <td></td>
    <td>Disconnect P2S vpn connections of the virtual wan P2SVpnGateway in the specified resource group.</td>
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
<tr id="parameter-gatewayName">
    <td><CopyableCode code="gatewayName" /></td>
    <td><code>string</code></td>
    <td>The name of the P2SVpnGateway.</td>
</tr>
<tr id="parameter-p2sVpnGatewayName">
    <td><CopyableCode code="p2sVpnGatewayName" /></td>
    <td><code>string</code></td>
    <td>The name of the P2S Vpn Gateway.</td>
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
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Retrieves the details of a virtual wan p2s vpn gateway.

```sql
SELECT
id,
name,
etag,
properties,
systemData,
type
FROM azure.network.p2s_vpn_gateways
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND gatewayName = '{{ gatewayName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_resource_group">

Lists all the P2SVpnGateways in a resource group.

```sql
SELECT
id,
name,
etag,
properties,
systemData,
type
FROM azure.network.p2s_vpn_gateways
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists all the P2SVpnGateways in a subscription.

```sql
SELECT
id,
name,
etag,
properties,
systemData,
type
FROM azure.network.p2s_vpn_gateways
WHERE subscriptionId = '{{ subscriptionId }}' -- required
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

Creates a virtual wan p2s vpn gateway if it doesn't exist else updates the existing gateway.

```sql
INSERT INTO azure.network.p2s_vpn_gateways (
data__properties,
subscriptionId,
resourceGroupName,
gatewayName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ gatewayName }}'
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
- name: p2s_vpn_gateways
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the p2s_vpn_gateways resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the p2s_vpn_gateways resource.
    - name: gatewayName
      value: string
      description: Required parameter for the p2s_vpn_gateways resource.
    - name: properties
      value: object
      description: |
        Properties of the P2SVpnGateway.
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

Deletes a virtual wan p2s vpn gateway.

```sql
DELETE FROM azure.network.p2s_vpn_gateways
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND gatewayName = '{{ gatewayName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="update_tags"
    values={[
        { label: 'update_tags', value: 'update_tags' },
        { label: 'reset', value: 'reset' },
        { label: 'generate_vpn_profile', value: 'generate_vpn_profile' },
        { label: 'disconnect_p2s_vpn_connections', value: 'disconnect_p2s_vpn_connections' }
    ]}
>
<TabItem value="update_tags">

Updates virtual wan p2s vpn gateway tags.

```sql
EXEC azure.network.p2s_vpn_gateways.update_tags 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@gatewayName='{{ gatewayName }}' --required 
@@json=
'{
"tags": "{{ tags }}"
}'
;
```
</TabItem>
<TabItem value="reset">

Resets the primary of the p2s vpn gateway in the specified resource group.

```sql
EXEC azure.network.p2s_vpn_gateways.reset 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@gatewayName='{{ gatewayName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="generate_vpn_profile">

Generates VPN profile for P2S client of the P2SVpnGateway in the specified resource group.

```sql
EXEC azure.network.p2s_vpn_gateways.generate_vpn_profile 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@gatewayName='{{ gatewayName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"authenticationMethod": "{{ authenticationMethod }}"
}'
;
```
</TabItem>
<TabItem value="disconnect_p2s_vpn_connections">

Disconnect P2S vpn connections of the virtual wan P2SVpnGateway in the specified resource group.

```sql
EXEC azure.network.p2s_vpn_gateways.disconnect_p2s_vpn_connections 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@p2sVpnGatewayName='{{ p2sVpnGatewayName }}' --required 
@@json=
'{
"vpnConnectionIds": "{{ vpnConnectionIds }}"
}'
;
```
</TabItem>
</Tabs>
