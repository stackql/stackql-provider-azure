--- 
title: prefixes
hide_title: false
hide_table_of_contents: false
keywords:
  - prefixes
  - peering
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

Creates, updates, deletes, gets or lists a <code>prefixes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>prefixes</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.peering.prefixes" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_peering_service', value: 'list_by_peering_service' }
    ]}
>
<TabItem value="get">

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
    <td>The ID of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Gets or sets the peering prefix properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_peering_service">

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
    <td>The ID of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Gets or sets the peering prefix properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-peeringServiceName"><code>peeringServiceName</code></a>, <a href="#parameter-prefixName"><code>prefixName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>Gets an existing prefix with the specified name under the given subscription, resource group and peering service.</td>
</tr>
<tr>
    <td><a href="#list_by_peering_service"><CopyableCode code="list_by_peering_service" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-peeringServiceName"><code>peeringServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>Lists all prefixes under the given subscription, resource group and peering service.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-peeringServiceName"><code>peeringServiceName</code></a>, <a href="#parameter-prefixName"><code>prefixName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates a new prefix with the specified name under the given subscription, resource group and peering service.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-peeringServiceName"><code>peeringServiceName</code></a>, <a href="#parameter-prefixName"><code>prefixName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes an existing prefix with the specified name under the given subscription, resource group and peering service.</td>
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
<tr id="parameter-peeringServiceName">
    <td><CopyableCode code="peeringServiceName" /></td>
    <td><code>string</code></td>
    <td>The name of the peering service.</td>
</tr>
<tr id="parameter-prefixName">
    <td><CopyableCode code="prefixName" /></td>
    <td><code>string</code></td>
    <td>The name of the prefix.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The Azure subscription ID.</td>
</tr>
<tr id="parameter-$expand">
    <td><CopyableCode code="$expand" /></td>
    <td><code>string</code></td>
    <td>The properties to be expanded.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_peering_service', value: 'list_by_peering_service' }
    ]}
>
<TabItem value="get">

Gets an existing prefix with the specified name under the given subscription, resource group and peering service.

```sql
SELECT
id,
name,
properties,
type
FROM azure.peering.prefixes
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND peeringServiceName = '{{ peeringServiceName }}' -- required
AND prefixName = '{{ prefixName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $expand = '{{ $expand }}'
;
```
</TabItem>
<TabItem value="list_by_peering_service">

Lists all prefixes under the given subscription, resource group and peering service.

```sql
SELECT
id,
name,
properties,
type
FROM azure.peering.prefixes
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND peeringServiceName = '{{ peeringServiceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $expand = '{{ $expand }}'
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

Creates a new prefix with the specified name under the given subscription, resource group and peering service.

```sql
INSERT INTO azure.peering.prefixes (
data__properties,
resourceGroupName,
peeringServiceName,
prefixName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ peeringServiceName }}',
'{{ prefixName }}',
'{{ subscriptionId }}'
RETURNING
id,
name,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: prefixes
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the prefixes resource.
    - name: peeringServiceName
      value: string
      description: Required parameter for the prefixes resource.
    - name: prefixName
      value: string
      description: Required parameter for the prefixes resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the prefixes resource.
    - name: properties
      value: object
      description: |
        Gets or sets the peering prefix properties.
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

Deletes an existing prefix with the specified name under the given subscription, resource group and peering service.

```sql
DELETE FROM azure.peering.prefixes
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND peeringServiceName = '{{ peeringServiceName }}' --required
AND prefixName = '{{ prefixName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
