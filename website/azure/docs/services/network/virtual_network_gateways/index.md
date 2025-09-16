--- 
title: virtual_network_gateways
hide_title: false
hide_table_of_contents: false
keywords:
  - virtual_network_gateways
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

Creates, updates, deletes, gets or lists a <code>virtual_network_gateways</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>virtual_network_gateways</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.virtual_network_gateways" /></td></tr>
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

Request successful. The operation returns a VirtualNetworkGateway resource.

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
    <td><CopyableCode code="extendedLocation" /></td>
    <td><code>object</code></td>
    <td>The extended location of type local virtual network gateway.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The identity of the virtual network gateway, if configured.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the virtual network gateway.</td>
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

Request successful. The operation returns a list of VirtualNetworkGateway resources.

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
    <td><CopyableCode code="extendedLocation" /></td>
    <td><code>object</code></td>
    <td>The extended location of type local virtual network gateway.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The identity of the virtual network gateway, if configured.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the virtual network gateway.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkGatewayName"><code>virtualNetworkGatewayName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets the specified virtual network gateway by resource group.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets all virtual network gateways by resource group.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkGatewayName"><code>virtualNetworkGatewayName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Creates or updates a virtual network gateway in the specified resource group.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkGatewayName"><code>virtualNetworkGatewayName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes the specified virtual network gateway.</td>
</tr>
<tr>
    <td><a href="#update_tags"><CopyableCode code="update_tags" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkGatewayName"><code>virtualNetworkGatewayName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Updates a virtual network gateway tags.</td>
</tr>
<tr>
    <td><a href="#reset"><CopyableCode code="reset" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkGatewayName"><code>virtualNetworkGatewayName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-gatewayVip"><code>gatewayVip</code></a></td>
    <td>Resets the primary of the virtual network gateway in the specified resource group.</td>
</tr>
<tr>
    <td><a href="#reset_vpn_client_shared_key"><CopyableCode code="reset_vpn_client_shared_key" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkGatewayName"><code>virtualNetworkGatewayName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Resets the VPN client shared key of the virtual network gateway in the specified resource group.</td>
</tr>
<tr>
    <td><a href="#generatevpnclientpackage"><CopyableCode code="generatevpnclientpackage" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkGatewayName"><code>virtualNetworkGatewayName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Generates VPN client package for P2S client of the virtual network gateway in the specified resource group.</td>
</tr>
<tr>
    <td><a href="#generate_vpn_profile"><CopyableCode code="generate_vpn_profile" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkGatewayName"><code>virtualNetworkGatewayName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Generates VPN profile for P2S client of the virtual network gateway in the specified resource group. Used for IKEV2 and radius based authentication.</td>
</tr>
<tr>
    <td><a href="#supported_vpn_devices"><CopyableCode code="supported_vpn_devices" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkGatewayName"><code>virtualNetworkGatewayName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets a xml format representation for supported vpn devices.</td>
</tr>
<tr>
    <td><a href="#set_vpnclient_ipsec_parameters"><CopyableCode code="set_vpnclient_ipsec_parameters" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkGatewayName"><code>virtualNetworkGatewayName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-saLifeTimeSeconds"><code>saLifeTimeSeconds</code></a>, <a href="#parameter-saDataSizeKilobytes"><code>saDataSizeKilobytes</code></a>, <a href="#parameter-ipsecEncryption"><code>ipsecEncryption</code></a>, <a href="#parameter-ipsecIntegrity"><code>ipsecIntegrity</code></a>, <a href="#parameter-ikeEncryption"><code>ikeEncryption</code></a>, <a href="#parameter-ikeIntegrity"><code>ikeIntegrity</code></a>, <a href="#parameter-dhGroup"><code>dhGroup</code></a>, <a href="#parameter-pfsGroup"><code>pfsGroup</code></a></td>
    <td></td>
    <td>The Set VpnclientIpsecParameters operation sets the vpnclient ipsec policy for P2S client of virtual network gateway in the specified resource group through Network resource provider.</td>
</tr>
<tr>
    <td><a href="#vpn_device_configuration_script"><CopyableCode code="vpn_device_configuration_script" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkGatewayConnectionName"><code>virtualNetworkGatewayConnectionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets a xml format representation for vpn device configuration script.</td>
</tr>
<tr>
    <td><a href="#start_packet_capture"><CopyableCode code="start_packet_capture" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkGatewayName"><code>virtualNetworkGatewayName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Starts packet capture on virtual network gateway in the specified resource group.</td>
</tr>
<tr>
    <td><a href="#stop_packet_capture"><CopyableCode code="stop_packet_capture" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkGatewayName"><code>virtualNetworkGatewayName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Stops packet capture on virtual network gateway in the specified resource group.</td>
</tr>
<tr>
    <td><a href="#disconnect_virtual_network_gateway_vpn_connections"><CopyableCode code="disconnect_virtual_network_gateway_vpn_connections" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkGatewayName"><code>virtualNetworkGatewayName</code></a></td>
    <td></td>
    <td>Disconnect vpn connections of virtual network gateway in the specified resource group.</td>
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
    <td>The name of the virtual network gateway connection for which the configuration script is generated.</td>
</tr>
<tr id="parameter-virtualNetworkGatewayName">
    <td><CopyableCode code="virtualNetworkGatewayName" /></td>
    <td><code>string</code></td>
    <td>The name of the virtual network gateway.</td>
</tr>
<tr id="parameter-gatewayVip">
    <td><CopyableCode code="gatewayVip" /></td>
    <td><code>string</code></td>
    <td>Virtual network gateway vip address supplied to the begin reset of the active-active feature enabled gateway.</td>
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

Gets the specified virtual network gateway by resource group.

```sql
SELECT
id,
name,
etag,
extendedLocation,
identity,
properties,
systemData,
type
FROM azure.network.virtual_network_gateways
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND virtualNetworkGatewayName = '{{ virtualNetworkGatewayName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets all virtual network gateways by resource group.

```sql
SELECT
id,
name,
etag,
extendedLocation,
identity,
properties,
systemData,
type
FROM azure.network.virtual_network_gateways
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

Creates or updates a virtual network gateway in the specified resource group.

```sql
INSERT INTO azure.network.virtual_network_gateways (
data__properties,
data__extendedLocation,
data__identity,
resourceGroupName,
virtualNetworkGatewayName,
subscriptionId
)
SELECT 
'{{ properties }}' /* required */,
'{{ extendedLocation }}',
'{{ identity }}',
'{{ resourceGroupName }}',
'{{ virtualNetworkGatewayName }}',
'{{ subscriptionId }}'
RETURNING
id,
name,
etag,
extendedLocation,
identity,
properties,
systemData,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: virtual_network_gateways
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the virtual_network_gateways resource.
    - name: virtualNetworkGatewayName
      value: string
      description: Required parameter for the virtual_network_gateways resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the virtual_network_gateways resource.
    - name: properties
      value: object
      description: |
        Properties of the virtual network gateway.
    - name: extendedLocation
      value: object
      description: |
        The extended location of type local virtual network gateway.
    - name: identity
      value: object
      description: |
        The identity of the virtual network gateway, if configured.
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

Deletes the specified virtual network gateway.

```sql
DELETE FROM azure.network.virtual_network_gateways
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND virtualNetworkGatewayName = '{{ virtualNetworkGatewayName }}' --required
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
        { label: 'reset', value: 'reset' },
        { label: 'reset_vpn_client_shared_key', value: 'reset_vpn_client_shared_key' },
        { label: 'generatevpnclientpackage', value: 'generatevpnclientpackage' },
        { label: 'generate_vpn_profile', value: 'generate_vpn_profile' },
        { label: 'supported_vpn_devices', value: 'supported_vpn_devices' },
        { label: 'set_vpnclient_ipsec_parameters', value: 'set_vpnclient_ipsec_parameters' },
        { label: 'vpn_device_configuration_script', value: 'vpn_device_configuration_script' },
        { label: 'start_packet_capture', value: 'start_packet_capture' },
        { label: 'stop_packet_capture', value: 'stop_packet_capture' },
        { label: 'disconnect_virtual_network_gateway_vpn_connections', value: 'disconnect_virtual_network_gateway_vpn_connections' }
    ]}
>
<TabItem value="update_tags">

Updates a virtual network gateway tags.

```sql
EXEC azure.network.virtual_network_gateways.update_tags 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@virtualNetworkGatewayName='{{ virtualNetworkGatewayName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"tags": "{{ tags }}"
}'
;
```
</TabItem>
<TabItem value="reset">

Resets the primary of the virtual network gateway in the specified resource group.

```sql
EXEC azure.network.virtual_network_gateways.reset 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@virtualNetworkGatewayName='{{ virtualNetworkGatewayName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@gatewayVip='{{ gatewayVip }}'
;
```
</TabItem>
<TabItem value="reset_vpn_client_shared_key">

Resets the VPN client shared key of the virtual network gateway in the specified resource group.

```sql
EXEC azure.network.virtual_network_gateways.reset_vpn_client_shared_key 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@virtualNetworkGatewayName='{{ virtualNetworkGatewayName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="generatevpnclientpackage">

Generates VPN client package for P2S client of the virtual network gateway in the specified resource group.

```sql
EXEC azure.network.virtual_network_gateways.generatevpnclientpackage 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@virtualNetworkGatewayName='{{ virtualNetworkGatewayName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"processorArchitecture": "{{ processorArchitecture }}", 
"authenticationMethod": "{{ authenticationMethod }}", 
"radiusServerAuthCertificate": "{{ radiusServerAuthCertificate }}", 
"clientRootCertificates": "{{ clientRootCertificates }}"
}'
;
```
</TabItem>
<TabItem value="generate_vpn_profile">

Generates VPN profile for P2S client of the virtual network gateway in the specified resource group. Used for IKEV2 and radius based authentication.

```sql
EXEC azure.network.virtual_network_gateways.generate_vpn_profile 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@virtualNetworkGatewayName='{{ virtualNetworkGatewayName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"processorArchitecture": "{{ processorArchitecture }}", 
"authenticationMethod": "{{ authenticationMethod }}", 
"radiusServerAuthCertificate": "{{ radiusServerAuthCertificate }}", 
"clientRootCertificates": "{{ clientRootCertificates }}"
}'
;
```
</TabItem>
<TabItem value="supported_vpn_devices">

Gets a xml format representation for supported vpn devices.

```sql
EXEC azure.network.virtual_network_gateways.supported_vpn_devices 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@virtualNetworkGatewayName='{{ virtualNetworkGatewayName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="set_vpnclient_ipsec_parameters">

The Set VpnclientIpsecParameters operation sets the vpnclient ipsec policy for P2S client of virtual network gateway in the specified resource group through Network resource provider.

```sql
EXEC azure.network.virtual_network_gateways.set_vpnclient_ipsec_parameters 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@virtualNetworkGatewayName='{{ virtualNetworkGatewayName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"saLifeTimeSeconds": {{ saLifeTimeSeconds }}, 
"saDataSizeKilobytes": {{ saDataSizeKilobytes }}, 
"ipsecEncryption": "{{ ipsecEncryption }}", 
"ipsecIntegrity": "{{ ipsecIntegrity }}", 
"ikeEncryption": "{{ ikeEncryption }}", 
"ikeIntegrity": "{{ ikeIntegrity }}", 
"dhGroup": "{{ dhGroup }}", 
"pfsGroup": "{{ pfsGroup }}"
}'
;
```
</TabItem>
<TabItem value="vpn_device_configuration_script">

Gets a xml format representation for vpn device configuration script.

```sql
EXEC azure.network.virtual_network_gateways.vpn_device_configuration_script 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@virtualNetworkGatewayConnectionName='{{ virtualNetworkGatewayConnectionName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"vendor": "{{ vendor }}", 
"deviceFamily": "{{ deviceFamily }}", 
"firmwareVersion": "{{ firmwareVersion }}"
}'
;
```
</TabItem>
<TabItem value="start_packet_capture">

Starts packet capture on virtual network gateway in the specified resource group.

```sql
EXEC azure.network.virtual_network_gateways.start_packet_capture 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@virtualNetworkGatewayName='{{ virtualNetworkGatewayName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"filterData": "{{ filterData }}"
}'
;
```
</TabItem>
<TabItem value="stop_packet_capture">

Stops packet capture on virtual network gateway in the specified resource group.

```sql
EXEC azure.network.virtual_network_gateways.stop_packet_capture 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@virtualNetworkGatewayName='{{ virtualNetworkGatewayName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"sasUrl": "{{ sasUrl }}"
}'
;
```
</TabItem>
<TabItem value="disconnect_virtual_network_gateway_vpn_connections">

Disconnect vpn connections of virtual network gateway in the specified resource group.

```sql
EXEC azure.network.virtual_network_gateways.disconnect_virtual_network_gateway_vpn_connections 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@virtualNetworkGatewayName='{{ virtualNetworkGatewayName }}' --required 
@@json=
'{
"vpnConnectionIds": "{{ vpnConnectionIds }}"
}'
;
```
</TabItem>
</Tabs>
