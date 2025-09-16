--- 
title: private_dns_zone_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - private_dns_zone_groups
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

Creates, updates, deletes, gets or lists a <code>private_dns_zone_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>private_dns_zone_groups</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.private_dns_zone_groups" /></td></tr>
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

Request successful. The operation returns the resulting privateDnsZoneGroup resource.

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
    <td>Name of the resource that is unique within a resource group. This name can be used to access the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the private dns zone group.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Request successful. The operation returns a list of private dns zone group resources.

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
    <td>Name of the resource that is unique within a resource group. This name can be used to access the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the private dns zone group.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-privateEndpointName"><code>privateEndpointName</code></a>, <a href="#parameter-privateDnsZoneGroupName"><code>privateDnsZoneGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets the private dns zone group resource by specified private dns zone group name.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-privateEndpointName"><code>privateEndpointName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets all private dns zone groups in a private endpoint.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-privateEndpointName"><code>privateEndpointName</code></a>, <a href="#parameter-privateDnsZoneGroupName"><code>privateDnsZoneGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates or updates a private dns zone group in the specified private endpoint.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-privateEndpointName"><code>privateEndpointName</code></a>, <a href="#parameter-privateDnsZoneGroupName"><code>privateDnsZoneGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes the specified private dns zone group.</td>
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
<tr id="parameter-privateDnsZoneGroupName">
    <td><CopyableCode code="privateDnsZoneGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the private dns zone group.</td>
</tr>
<tr id="parameter-privateEndpointName">
    <td><CopyableCode code="privateEndpointName" /></td>
    <td><code>string</code></td>
    <td>The name of the private endpoint.</td>
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
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Gets the private dns zone group resource by specified private dns zone group name.

```sql
SELECT
id,
name,
etag,
properties
FROM azure.network.private_dns_zone_groups
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND privateEndpointName = '{{ privateEndpointName }}' -- required
AND privateDnsZoneGroupName = '{{ privateDnsZoneGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets all private dns zone groups in a private endpoint.

```sql
SELECT
id,
name,
etag,
properties
FROM azure.network.private_dns_zone_groups
WHERE privateEndpointName = '{{ privateEndpointName }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
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

Creates or updates a private dns zone group in the specified private endpoint.

```sql
INSERT INTO azure.network.private_dns_zone_groups (
data__name,
data__properties,
data__id,
resourceGroupName,
privateEndpointName,
privateDnsZoneGroupName,
subscriptionId
)
SELECT 
'{{ name }}',
'{{ properties }}',
'{{ id }}',
'{{ resourceGroupName }}',
'{{ privateEndpointName }}',
'{{ privateDnsZoneGroupName }}',
'{{ subscriptionId }}'
RETURNING
id,
name,
etag,
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: private_dns_zone_groups
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the private_dns_zone_groups resource.
    - name: privateEndpointName
      value: string
      description: Required parameter for the private_dns_zone_groups resource.
    - name: privateDnsZoneGroupName
      value: string
      description: Required parameter for the private_dns_zone_groups resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the private_dns_zone_groups resource.
    - name: name
      value: string
      description: |
        Name of the resource that is unique within a resource group. This name can be used to access the resource.
    - name: properties
      value: object
      description: |
        Properties of the private dns zone group.
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

Deletes the specified private dns zone group.

```sql
DELETE FROM azure.network.private_dns_zone_groups
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND privateEndpointName = '{{ privateEndpointName }}' --required
AND privateDnsZoneGroupName = '{{ privateDnsZoneGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
