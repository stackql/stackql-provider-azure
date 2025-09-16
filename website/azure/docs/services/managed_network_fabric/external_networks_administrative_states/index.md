--- 
title: external_networks_administrative_states
hide_title: false
hide_table_of_contents: false
keywords:
  - external_networks_administrative_states
  - managed_network_fabric
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

Creates, updates, deletes, gets or lists an <code>external_networks_administrative_states</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>external_networks_administrative_states</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_network_fabric.external_networks_administrative_states" /></td></tr>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-l3IsolationDomainName"><code>l3IsolationDomainName</code></a>, <a href="#parameter-externalNetworkName"><code>externalNetworkName</code></a></td>
    <td></td>
    <td>Executes update operation to enable or disable administrative State for externalNetwork.</td>
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
<tr id="parameter-externalNetworkName">
    <td><CopyableCode code="externalNetworkName" /></td>
    <td><code>string</code></td>
    <td>Name of the External Network.</td>
</tr>
<tr id="parameter-l3IsolationDomainName">
    <td><CopyableCode code="l3IsolationDomainName" /></td>
    <td><code>string</code></td>
    <td>Name of the L3 Isolation Domain.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
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
    defaultValue="update"
    values={[
        { label: 'update', value: 'update' }
    ]}
>
<TabItem value="update">

Executes update operation to enable or disable administrative State for externalNetwork.

```sql
EXEC azure.managed_network_fabric.external_networks_administrative_states.update 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@l3IsolationDomainName='{{ l3IsolationDomainName }}' --required, 
@externalNetworkName='{{ externalNetworkName }}' --required 
@@json=
'{
"state": "{{ state }}", 
"resourceIds": "{{ resourceIds }}"
}'
;
```
</TabItem>
</Tabs>
