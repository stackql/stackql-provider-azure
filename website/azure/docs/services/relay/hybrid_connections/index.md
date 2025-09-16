--- 
title: hybrid_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - hybrid_connections
  - relay
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

Creates, updates, deletes, gets or lists a <code>hybrid_connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>hybrid_connections</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.relay.hybrid_connections" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_namespace', value: 'list_by_namespace' }
    ]}
>
<TabItem value="get">

Successfully retrieved description for the hybrid connection.

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
    <td><CopyableCode code="properties" /></td>
    <td><code></code></td>
    <td>Properties of the HybridConnection.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The system meta data relating to this resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_namespace">

Request to retrieve hybrid connections by namespace succeeded.

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
    <td><CopyableCode code="properties" /></td>
    <td><code></code></td>
    <td>Properties of the HybridConnection.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The system meta data relating to this resource.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-namespaceName"><code>namespaceName</code></a>, <a href="#parameter-hybridConnectionName"><code>hybridConnectionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Returns the description for the specified hybrid connection.</td>
</tr>
<tr>
    <td><a href="#list_by_namespace"><CopyableCode code="list_by_namespace" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-namespaceName"><code>namespaceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Lists the hybrid connection within the namespace.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-namespaceName"><code>namespaceName</code></a>, <a href="#parameter-hybridConnectionName"><code>hybridConnectionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates or updates a service hybrid connection. This operation is idempotent.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-namespaceName"><code>namespaceName</code></a>, <a href="#parameter-hybridConnectionName"><code>hybridConnectionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes a hybrid connection.</td>
</tr>
<tr>
    <td><a href="#regenerate_keys"><CopyableCode code="regenerate_keys" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-namespaceName"><code>namespaceName</code></a>, <a href="#parameter-hybridConnectionName"><code>hybridConnectionName</code></a>, <a href="#parameter-authorizationRuleName"><code>authorizationRuleName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-keyType"><code>keyType</code></a></td>
    <td></td>
    <td>Regenerates the primary or secondary connection strings to the hybrid connection.</td>
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
<tr id="parameter-authorizationRuleName">
    <td><CopyableCode code="authorizationRuleName" /></td>
    <td><code>string</code></td>
    <td>The authorization rule name.</td>
</tr>
<tr id="parameter-hybridConnectionName">
    <td><CopyableCode code="hybridConnectionName" /></td>
    <td><code>string</code></td>
    <td>The hybrid connection name.</td>
</tr>
<tr id="parameter-namespaceName">
    <td><CopyableCode code="namespaceName" /></td>
    <td><code>string</code></td>
    <td>The namespace name</td>
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

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_namespace', value: 'list_by_namespace' }
    ]}
>
<TabItem value="get">

Returns the description for the specified hybrid connection.

```sql
SELECT
properties,
systemData
FROM azure.relay.hybrid_connections
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND namespaceName = '{{ namespaceName }}' -- required
AND hybridConnectionName = '{{ hybridConnectionName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_namespace">

Lists the hybrid connection within the namespace.

```sql
SELECT
properties,
systemData
FROM azure.relay.hybrid_connections
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND namespaceName = '{{ namespaceName }}' -- required
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

Creates or updates a service hybrid connection. This operation is idempotent.

```sql
INSERT INTO azure.relay.hybrid_connections (
data__properties,
resourceGroupName,
namespaceName,
hybridConnectionName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ namespaceName }}',
'{{ hybridConnectionName }}',
'{{ subscriptionId }}'
RETURNING
properties,
systemData
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: hybrid_connections
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the hybrid_connections resource.
    - name: namespaceName
      value: string
      description: Required parameter for the hybrid_connections resource.
    - name: hybridConnectionName
      value: string
      description: Required parameter for the hybrid_connections resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the hybrid_connections resource.
    - name: properties
      value: string
      description: |
        Properties of the HybridConnection.
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

Deletes a hybrid connection.

```sql
DELETE FROM azure.relay.hybrid_connections
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND namespaceName = '{{ namespaceName }}' --required
AND hybridConnectionName = '{{ hybridConnectionName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="regenerate_keys"
    values={[
        { label: 'regenerate_keys', value: 'regenerate_keys' }
    ]}
>
<TabItem value="regenerate_keys">

Regenerates the primary or secondary connection strings to the hybrid connection.

```sql
EXEC azure.relay.hybrid_connections.regenerate_keys 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@namespaceName='{{ namespaceName }}' --required, 
@hybridConnectionName='{{ hybridConnectionName }}' --required, 
@authorizationRuleName='{{ authorizationRuleName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"keyType": "{{ keyType }}", 
"key": "{{ key }}"
}'
;
```
</TabItem>
</Tabs>
