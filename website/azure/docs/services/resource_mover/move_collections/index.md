--- 
title: move_collections
hide_title: false
hide_table_of_contents: false
keywords:
  - move_collections
  - resource_mover
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

Creates, updates, deletes, gets or lists a <code>move_collections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>move_collections</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.resource_mover.move_collections" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
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
    <td>Fully qualified resource Id for the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>The etag of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Defines the MSI properties of the Move Collection.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Defines the move collection properties.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-moveCollectionName"><code>moveCollectionName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Gets the move collection.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-moveCollectionName"><code>moveCollectionName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Creates or updates a move collection.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-moveCollectionName"><code>moveCollectionName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Updates a move collection.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-moveCollectionName"><code>moveCollectionName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Deletes a move collection.</td>
</tr>
<tr>
    <td><a href="#prepare"><CopyableCode code="prepare" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-moveCollectionName"><code>moveCollectionName</code></a>, <a href="#parameter-moveResources"><code>moveResources</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Initiates prepare for the set of resources included in the request body. The prepare operation is on the moveResources that are in the moveState 'PreparePending' or 'PrepareFailed', on a successful completion the moveResource moveState do a transition to MovePending. To aid the user to prerequisite the operation the client can call operation with validateOnly property set to true.</td>
</tr>
<tr>
    <td><a href="#initiate_move"><CopyableCode code="initiate_move" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-moveCollectionName"><code>moveCollectionName</code></a>, <a href="#parameter-moveResources"><code>moveResources</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Moves the set of resources included in the request body. The move operation is triggered after the moveResources are in the moveState 'MovePending' or 'MoveFailed', on a successful completion the moveResource moveState do a transition to CommitPending. To aid the user to prerequisite the operation the client can call operation with validateOnly property set to true.</td>
</tr>
<tr>
    <td><a href="#commit"><CopyableCode code="commit" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-moveCollectionName"><code>moveCollectionName</code></a>, <a href="#parameter-moveResources"><code>moveResources</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Commits the set of resources included in the request body. The commit operation is triggered on the moveResources in the moveState 'CommitPending' or 'CommitFailed', on a successful completion the moveResource moveState do a transition to Committed. To aid the user to prerequisite the operation the client can call operation with validateOnly property set to true.</td>
</tr>
<tr>
    <td><a href="#discard"><CopyableCode code="discard" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-moveCollectionName"><code>moveCollectionName</code></a>, <a href="#parameter-moveResources"><code>moveResources</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Discards the set of resources included in the request body. The discard operation is triggered on the moveResources in the moveState 'CommitPending' or 'DiscardFailed', on a successful completion the moveResource moveState do a transition to MovePending. To aid the user to prerequisite the operation the client can call operation with validateOnly property set to true.</td>
</tr>
<tr>
    <td><a href="#resolve_dependencies"><CopyableCode code="resolve_dependencies" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-moveCollectionName"><code>moveCollectionName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Computes, resolves and validate the dependencies of the moveResources in the move collection.</td>
</tr>
<tr>
    <td><a href="#bulk_remove"><CopyableCode code="bulk_remove" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-moveCollectionName"><code>moveCollectionName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Removes the set of move resources included in the request body from move collection. The orchestration is done by service. To aid the user to prerequisite the operation the client can call operation with validateOnly property set to true.</td>
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
<tr id="parameter-moveCollectionName">
    <td><CopyableCode code="moveCollectionName" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The Subscription ID.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>Client Api Version.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Gets the move collection.

```sql
SELECT
id,
name,
etag,
identity,
location,
properties,
systemData,
tags,
type
FROM azure.resource_mover.move_collections
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND moveCollectionName = '{{ moveCollectionName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

Creates or updates a move collection.

```sql
INSERT INTO azure.resource_mover.move_collections (
data__tags,
data__location,
data__identity,
data__properties,
subscriptionId,
resourceGroupName,
moveCollectionName,
api-version
)
SELECT 
'{{ tags }}',
'{{ location }}',
'{{ identity }}',
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ moveCollectionName }}',
'{{ api-version }}'
RETURNING
id,
name,
etag,
identity,
location,
properties,
systemData,
tags,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: move_collections
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the move_collections resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the move_collections resource.
    - name: moveCollectionName
      value: string
      description: Required parameter for the move_collections resource.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        The geo-location where the resource lives.
    - name: identity
      value: object
      description: |
        Defines the MSI properties of the Move Collection.
    - name: properties
      value: object
      description: |
        Defines the move collection properties.
    - name: api-version
      value: string
      description: Client Api Version.
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update"
    values={[
        { label: 'update', value: 'update' }
    ]}
>
<TabItem value="update">

Updates a move collection.

```sql
UPDATE azure.resource_mover.move_collections
SET 
data__tags = '{{ tags }}',
data__identity = '{{ identity }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND moveCollectionName = '{{ moveCollectionName }}' --required
AND api-version = '{{ api-version}}'
RETURNING
id,
name,
etag,
identity,
location,
properties,
systemData,
tags,
type;
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

Deletes a move collection.

```sql
DELETE FROM azure.resource_mover.move_collections
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND moveCollectionName = '{{ moveCollectionName }}' --required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="prepare"
    values={[
        { label: 'prepare', value: 'prepare' },
        { label: 'initiate_move', value: 'initiate_move' },
        { label: 'commit', value: 'commit' },
        { label: 'discard', value: 'discard' },
        { label: 'resolve_dependencies', value: 'resolve_dependencies' },
        { label: 'bulk_remove', value: 'bulk_remove' }
    ]}
>
<TabItem value="prepare">

Initiates prepare for the set of resources included in the request body. The prepare operation is on the moveResources that are in the moveState 'PreparePending' or 'PrepareFailed', on a successful completion the moveResource moveState do a transition to MovePending. To aid the user to prerequisite the operation the client can call operation with validateOnly property set to true.

```sql
EXEC azure.resource_mover.move_collections.prepare 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@moveCollectionName='{{ moveCollectionName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"validateOnly": {{ validateOnly }}, 
"moveResources": "{{ moveResources }}", 
"moveResourceInputType": "{{ moveResourceInputType }}"
}'
;
```
</TabItem>
<TabItem value="initiate_move">

Moves the set of resources included in the request body. The move operation is triggered after the moveResources are in the moveState 'MovePending' or 'MoveFailed', on a successful completion the moveResource moveState do a transition to CommitPending. To aid the user to prerequisite the operation the client can call operation with validateOnly property set to true.

```sql
EXEC azure.resource_mover.move_collections.initiate_move 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@moveCollectionName='{{ moveCollectionName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"validateOnly": {{ validateOnly }}, 
"moveResources": "{{ moveResources }}", 
"moveResourceInputType": "{{ moveResourceInputType }}"
}'
;
```
</TabItem>
<TabItem value="commit">

Commits the set of resources included in the request body. The commit operation is triggered on the moveResources in the moveState 'CommitPending' or 'CommitFailed', on a successful completion the moveResource moveState do a transition to Committed. To aid the user to prerequisite the operation the client can call operation with validateOnly property set to true.

```sql
EXEC azure.resource_mover.move_collections.commit 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@moveCollectionName='{{ moveCollectionName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"validateOnly": {{ validateOnly }}, 
"moveResources": "{{ moveResources }}", 
"moveResourceInputType": "{{ moveResourceInputType }}"
}'
;
```
</TabItem>
<TabItem value="discard">

Discards the set of resources included in the request body. The discard operation is triggered on the moveResources in the moveState 'CommitPending' or 'DiscardFailed', on a successful completion the moveResource moveState do a transition to MovePending. To aid the user to prerequisite the operation the client can call operation with validateOnly property set to true.

```sql
EXEC azure.resource_mover.move_collections.discard 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@moveCollectionName='{{ moveCollectionName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"validateOnly": {{ validateOnly }}, 
"moveResources": "{{ moveResources }}", 
"moveResourceInputType": "{{ moveResourceInputType }}"
}'
;
```
</TabItem>
<TabItem value="resolve_dependencies">

Computes, resolves and validate the dependencies of the moveResources in the move collection.

```sql
EXEC azure.resource_mover.move_collections.resolve_dependencies 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@moveCollectionName='{{ moveCollectionName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="bulk_remove">

Removes the set of move resources included in the request body from move collection. The orchestration is done by service. To aid the user to prerequisite the operation the client can call operation with validateOnly property set to true.

```sql
EXEC azure.resource_mover.move_collections.bulk_remove 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@moveCollectionName='{{ moveCollectionName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"validateOnly": {{ validateOnly }}, 
"moveResources": "{{ moveResources }}", 
"moveResourceInputType": "{{ moveResourceInputType }}"
}'
;
```
</TabItem>
</Tabs>
