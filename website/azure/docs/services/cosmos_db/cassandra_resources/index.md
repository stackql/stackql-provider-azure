--- 
title: cassandra_resources
hide_title: false
hide_table_of_contents: false
keywords:
  - cassandra_resources
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

Creates, updates, deletes, gets or lists a <code>cassandra_resources</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>cassandra_resources</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cosmos_db.cassandra_resources" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#migrate_cassandra_keyspace_to_autoscale"><CopyableCode code="migrate_cassandra_keyspace_to_autoscale" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-keyspaceName"><code>keyspaceName</code></a></td>
    <td></td>
    <td>Migrate an Azure Cosmos DB Cassandra Keyspace from manual throughput to autoscale</td>
</tr>
<tr>
    <td><a href="#migrate_cassandra_keyspace_to_manual_throughput"><CopyableCode code="migrate_cassandra_keyspace_to_manual_throughput" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-keyspaceName"><code>keyspaceName</code></a></td>
    <td></td>
    <td>Migrate an Azure Cosmos DB Cassandra Keyspace from autoscale to manual throughput</td>
</tr>
<tr>
    <td><a href="#migrate_cassandra_table_to_autoscale"><CopyableCode code="migrate_cassandra_table_to_autoscale" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-keyspaceName"><code>keyspaceName</code></a>, <a href="#parameter-tableName"><code>tableName</code></a></td>
    <td></td>
    <td>Migrate an Azure Cosmos DB Cassandra table from manual throughput to autoscale</td>
</tr>
<tr>
    <td><a href="#migrate_cassandra_table_to_manual_throughput"><CopyableCode code="migrate_cassandra_table_to_manual_throughput" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-keyspaceName"><code>keyspaceName</code></a>, <a href="#parameter-tableName"><code>tableName</code></a></td>
    <td></td>
    <td>Migrate an Azure Cosmos DB Cassandra table from autoscale to manual throughput</td>
</tr>
<tr>
    <td><a href="#migrate_cassandra_view_to_autoscale"><CopyableCode code="migrate_cassandra_view_to_autoscale" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-keyspaceName"><code>keyspaceName</code></a>, <a href="#parameter-viewName"><code>viewName</code></a></td>
    <td></td>
    <td>Migrate an Azure Cosmos DB Cassandra view from manual throughput to autoscale</td>
</tr>
<tr>
    <td><a href="#migrate_cassandra_view_to_manual_throughput"><CopyableCode code="migrate_cassandra_view_to_manual_throughput" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-keyspaceName"><code>keyspaceName</code></a>, <a href="#parameter-viewName"><code>viewName</code></a></td>
    <td></td>
    <td>Migrate an Azure Cosmos DB Cassandra view from autoscale to manual throughput</td>
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
<tr id="parameter-keyspaceName">
    <td><CopyableCode code="keyspaceName" /></td>
    <td><code>string</code></td>
    <td>Cosmos DB keyspace name.</td>
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
<tr id="parameter-tableName">
    <td><CopyableCode code="tableName" /></td>
    <td><code>string</code></td>
    <td>Cosmos DB table name.</td>
</tr>
<tr id="parameter-viewName">
    <td><CopyableCode code="viewName" /></td>
    <td><code>string</code></td>
    <td>Cosmos DB view name.</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="migrate_cassandra_keyspace_to_autoscale"
    values={[
        { label: 'migrate_cassandra_keyspace_to_autoscale', value: 'migrate_cassandra_keyspace_to_autoscale' },
        { label: 'migrate_cassandra_keyspace_to_manual_throughput', value: 'migrate_cassandra_keyspace_to_manual_throughput' },
        { label: 'migrate_cassandra_table_to_autoscale', value: 'migrate_cassandra_table_to_autoscale' },
        { label: 'migrate_cassandra_table_to_manual_throughput', value: 'migrate_cassandra_table_to_manual_throughput' },
        { label: 'migrate_cassandra_view_to_autoscale', value: 'migrate_cassandra_view_to_autoscale' },
        { label: 'migrate_cassandra_view_to_manual_throughput', value: 'migrate_cassandra_view_to_manual_throughput' }
    ]}
>
<TabItem value="migrate_cassandra_keyspace_to_autoscale">

Migrate an Azure Cosmos DB Cassandra Keyspace from manual throughput to autoscale

```sql
EXEC azure.cosmos_db.cassandra_resources.migrate_cassandra_keyspace_to_autoscale 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@keyspaceName='{{ keyspaceName }}' --required
;
```
</TabItem>
<TabItem value="migrate_cassandra_keyspace_to_manual_throughput">

Migrate an Azure Cosmos DB Cassandra Keyspace from autoscale to manual throughput

```sql
EXEC azure.cosmos_db.cassandra_resources.migrate_cassandra_keyspace_to_manual_throughput 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@keyspaceName='{{ keyspaceName }}' --required
;
```
</TabItem>
<TabItem value="migrate_cassandra_table_to_autoscale">

Migrate an Azure Cosmos DB Cassandra table from manual throughput to autoscale

```sql
EXEC azure.cosmos_db.cassandra_resources.migrate_cassandra_table_to_autoscale 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@keyspaceName='{{ keyspaceName }}' --required, 
@tableName='{{ tableName }}' --required
;
```
</TabItem>
<TabItem value="migrate_cassandra_table_to_manual_throughput">

Migrate an Azure Cosmos DB Cassandra table from autoscale to manual throughput

```sql
EXEC azure.cosmos_db.cassandra_resources.migrate_cassandra_table_to_manual_throughput 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@keyspaceName='{{ keyspaceName }}' --required, 
@tableName='{{ tableName }}' --required
;
```
</TabItem>
<TabItem value="migrate_cassandra_view_to_autoscale">

Migrate an Azure Cosmos DB Cassandra view from manual throughput to autoscale

```sql
EXEC azure.cosmos_db.cassandra_resources.migrate_cassandra_view_to_autoscale 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@keyspaceName='{{ keyspaceName }}' --required, 
@viewName='{{ viewName }}' --required
;
```
</TabItem>
<TabItem value="migrate_cassandra_view_to_manual_throughput">

Migrate an Azure Cosmos DB Cassandra view from autoscale to manual throughput

```sql
EXEC azure.cosmos_db.cassandra_resources.migrate_cassandra_view_to_manual_throughput 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@keyspaceName='{{ keyspaceName }}' --required, 
@viewName='{{ viewName }}' --required
;
```
</TabItem>
</Tabs>
