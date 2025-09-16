--- 
title: virtual_network_gateway_nat_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - virtual_network_gateway_nat_rules
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

Creates, updates, deletes, gets or lists a <code>virtual_network_gateway_nat_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>virtual_network_gateway_nat_rules</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.virtual_network_gateway_nat_rules" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_virtual_network_gateway', value: 'list_by_virtual_network_gateway' }
    ]}
>
<TabItem value="get">

Request successful. Returns the details of the nat rule.

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
    <td>Properties of the Virtual Network Gateway NAT rule.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_virtual_network_gateway">

Request successful. Returns all Nat rules for a virtual network gateway.

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
    <td>Properties of the Virtual Network Gateway NAT rule.</td>
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
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkGatewayName"><code>virtualNetworkGatewayName</code></a>, <a href="#parameter-natRuleName"><code>natRuleName</code></a></td>
    <td></td>
    <td>Retrieves the details of a nat rule.</td>
</tr>
<tr>
    <td><a href="#list_by_virtual_network_gateway"><CopyableCode code="list_by_virtual_network_gateway" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkGatewayName"><code>virtualNetworkGatewayName</code></a></td>
    <td></td>
    <td>Retrieves all nat rules for a particular virtual network gateway.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkGatewayName"><code>virtualNetworkGatewayName</code></a>, <a href="#parameter-natRuleName"><code>natRuleName</code></a></td>
    <td></td>
    <td>Creates a nat rule to a scalable virtual network gateway if it doesn't exist else updates the existing nat rules.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkGatewayName"><code>virtualNetworkGatewayName</code></a>, <a href="#parameter-natRuleName"><code>natRuleName</code></a></td>
    <td></td>
    <td>Deletes a nat rule.</td>
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
<tr id="parameter-natRuleName">
    <td><CopyableCode code="natRuleName" /></td>
    <td><code>string</code></td>
    <td>The name of the nat rule.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The resource group name of the Virtual Network Gateway.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-virtualNetworkGatewayName">
    <td><CopyableCode code="virtualNetworkGatewayName" /></td>
    <td><code>string</code></td>
    <td>The name of the gateway.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_virtual_network_gateway', value: 'list_by_virtual_network_gateway' }
    ]}
>
<TabItem value="get">

Retrieves the details of a nat rule.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.network.virtual_network_gateway_nat_rules
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND virtualNetworkGatewayName = '{{ virtualNetworkGatewayName }}' -- required
AND natRuleName = '{{ natRuleName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_virtual_network_gateway">

Retrieves all nat rules for a particular virtual network gateway.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.network.virtual_network_gateway_nat_rules
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND virtualNetworkGatewayName = '{{ virtualNetworkGatewayName }}' -- required
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

Creates a nat rule to a scalable virtual network gateway if it doesn't exist else updates the existing nat rules.

```sql
INSERT INTO azure.network.virtual_network_gateway_nat_rules (
data__properties,
data__name,
data__id,
subscriptionId,
resourceGroupName,
virtualNetworkGatewayName,
natRuleName
)
SELECT 
'{{ properties }}',
'{{ name }}',
'{{ id }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ virtualNetworkGatewayName }}',
'{{ natRuleName }}'
RETURNING
id,
name,
etag,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: virtual_network_gateway_nat_rules
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the virtual_network_gateway_nat_rules resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the virtual_network_gateway_nat_rules resource.
    - name: virtualNetworkGatewayName
      value: string
      description: Required parameter for the virtual_network_gateway_nat_rules resource.
    - name: natRuleName
      value: string
      description: Required parameter for the virtual_network_gateway_nat_rules resource.
    - name: properties
      value: object
      description: |
        Properties of the Virtual Network Gateway NAT rule.
    - name: name
      value: string
      description: |
        The name of the resource that is unique within a resource group. This name can be used to access the resource.
    - name: id
      value: string
      description: |
        Resource ID.
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

Deletes a nat rule.

```sql
DELETE FROM azure.network.virtual_network_gateway_nat_rules
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND virtualNetworkGatewayName = '{{ virtualNetworkGatewayName }}' --required
AND natRuleName = '{{ natRuleName }}' --required
;
```
</TabItem>
</Tabs>
