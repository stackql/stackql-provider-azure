--- 
title: inbound_nat_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - inbound_nat_rules
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

Creates, updates, deletes, gets or lists an <code>inbound_nat_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>inbound_nat_rules</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.inbound_nat_rules" /></td></tr>
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

Request successful. The operation returns the resulting InboundNatRule resource.

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
    <td>The name of the resource that is unique within the set of inbound NAT rules used by the load balancer. This name can be used to access the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of load balancer inbound NAT rule.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of the resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Request successful. The operation returns a list of LoadBalancer InboundNatRule resources.

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
    <td>The name of the resource that is unique within the set of inbound NAT rules used by the load balancer. This name can be used to access the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of load balancer inbound NAT rule.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of the resource.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-loadBalancerName"><code>loadBalancerName</code></a>, <a href="#parameter-inboundNatRuleName"><code>inboundNatRuleName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>Gets the specified load balancer inbound NAT rule.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-loadBalancerName"><code>loadBalancerName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets all the inbound NAT rules in a load balancer.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-loadBalancerName"><code>loadBalancerName</code></a>, <a href="#parameter-inboundNatRuleName"><code>inboundNatRuleName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates or updates a load balancer inbound NAT rule.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-loadBalancerName"><code>loadBalancerName</code></a>, <a href="#parameter-inboundNatRuleName"><code>inboundNatRuleName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes the specified load balancer inbound NAT rule.</td>
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
<tr id="parameter-inboundNatRuleName">
    <td><CopyableCode code="inboundNatRuleName" /></td>
    <td><code>string</code></td>
    <td>The name of the inbound NAT rule.</td>
</tr>
<tr id="parameter-loadBalancerName">
    <td><CopyableCode code="loadBalancerName" /></td>
    <td><code>string</code></td>
    <td>The name of the load balancer.</td>
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
<tr id="parameter-$expand">
    <td><CopyableCode code="$expand" /></td>
    <td><code>string</code></td>
    <td>Expands referenced resources.</td>
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

Gets the specified load balancer inbound NAT rule.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.network.inbound_nat_rules
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND loadBalancerName = '{{ loadBalancerName }}' -- required
AND inboundNatRuleName = '{{ inboundNatRuleName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $expand = '{{ $expand }}'
;
```
</TabItem>
<TabItem value="list">

Gets all the inbound NAT rules in a load balancer.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.network.inbound_nat_rules
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND loadBalancerName = '{{ loadBalancerName }}' -- required
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

Creates or updates a load balancer inbound NAT rule.

```sql
INSERT INTO azure.network.inbound_nat_rules (
data__properties,
data__name,
data__id,
resourceGroupName,
loadBalancerName,
inboundNatRuleName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ name }}',
'{{ id }}',
'{{ resourceGroupName }}',
'{{ loadBalancerName }}',
'{{ inboundNatRuleName }}',
'{{ subscriptionId }}'
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
- name: inbound_nat_rules
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the inbound_nat_rules resource.
    - name: loadBalancerName
      value: string
      description: Required parameter for the inbound_nat_rules resource.
    - name: inboundNatRuleName
      value: string
      description: Required parameter for the inbound_nat_rules resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the inbound_nat_rules resource.
    - name: properties
      value: object
      description: |
        Properties of load balancer inbound NAT rule.
    - name: name
      value: string
      description: |
        The name of the resource that is unique within the set of inbound NAT rules used by the load balancer. This name can be used to access the resource.
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

Deletes the specified load balancer inbound NAT rule.

```sql
DELETE FROM azure.network.inbound_nat_rules
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND loadBalancerName = '{{ loadBalancerName }}' --required
AND inboundNatRuleName = '{{ inboundNatRuleName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
