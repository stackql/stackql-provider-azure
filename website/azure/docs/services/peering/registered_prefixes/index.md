--- 
title: registered_prefixes
hide_title: false
hide_table_of_contents: false
keywords:
  - registered_prefixes
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

Creates, updates, deletes, gets or lists a <code>registered_prefixes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>registered_prefixes</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.peering.registered_prefixes" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_peering', value: 'list_by_peering' }
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
    <td>The properties that define a registered prefix.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_peering">

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
    <td>The properties that define a registered prefix.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-peeringName"><code>peeringName</code></a>, <a href="#parameter-registeredPrefixName"><code>registeredPrefixName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets an existing registered prefix with the specified name under the given subscription, resource group and peering.</td>
</tr>
<tr>
    <td><a href="#list_by_peering"><CopyableCode code="list_by_peering" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-peeringName"><code>peeringName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Lists all registered prefixes under the given subscription, resource group and peering.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-peeringName"><code>peeringName</code></a>, <a href="#parameter-registeredPrefixName"><code>registeredPrefixName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates a new registered prefix with the specified name under the given subscription, resource group and peering.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-peeringName"><code>peeringName</code></a>, <a href="#parameter-registeredPrefixName"><code>registeredPrefixName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes an existing registered prefix with the specified name under the given subscription, resource group and peering.</td>
</tr>
<tr>
    <td><a href="#validate"><CopyableCode code="validate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-peeringName"><code>peeringName</code></a>, <a href="#parameter-registeredPrefixName"><code>registeredPrefixName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Validates an existing registered prefix with the specified name under the given subscription, resource group and peering.</td>
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
<tr id="parameter-peeringName">
    <td><CopyableCode code="peeringName" /></td>
    <td><code>string</code></td>
    <td>The name of the peering.</td>
</tr>
<tr id="parameter-registeredPrefixName">
    <td><CopyableCode code="registeredPrefixName" /></td>
    <td><code>string</code></td>
    <td>The name of the registered prefix.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_peering', value: 'list_by_peering' }
    ]}
>
<TabItem value="get">

Gets an existing registered prefix with the specified name under the given subscription, resource group and peering.

```sql
SELECT
id,
name,
properties,
type
FROM azure.peering.registered_prefixes
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND peeringName = '{{ peeringName }}' -- required
AND registeredPrefixName = '{{ registeredPrefixName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_peering">

Lists all registered prefixes under the given subscription, resource group and peering.

```sql
SELECT
id,
name,
properties,
type
FROM azure.peering.registered_prefixes
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND peeringName = '{{ peeringName }}' -- required
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

Creates a new registered prefix with the specified name under the given subscription, resource group and peering.

```sql
INSERT INTO azure.peering.registered_prefixes (
data__properties,
resourceGroupName,
peeringName,
registeredPrefixName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ peeringName }}',
'{{ registeredPrefixName }}',
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
- name: registered_prefixes
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the registered_prefixes resource.
    - name: peeringName
      value: string
      description: Required parameter for the registered_prefixes resource.
    - name: registeredPrefixName
      value: string
      description: Required parameter for the registered_prefixes resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the registered_prefixes resource.
    - name: properties
      value: object
      description: |
        The properties that define a registered prefix.
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

Deletes an existing registered prefix with the specified name under the given subscription, resource group and peering.

```sql
DELETE FROM azure.peering.registered_prefixes
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND peeringName = '{{ peeringName }}' --required
AND registeredPrefixName = '{{ registeredPrefixName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="validate"
    values={[
        { label: 'validate', value: 'validate' }
    ]}
>
<TabItem value="validate">

Validates an existing registered prefix with the specified name under the given subscription, resource group and peering.

```sql
EXEC azure.peering.registered_prefixes.validate 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@peeringName='{{ peeringName }}' --required, 
@registeredPrefixName='{{ registeredPrefixName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
