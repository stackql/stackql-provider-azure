--- 
title: kusto_pool_databases
hide_title: false
hide_table_of_contents: false
keywords:
  - kusto_pool_databases
  - synapse
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

Creates, updates, deletes, gets or lists a <code>kusto_pool_databases</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>kusto_pool_databases</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.synapse.kusto_pool_databases" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_kusto_pool', value: 'list_by_kusto_pool' }
    ]}
>
<TabItem value="get">

Successfully retrieved the specified database.

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
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of the database</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_kusto_pool">

Successfully retrieved the list of databases.

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
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of the database</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-kustoPoolName"><code>kustoPoolName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a></td>
    <td></td>
    <td>Returns a database.</td>
</tr>
<tr>
    <td><a href="#list_by_kusto_pool"><CopyableCode code="list_by_kusto_pool" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-kustoPoolName"><code>kustoPoolName</code></a></td>
    <td></td>
    <td>Returns the list of databases of the given Kusto pool.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-kustoPoolName"><code>kustoPoolName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-data__kind"><code>data__kind</code></a></td>
    <td></td>
    <td>Creates or updates a database.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-kustoPoolName"><code>kustoPoolName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-data__kind"><code>data__kind</code></a></td>
    <td></td>
    <td>Updates a database.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-kustoPoolName"><code>kustoPoolName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a></td>
    <td></td>
    <td>Deletes the database with the given name.</td>
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
    <td>The name of the database in the Kusto pool.</td>
</tr>
<tr id="parameter-kustoPoolName">
    <td><CopyableCode code="kustoPoolName" /></td>
    <td><code>string</code></td>
    <td>The name of the Kusto pool.</td>
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
<tr id="parameter-workspaceName">
    <td><CopyableCode code="workspaceName" /></td>
    <td><code>string</code></td>
    <td>The name of the workspace.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_kusto_pool', value: 'list_by_kusto_pool' }
    ]}
>
<TabItem value="get">

Returns a database.

```sql
SELECT
kind,
location,
systemData
FROM azure.synapse.kusto_pool_databases
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND workspaceName = '{{ workspaceName }}' -- required
AND kustoPoolName = '{{ kustoPoolName }}' -- required
AND databaseName = '{{ databaseName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_kusto_pool">

Returns the list of databases of the given Kusto pool.

```sql
SELECT
kind,
location,
systemData
FROM azure.synapse.kusto_pool_databases
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND workspaceName = '{{ workspaceName }}' -- required
AND kustoPoolName = '{{ kustoPoolName }}' -- required
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

Creates or updates a database.

```sql
INSERT INTO azure.synapse.kusto_pool_databases (
data__location,
data__kind,
subscriptionId,
resourceGroupName,
workspaceName,
kustoPoolName,
databaseName
)
SELECT 
'{{ location }}',
'{{ kind }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ workspaceName }}',
'{{ kustoPoolName }}',
'{{ databaseName }}'
RETURNING
kind,
location,
systemData
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: kusto_pool_databases
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the kusto_pool_databases resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the kusto_pool_databases resource.
    - name: workspaceName
      value: string
      description: Required parameter for the kusto_pool_databases resource.
    - name: kustoPoolName
      value: string
      description: Required parameter for the kusto_pool_databases resource.
    - name: databaseName
      value: string
      description: Required parameter for the kusto_pool_databases resource.
    - name: location
      value: string
      description: |
        Resource location.
    - name: kind
      value: string
      description: |
        Kind of the database
      valid_values: ['ReadWrite', 'ReadOnlyFollowing']
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

Updates a database.

```sql
UPDATE azure.synapse.kusto_pool_databases
SET 
data__location = '{{ location }}',
data__kind = '{{ kind }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND workspaceName = '{{ workspaceName }}' --required
AND kustoPoolName = '{{ kustoPoolName }}' --required
AND databaseName = '{{ databaseName }}' --required
AND data__kind = '{{ kind }}' --required
RETURNING
kind,
location,
systemData;
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

Deletes the database with the given name.

```sql
DELETE FROM azure.synapse.kusto_pool_databases
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND workspaceName = '{{ workspaceName }}' --required
AND kustoPoolName = '{{ kustoPoolName }}' --required
AND databaseName = '{{ databaseName }}' --required
;
```
</TabItem>
</Tabs>
