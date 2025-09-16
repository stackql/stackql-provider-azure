--- 
title: notebook_workspaces
hide_title: false
hide_table_of_contents: false
keywords:
  - notebook_workspaces
  - cosmos_db
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

Creates, updates, deletes, gets or lists a <code>notebook_workspaces</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>notebook_workspaces</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cosmos_db.notebook_workspaces" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_database_account', value: 'list_by_database_account' }
    ]}
>
<TabItem value="get">

Successfully retrieved a specified notebook workspace resource.

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
    <td>The unique resource identifier of the database account.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the database account.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Resource properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of Azure resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_database_account">

Successfully retrieved notebook workspace resources.

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
    <td>The unique resource identifier of the database account.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the database account.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Resource properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of Azure resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-notebookWorkspaceName"><code>notebookWorkspaceName</code></a></td>
    <td></td>
    <td>Gets the notebook workspace for a Cosmos DB account.</td>
</tr>
<tr>
    <td><a href="#list_by_database_account"><CopyableCode code="list_by_database_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a></td>
    <td></td>
    <td>Gets the notebook workspace resources of an existing Cosmos DB account.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-notebookWorkspaceName"><code>notebookWorkspaceName</code></a></td>
    <td></td>
    <td>Creates the notebook workspace for a Cosmos DB account.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-notebookWorkspaceName"><code>notebookWorkspaceName</code></a></td>
    <td></td>
    <td>Deletes the notebook workspace for a Cosmos DB account.</td>
</tr>
<tr>
    <td><a href="#regenerate_auth_token"><CopyableCode code="regenerate_auth_token" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-notebookWorkspaceName"><code>notebookWorkspaceName</code></a></td>
    <td></td>
    <td>Regenerates the auth token for the notebook workspace</td>
</tr>
<tr>
    <td><a href="#start"><CopyableCode code="start" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-notebookWorkspaceName"><code>notebookWorkspaceName</code></a></td>
    <td></td>
    <td>Starts the notebook workspace</td>
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
<tr id="parameter-accountName">
    <td><CopyableCode code="accountName" /></td>
    <td><code>string</code></td>
    <td>Cosmos DB database account name.</td>
</tr>
<tr id="parameter-notebookWorkspaceName">
    <td><CopyableCode code="notebookWorkspaceName" /></td>
    <td><code>string</code></td>
    <td>The name of the notebook workspace resource.</td>
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
        { label: 'list_by_database_account', value: 'list_by_database_account' }
    ]}
>
<TabItem value="get">

Gets the notebook workspace for a Cosmos DB account.

```sql
SELECT
id,
name,
properties,
type
FROM azure.cosmos_db.notebook_workspaces
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND notebookWorkspaceName = '{{ notebookWorkspaceName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_database_account">

Gets the notebook workspace resources of an existing Cosmos DB account.

```sql
SELECT
id,
name,
properties,
type
FROM azure.cosmos_db.notebook_workspaces
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
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

Creates the notebook workspace for a Cosmos DB account.

```sql
INSERT INTO azure.cosmos_db.notebook_workspaces (
subscriptionId,
resourceGroupName,
accountName,
notebookWorkspaceName
)
SELECT 
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ accountName }}',
'{{ notebookWorkspaceName }}'
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
- name: notebook_workspaces
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the notebook_workspaces resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the notebook_workspaces resource.
    - name: accountName
      value: string
      description: Required parameter for the notebook_workspaces resource.
    - name: notebookWorkspaceName
      value: string
      description: Required parameter for the notebook_workspaces resource.
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

Deletes the notebook workspace for a Cosmos DB account.

```sql
DELETE FROM azure.cosmos_db.notebook_workspaces
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND accountName = '{{ accountName }}' --required
AND notebookWorkspaceName = '{{ notebookWorkspaceName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="regenerate_auth_token"
    values={[
        { label: 'regenerate_auth_token', value: 'regenerate_auth_token' },
        { label: 'start', value: 'start' }
    ]}
>
<TabItem value="regenerate_auth_token">

Regenerates the auth token for the notebook workspace

```sql
EXEC azure.cosmos_db.notebook_workspaces.regenerate_auth_token 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@notebookWorkspaceName='{{ notebookWorkspaceName }}' --required
;
```
</TabItem>
<TabItem value="start">

Starts the notebook workspace

```sql
EXEC azure.cosmos_db.notebook_workspaces.start 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@notebookWorkspaceName='{{ notebookWorkspaceName }}' --required
;
```
</TabItem>
</Tabs>
