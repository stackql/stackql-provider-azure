--- 
title: database_columns
hide_title: false
hide_table_of_contents: false
keywords:
  - database_columns
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

Creates, updates, deletes, gets or lists a <code>database_columns</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>database_columns</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.database_columns" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_table', value: 'list_by_table' },
        { label: 'list_by_database', value: 'list_by_database' }
    ]}
>
<TabItem value="get">

Successfully retrieved database column.

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
    <td><code>object</code></td>
    <td>Resource properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_table">

Successfully retrieved database columns.

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
    <td><code>object</code></td>
    <td>Resource properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_database">

Successfully retrieved database columns.

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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-schemaName"><code>schemaName</code></a>, <a href="#parameter-tableName"><code>tableName</code></a>, <a href="#parameter-columnName"><code>columnName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Get database column</td>
</tr>
<tr>
    <td><a href="#list_by_table"><CopyableCode code="list_by_table" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-schemaName"><code>schemaName</code></a>, <a href="#parameter-tableName"><code>tableName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>List database columns</td>
</tr>
<tr>
    <td><a href="#list_by_database"><CopyableCode code="list_by_database" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-schema"><code>schema</code></a>, <a href="#parameter-table"><code>table</code></a>, <a href="#parameter-column"><code>column</code></a>, <a href="#parameter-orderBy"><code>orderBy</code></a>, <a href="#parameter-$skiptoken"><code>$skiptoken</code></a></td>
    <td>List database columns</td>
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
<tr id="parameter-serverName">
    <td><CopyableCode code="serverName" /></td>
    <td><code>string</code></td>
    <td>The name of the server.</td>
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
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>An OData filter expression that filters elements in the collection.</td>
</tr>
<tr id="parameter-$skiptoken">
    <td><CopyableCode code="$skiptoken" /></td>
    <td><code>string</code></td>
    <td>An opaque token that identifies a starting point in the collection.</td>
</tr>
<tr id="parameter-column">
    <td><CopyableCode code="column" /></td>
    <td><code>array</code></td>
    <td></td>
</tr>
<tr id="parameter-orderBy">
    <td><CopyableCode code="orderBy" /></td>
    <td><code>array</code></td>
    <td></td>
</tr>
<tr id="parameter-schema">
    <td><CopyableCode code="schema" /></td>
    <td><code>array</code></td>
    <td></td>
</tr>
<tr id="parameter-table">
    <td><CopyableCode code="table" /></td>
    <td><code>array</code></td>
    <td></td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_table', value: 'list_by_table' },
        { label: 'list_by_database', value: 'list_by_database' }
    ]}
>
<TabItem value="get">

Get database column

```sql
SELECT
properties
FROM azure.sql.database_columns
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serverName = '{{ serverName }}' -- required
AND databaseName = '{{ databaseName }}' -- required
AND schemaName = '{{ schemaName }}' -- required
AND tableName = '{{ tableName }}' -- required
AND columnName = '{{ columnName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_table">

List database columns

```sql
SELECT
properties
FROM azure.sql.database_columns
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serverName = '{{ serverName }}' -- required
AND databaseName = '{{ databaseName }}' -- required
AND schemaName = '{{ schemaName }}' -- required
AND tableName = '{{ tableName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $filter = '{{ $filter }}'
;
```
</TabItem>
<TabItem value="list_by_database">

List database columns

```sql
SELECT
properties
FROM azure.sql.database_columns
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serverName = '{{ serverName }}' -- required
AND databaseName = '{{ databaseName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND schema = '{{ schema }}'
AND table = '{{ table }}'
AND column = '{{ column }}'
AND orderBy = '{{ orderBy }}'
AND $skiptoken = '{{ $skiptoken }}'
;
```
</TabItem>
</Tabs>
