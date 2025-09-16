--- 
title: operations
hide_title: false
hide_table_of_contents: false
keywords:
  - operations
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

Creates, updates, deletes, gets or lists an <code>operations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>operations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.operations" /></td></tr>
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

OK. The request has succeeded.

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
    <td>The name of the operation, as per Resource-Based Access Control (RBAC). Examples: "Microsoft.Compute/virtualMachines/write", "Microsoft.Compute/virtualMachines/capture/action"</td>
</tr>
<tr>
    <td><CopyableCode code="actionType" /></td>
    <td><code>string</code></td>
    <td>Enum. Indicates the action type. "Internal" refers to actions that are for internal only APIs.</td>
</tr>
<tr>
    <td><CopyableCode code="display" /></td>
    <td><code>object</code></td>
    <td>Localized display information for this particular operation.</td>
</tr>
<tr>
    <td><CopyableCode code="isDataAction" /></td>
    <td><code>boolean</code></td>
    <td>Whether the operation applies to data-plane. This is "true" for data-plane operations and "false" for ARM/control-plane operations.</td>
</tr>
<tr>
    <td><CopyableCode code="origin" /></td>
    <td><code>string</code></td>
    <td>The intended executor of the operation; as in Resource Based Access Control (RBAC) and audit logs UX. Default value is "user,system"</td>
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
    <td></td>
    <td></td>
    <td>Lists all of the available Network Rest API operations.</td>
</tr>
<tr>
    <td><a href="#express_route_provider_port"><CopyableCode code="express_route_provider_port" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-providerport"><code>providerport</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Retrieves detail of a provider port.</td>
</tr>
<tr>
    <td><a href="#check_dns_name_availability"><CopyableCode code="check_dns_name_availability" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-location"><code>location</code></a>, <a href="#parameter-domainNameLabel"><code>domainNameLabel</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Checks whether a domain name in the cloudapp.azure.com zone is available for use.</td>
</tr>
<tr>
    <td><a href="#supported_security_providers"><CopyableCode code="supported_security_providers" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualWANName"><code>virtualWANName</code></a></td>
    <td></td>
    <td>Gives the supported security providers for the virtual wan.</td>
</tr>
<tr>
    <td><a href="#generatevirtualwanvpnserverconfigurationvpnprofile"><CopyableCode code="generatevirtualwanvpnserverconfigurationvpnprofile" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualWANName"><code>virtualWANName</code></a></td>
    <td></td>
    <td>Generates a unique VPN profile for P2S clients for VirtualWan and associated VpnServerConfiguration combination in the specified resource group.</td>
</tr>
<tr>
    <td><a href="#disconnect_active_sessions"><CopyableCode code="disconnect_active_sessions" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-bastionHostName"><code>bastionHostName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Returns the list of currently active sessions on the Bastion.</td>
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
<tr id="parameter-bastionHostName">
    <td><CopyableCode code="bastionHostName" /></td>
    <td><code>string</code></td>
    <td>The name of the Bastion Host.</td>
</tr>
<tr id="parameter-domainNameLabel">
    <td><CopyableCode code="domainNameLabel" /></td>
    <td><code>string</code></td>
    <td>The domain name to be verified. It must conform to the following regular expression: ^[a-z][a-z0-9-]&#123;1,61&#125;[a-z0-9]$.</td>
</tr>
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The location of the domain name.</td>
</tr>
<tr id="parameter-providerport">
    <td><CopyableCode code="providerport" /></td>
    <td><code>string</code></td>
    <td>The name of the provider port.</td>
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
<tr id="parameter-virtualWANName">
    <td><CopyableCode code="virtualWANName" /></td>
    <td><code>string</code></td>
    <td>The name of the VirtualWAN whose associated VpnServerConfigurations is needed.</td>
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

Lists all of the available Network Rest API operations.

```sql
SELECT
name,
actionType,
display,
isDataAction,
origin
FROM azure.network.operations
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="express_route_provider_port"
    values={[
        { label: 'express_route_provider_port', value: 'express_route_provider_port' },
        { label: 'check_dns_name_availability', value: 'check_dns_name_availability' },
        { label: 'supported_security_providers', value: 'supported_security_providers' },
        { label: 'generatevirtualwanvpnserverconfigurationvpnprofile', value: 'generatevirtualwanvpnserverconfigurationvpnprofile' },
        { label: 'disconnect_active_sessions', value: 'disconnect_active_sessions' }
    ]}
>
<TabItem value="express_route_provider_port">

Retrieves detail of a provider port.

```sql
EXEC azure.network.operations.express_route_provider_port 
@providerport='{{ providerport }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="check_dns_name_availability">

Checks whether a domain name in the cloudapp.azure.com zone is available for use.

```sql
EXEC azure.network.operations.check_dns_name_availability 
@location='{{ location }}' --required, 
@domainNameLabel='{{ domainNameLabel }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="supported_security_providers">

Gives the supported security providers for the virtual wan.

```sql
EXEC azure.network.operations.supported_security_providers 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@virtualWANName='{{ virtualWANName }}' --required
;
```
</TabItem>
<TabItem value="generatevirtualwanvpnserverconfigurationvpnprofile">

Generates a unique VPN profile for P2S clients for VirtualWan and associated VpnServerConfiguration combination in the specified resource group.

```sql
EXEC azure.network.operations.generatevirtualwanvpnserverconfigurationvpnprofile 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@virtualWANName='{{ virtualWANName }}' --required 
@@json=
'{
"vpnServerConfigurationResourceId": "{{ vpnServerConfigurationResourceId }}", 
"authenticationMethod": "{{ authenticationMethod }}"
}'
;
```
</TabItem>
<TabItem value="disconnect_active_sessions">

Returns the list of currently active sessions on the Bastion.

```sql
EXEC azure.network.operations.disconnect_active_sessions 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@bastionHostName='{{ bastionHostName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"sessionIds": "{{ sessionIds }}"
}'
;
```
</TabItem>
</Tabs>
