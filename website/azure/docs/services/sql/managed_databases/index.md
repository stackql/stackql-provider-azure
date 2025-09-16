--- 
title: managed_databases
hide_title: false
hide_table_of_contents: false
keywords:
  - managed_databases
  - sql
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

Creates, updates, deletes, gets or lists a <code>managed_databases</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>managed_databases</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.managed_databases" /></td></tr>
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

Successfully retrieved the specified managed database.

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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Resource properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets a managed database.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-data__location"><code>data__location</code></a></td>
    <td></td>
    <td>Creates a new database or updates an existing database.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Updates an existing database.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes a managed database.</td>
</tr>
<tr>
    <td><a href="#cancel_move"><CopyableCode code="cancel_move" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-destinationManagedDatabaseId"><code>destinationManagedDatabaseId</code></a></td>
    <td></td>
    <td>Cancels a managed database move operation.</td>
</tr>
<tr>
    <td><a href="#complete_move"><CopyableCode code="complete_move" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-destinationManagedDatabaseId"><code>destinationManagedDatabaseId</code></a></td>
    <td></td>
    <td>Completes a managed database move operation.</td>
</tr>
<tr>
    <td><a href="#complete_restore"><CopyableCode code="complete_restore" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-lastBackupName"><code>lastBackupName</code></a></td>
    <td></td>
    <td>Completes the restore operation on a managed database.</td>
</tr>
<tr>
    <td><a href="#start_move"><CopyableCode code="start_move" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-destinationManagedDatabaseId"><code>destinationManagedDatabaseId</code></a></td>
    <td></td>
    <td>Starts a managed database move operation.</td>
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
<tr id="parameter-databaseName">
    <td><CopyableCode code="databaseName" /></td>
    <td><code>string</code></td>
    <td>The name of the database.</td>
</tr>
<tr id="parameter-managedInstanceName">
    <td><CopyableCode code="managedInstanceName" /></td>
    <td><code>string</code></td>
    <td>The name of the managed instance.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription ID that identifies an Azure subscription.</td>
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

Gets a managed database.

```sql
SELECT
location,
properties,
tags
FROM azure.sql.managed_databases
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND managedInstanceName = '{{ managedInstanceName }}' -- required
AND databaseName = '{{ databaseName }}' -- required
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

Creates a new database or updates an existing database.

```sql
INSERT INTO azure.sql.managed_databases (
data__location,
data__tags,
data__properties,
resourceGroupName,
managedInstanceName,
databaseName,
subscriptionId
)
SELECT 
'{{ location }}' /* required */,
'{{ tags }}',
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ managedInstanceName }}',
'{{ databaseName }}',
'{{ subscriptionId }}'
RETURNING
location,
properties,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: managed_databases
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the managed_databases resource.
    - name: managedInstanceName
      value: string
      description: Required parameter for the managed_databases resource.
    - name: databaseName
      value: string
      description: Required parameter for the managed_databases resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the managed_databases resource.
    - name: location
      value: string
      description: |
        Resource location.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: properties
      value: object
      description: |
        Resource properties.
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

Updates an existing database.

```sql
UPDATE azure.sql.managed_databases
SET 
data__properties = '{{ properties }}',
data__tags = '{{ tags }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND managedInstanceName = '{{ managedInstanceName }}' --required
AND databaseName = '{{ databaseName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
RETURNING
location,
properties,
tags;
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

Deletes a managed database.

```sql
DELETE FROM azure.sql.managed_databases
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND managedInstanceName = '{{ managedInstanceName }}' --required
AND databaseName = '{{ databaseName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="cancel_move"
    values={[
        { label: 'cancel_move', value: 'cancel_move' },
        { label: 'complete_move', value: 'complete_move' },
        { label: 'complete_restore', value: 'complete_restore' },
        { label: 'start_move', value: 'start_move' }
    ]}
>
<TabItem value="cancel_move">

Cancels a managed database move operation.

```sql
EXEC azure.sql.managed_databases.cancel_move 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@managedInstanceName='{{ managedInstanceName }}' --required, 
@databaseName='{{ databaseName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"destinationManagedDatabaseId": "{{ destinationManagedDatabaseId }}"
}'
;
```
</TabItem>
<TabItem value="complete_move">

Completes a managed database move operation.

```sql
EXEC azure.sql.managed_databases.complete_move 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@managedInstanceName='{{ managedInstanceName }}' --required, 
@databaseName='{{ databaseName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"destinationManagedDatabaseId": "{{ destinationManagedDatabaseId }}"
}'
;
```
</TabItem>
<TabItem value="complete_restore">

Completes the restore operation on a managed database.

```sql
EXEC azure.sql.managed_databases.complete_restore 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@managedInstanceName='{{ managedInstanceName }}' --required, 
@databaseName='{{ databaseName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"lastBackupName": "{{ lastBackupName }}"
}'
;
```
</TabItem>
<TabItem value="start_move">

Starts a managed database move operation.

```sql
EXEC azure.sql.managed_databases.start_move 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@managedInstanceName='{{ managedInstanceName }}' --required, 
@databaseName='{{ databaseName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"destinationManagedDatabaseId": "{{ destinationManagedDatabaseId }}", 
"operationMode": "{{ operationMode }}"
}'
;
```
</TabItem>
</Tabs>
