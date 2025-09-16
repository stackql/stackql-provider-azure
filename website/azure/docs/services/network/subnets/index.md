--- 
title: subnets
hide_title: false
hide_table_of_contents: false
keywords:
  - subnets
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

Creates, updates, deletes, gets or lists a <code>subnets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>subnets</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.subnets" /></td></tr>
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

Request successful. The operation returns the resulting Subnet resource.

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
    <td>Properties of the subnet.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Request successful. The operation returns a list of Subnet resources.

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
    <td>Properties of the subnet.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkName"><code>virtualNetworkName</code></a>, <a href="#parameter-subnetName"><code>subnetName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>Gets the specified subnet by virtual network and resource group.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkName"><code>virtualNetworkName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets all subnets in a virtual network.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkName"><code>virtualNetworkName</code></a>, <a href="#parameter-subnetName"><code>subnetName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates or updates a subnet in the specified virtual network.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkName"><code>virtualNetworkName</code></a>, <a href="#parameter-subnetName"><code>subnetName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes the specified subnet.</td>
</tr>
<tr>
    <td><a href="#prepare_network_policies"><CopyableCode code="prepare_network_policies" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkName"><code>virtualNetworkName</code></a>, <a href="#parameter-subnetName"><code>subnetName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Prepares a subnet by applying network intent policies.</td>
</tr>
<tr>
    <td><a href="#unprepare_network_policies"><CopyableCode code="unprepare_network_policies" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualNetworkName"><code>virtualNetworkName</code></a>, <a href="#parameter-subnetName"><code>subnetName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Unprepares a subnet by removing network intent policies.</td>
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
<tr id="parameter-subnetName">
    <td><CopyableCode code="subnetName" /></td>
    <td><code>string</code></td>
    <td>The name of the subnet.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-virtualNetworkName">
    <td><CopyableCode code="virtualNetworkName" /></td>
    <td><code>string</code></td>
    <td>The name of the virtual network.</td>
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

Gets the specified subnet by virtual network and resource group.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.network.subnets
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND virtualNetworkName = '{{ virtualNetworkName }}' -- required
AND subnetName = '{{ subnetName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $expand = '{{ $expand }}'
;
```
</TabItem>
<TabItem value="list">

Gets all subnets in a virtual network.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.network.subnets
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND virtualNetworkName = '{{ virtualNetworkName }}' -- required
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

Creates or updates a subnet in the specified virtual network.

```sql
INSERT INTO azure.network.subnets (
data__properties,
data__name,
data__type,
data__id,
resourceGroupName,
virtualNetworkName,
subnetName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ name }}',
'{{ type }}',
'{{ id }}',
'{{ resourceGroupName }}',
'{{ virtualNetworkName }}',
'{{ subnetName }}',
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
- name: subnets
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the subnets resource.
    - name: virtualNetworkName
      value: string
      description: Required parameter for the subnets resource.
    - name: subnetName
      value: string
      description: Required parameter for the subnets resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the subnets resource.
    - name: properties
      value: object
      description: |
        Properties of the subnet.
    - name: name
      value: string
      description: |
        The name of the resource that is unique within a resource group. This name can be used to access the resource.
    - name: type
      value: string
      description: |
        Resource type.
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

Deletes the specified subnet.

```sql
DELETE FROM azure.network.subnets
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND virtualNetworkName = '{{ virtualNetworkName }}' --required
AND subnetName = '{{ subnetName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="prepare_network_policies"
    values={[
        { label: 'prepare_network_policies', value: 'prepare_network_policies' },
        { label: 'unprepare_network_policies', value: 'unprepare_network_policies' }
    ]}
>
<TabItem value="prepare_network_policies">

Prepares a subnet by applying network intent policies.

```sql
EXEC azure.network.subnets.prepare_network_policies 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@virtualNetworkName='{{ virtualNetworkName }}' --required, 
@subnetName='{{ subnetName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"serviceName": "{{ serviceName }}", 
"networkIntentPolicyConfigurations": "{{ networkIntentPolicyConfigurations }}"
}'
;
```
</TabItem>
<TabItem value="unprepare_network_policies">

Unprepares a subnet by removing network intent policies.

```sql
EXEC azure.network.subnets.unprepare_network_policies 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@virtualNetworkName='{{ virtualNetworkName }}' --required, 
@subnetName='{{ subnetName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"serviceName": "{{ serviceName }}"
}'
;
```
</TabItem>
</Tabs>
