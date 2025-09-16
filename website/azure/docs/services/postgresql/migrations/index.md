--- 
title: migrations
hide_title: false
hide_table_of_contents: false
keywords:
  - migrations
  - postgresql
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

Creates, updates, deletes, gets or lists a <code>migrations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>migrations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.postgresql.migrations" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_target_server', value: 'list_by_target_server' }
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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Migration resource properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_target_server">

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
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Migration resource properties.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-targetDbServerName"><code>targetDbServerName</code></a>, <a href="#parameter-migrationName"><code>migrationName</code></a></td>
    <td></td>
    <td>Gets details of a migration.</td>
</tr>
<tr>
    <td><a href="#list_by_target_server"><CopyableCode code="list_by_target_server" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-targetDbServerName"><code>targetDbServerName</code></a></td>
    <td><a href="#parameter-migrationListFilter"><code>migrationListFilter</code></a></td>
    <td>List all the migrations on a given target server.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-targetDbServerName"><code>targetDbServerName</code></a>, <a href="#parameter-migrationName"><code>migrationName</code></a></td>
    <td></td>
    <td>Creates a new migration.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-targetDbServerName"><code>targetDbServerName</code></a>, <a href="#parameter-migrationName"><code>migrationName</code></a></td>
    <td></td>
    <td>Updates an existing migration. The request body can contain one to many of the mutable properties present in the migration definition. Certain property updates initiate migration state transitions.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-targetDbServerName"><code>targetDbServerName</code></a>, <a href="#parameter-migrationName"><code>migrationName</code></a></td>
    <td></td>
    <td>Deletes a migration.</td>
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
<tr id="parameter-migrationName">
    <td><CopyableCode code="migrationName" /></td>
    <td><code>string</code></td>
    <td>The name of the migration.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The resource group name of the target database server.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription ID of the target database server.</td>
</tr>
<tr id="parameter-targetDbServerName">
    <td><CopyableCode code="targetDbServerName" /></td>
    <td><code>string</code></td>
    <td>The name of the target database server.</td>
</tr>
<tr id="parameter-migrationListFilter">
    <td><CopyableCode code="migrationListFilter" /></td>
    <td><code>string</code></td>
    <td>Migration list filter. Retrieves either active migrations or all migrations.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_target_server', value: 'list_by_target_server' }
    ]}
>
<TabItem value="get">

Gets details of a migration.

```sql
SELECT
location,
properties,
tags
FROM azure.postgresql.migrations
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND targetDbServerName = '{{ targetDbServerName }}' -- required
AND migrationName = '{{ migrationName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_target_server">

List all the migrations on a given target server.

```sql
SELECT
location,
properties,
tags
FROM azure.postgresql.migrations
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND targetDbServerName = '{{ targetDbServerName }}' -- required
AND migrationListFilter = '{{ migrationListFilter }}'
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

Creates a new migration.

```sql
INSERT INTO azure.postgresql.migrations (
data__properties,
data__tags,
data__location,
subscriptionId,
resourceGroupName,
targetDbServerName,
migrationName
)
SELECT 
'{{ properties }}',
'{{ tags }}',
'{{ location }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ targetDbServerName }}',
'{{ migrationName }}'
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
- name: migrations
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the migrations resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the migrations resource.
    - name: targetDbServerName
      value: string
      description: Required parameter for the migrations resource.
    - name: migrationName
      value: string
      description: Required parameter for the migrations resource.
    - name: properties
      value: object
      description: |
        Migration resource properties.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        The geo-location where the resource lives
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

Updates an existing migration. The request body can contain one to many of the mutable properties present in the migration definition. Certain property updates initiate migration state transitions.

```sql
UPDATE azure.postgresql.migrations
SET 
data__properties = '{{ properties }}',
data__tags = '{{ tags }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND targetDbServerName = '{{ targetDbServerName }}' --required
AND migrationName = '{{ migrationName }}' --required
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

Deletes a migration.

```sql
DELETE FROM azure.postgresql.migrations
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND targetDbServerName = '{{ targetDbServerName }}' --required
AND migrationName = '{{ migrationName }}' --required
;
```
</TabItem>
</Tabs>
