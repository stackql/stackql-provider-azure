--- 
title: private_endpoint_connection_proxies_private_endpoint_properties
hide_title: false
hide_table_of_contents: false
keywords:
  - private_endpoint_connection_proxies_private_endpoint_properties
  - device_update
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

Creates, updates, deletes, gets or lists a <code>private_endpoint_connection_proxies_private_endpoint_properties</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>private_endpoint_connection_proxies_private_endpoint_properties</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.device_update.private_endpoint_connection_proxies_private_endpoint_properties" /></td></tr>
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
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-privateEndpointConnectionProxyId"><code>privateEndpointConnectionProxyId</code></a></td>
    <td></td>
    <td>(INTERNAL - DO NOT USE) Updates a private endpoint inside the private endpoint connection proxy object.</td>
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
<tr id="parameter-accountName">
    <td><CopyableCode code="accountName" /></td>
    <td><code>string</code></td>
    <td>Account name.</td>
</tr>
<tr id="parameter-privateEndpointConnectionProxyId">
    <td><CopyableCode code="privateEndpointConnectionProxyId" /></td>
    <td><code>string</code></td>
    <td>The ID of the private endpoint connection proxy object.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="update"
    values={[
        { label: 'update', value: 'update' }
    ]}
>
<TabItem value="update">

(INTERNAL - DO NOT USE) Updates a private endpoint inside the private endpoint connection proxy object.

```sql
EXEC azure.device_update.private_endpoint_connection_proxies_private_endpoint_properties.update 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@privateEndpointConnectionProxyId='{{ privateEndpointConnectionProxyId }}' --required 
@@json=
'{
"id": "{{ id }}", 
"location": "{{ location }}", 
"immutableSubscriptionId": "{{ immutableSubscriptionId }}", 
"immutableResourceId": "{{ immutableResourceId }}", 
"vnetTrafficTag": "{{ vnetTrafficTag }}"
}'
;
```
</TabItem>
</Tabs>
