--- 
title: managed_database_sensitivity_labels
hide_title: false
hide_table_of_contents: false
keywords:
  - managed_database_sensitivity_labels
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

Creates, updates, deletes, gets or lists a <code>managed_database_sensitivity_labels</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>managed_database_sensitivity_labels</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.managed_database_sensitivity_labels" /></td></tr>
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

Successfully retrieved the sensitivity label.

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
    <td><CopyableCode code="managedBy" /></td>
    <td><code>string</code></td>
    <td>Resource that manages the sensitivity label.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Resource properties.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-schemaName"><code>schemaName</code></a>, <a href="#parameter-tableName"><code>tableName</code></a>, <a href="#parameter-columnName"><code>columnName</code></a>, <a href="#parameter-sensitivityLabelSource"><code>sensitivityLabelSource</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets the sensitivity label of a given column</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-schemaName"><code>schemaName</code></a>, <a href="#parameter-tableName"><code>tableName</code></a>, <a href="#parameter-columnName"><code>columnName</code></a>, <a href="#parameter-sensitivityLabelSource"><code>sensitivityLabelSource</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates or updates the sensitivity label of a given column</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Update sensitivity labels of a given database using an operations batch.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-schemaName"><code>schemaName</code></a>, <a href="#parameter-tableName"><code>tableName</code></a>, <a href="#parameter-columnName"><code>columnName</code></a>, <a href="#parameter-sensitivityLabelSource"><code>sensitivityLabelSource</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes the sensitivity label of a given column</td>
</tr>
<tr>
    <td><a href="#disable_recommendation"><CopyableCode code="disable_recommendation" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-schemaName"><code>schemaName</code></a>, <a href="#parameter-tableName"><code>tableName</code></a>, <a href="#parameter-columnName"><code>columnName</code></a>, <a href="#parameter-sensitivityLabelSource"><code>sensitivityLabelSource</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Disables sensitivity recommendations on a given column</td>
</tr>
<tr>
    <td><a href="#enable_recommendation"><CopyableCode code="enable_recommendation" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-schemaName"><code>schemaName</code></a>, <a href="#parameter-tableName"><code>tableName</code></a>, <a href="#parameter-columnName"><code>columnName</code></a>, <a href="#parameter-sensitivityLabelSource"><code>sensitivityLabelSource</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Enables sensitivity recommendations on a given column (recommendations are enabled by default on all columns)</td>
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
<tr id="parameter-columnName">
    <td><CopyableCode code="columnName" /></td>
    <td><code>string</code></td>
    <td>The name of the column.</td>
</tr>
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
<tr id="parameter-schemaName">
    <td><CopyableCode code="schemaName" /></td>
    <td><code>string</code></td>
    <td>The name of the schema.</td>
</tr>
<tr id="parameter-sensitivityLabelSource">
    <td><CopyableCode code="sensitivityLabelSource" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription ID that identifies an Azure subscription.</td>
</tr>
<tr id="parameter-tableName">
    <td><CopyableCode code="tableName" /></td>
    <td><code>string</code></td>
    <td>The name of the table.</td>
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

Gets the sensitivity label of a given column

```sql
SELECT
managedBy,
properties
FROM azure.sql.managed_database_sensitivity_labels
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND managedInstanceName = '{{ managedInstanceName }}' -- required
AND databaseName = '{{ databaseName }}' -- required
AND schemaName = '{{ schemaName }}' -- required
AND tableName = '{{ tableName }}' -- required
AND columnName = '{{ columnName }}' -- required
AND sensitivityLabelSource = '{{ sensitivityLabelSource }}' -- required
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

Creates or updates the sensitivity label of a given column

```sql
INSERT INTO azure.sql.managed_database_sensitivity_labels (
data__properties,
resourceGroupName,
managedInstanceName,
databaseName,
schemaName,
tableName,
columnName,
sensitivityLabelSource,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ managedInstanceName }}',
'{{ databaseName }}',
'{{ schemaName }}',
'{{ tableName }}',
'{{ columnName }}',
'{{ sensitivityLabelSource }}',
'{{ subscriptionId }}'
RETURNING
managedBy,
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: managed_database_sensitivity_labels
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the managed_database_sensitivity_labels resource.
    - name: managedInstanceName
      value: string
      description: Required parameter for the managed_database_sensitivity_labels resource.
    - name: databaseName
      value: string
      description: Required parameter for the managed_database_sensitivity_labels resource.
    - name: schemaName
      value: string
      description: Required parameter for the managed_database_sensitivity_labels resource.
    - name: tableName
      value: string
      description: Required parameter for the managed_database_sensitivity_labels resource.
    - name: columnName
      value: string
      description: Required parameter for the managed_database_sensitivity_labels resource.
    - name: sensitivityLabelSource
      value: string
      description: Required parameter for the managed_database_sensitivity_labels resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the managed_database_sensitivity_labels resource.
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

Update sensitivity labels of a given database using an operations batch.

```sql
UPDATE azure.sql.managed_database_sensitivity_labels
SET 
data__operations = '{{ operations }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND managedInstanceName = '{{ managedInstanceName }}' --required
AND databaseName = '{{ databaseName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required;
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

Deletes the sensitivity label of a given column

```sql
DELETE FROM azure.sql.managed_database_sensitivity_labels
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND managedInstanceName = '{{ managedInstanceName }}' --required
AND databaseName = '{{ databaseName }}' --required
AND schemaName = '{{ schemaName }}' --required
AND tableName = '{{ tableName }}' --required
AND columnName = '{{ columnName }}' --required
AND sensitivityLabelSource = '{{ sensitivityLabelSource }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="disable_recommendation"
    values={[
        { label: 'disable_recommendation', value: 'disable_recommendation' },
        { label: 'enable_recommendation', value: 'enable_recommendation' }
    ]}
>
<TabItem value="disable_recommendation">

Disables sensitivity recommendations on a given column

```sql
EXEC azure.sql.managed_database_sensitivity_labels.disable_recommendation 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@managedInstanceName='{{ managedInstanceName }}' --required, 
@databaseName='{{ databaseName }}' --required, 
@schemaName='{{ schemaName }}' --required, 
@tableName='{{ tableName }}' --required, 
@columnName='{{ columnName }}' --required, 
@sensitivityLabelSource='{{ sensitivityLabelSource }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="enable_recommendation">

Enables sensitivity recommendations on a given column (recommendations are enabled by default on all columns)

```sql
EXEC azure.sql.managed_database_sensitivity_labels.enable_recommendation 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@managedInstanceName='{{ managedInstanceName }}' --required, 
@databaseName='{{ databaseName }}' --required, 
@schemaName='{{ schemaName }}' --required, 
@tableName='{{ tableName }}' --required, 
@columnName='{{ columnName }}' --required, 
@sensitivityLabelSource='{{ sensitivityLabelSource }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
