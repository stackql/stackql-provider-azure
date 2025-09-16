--- 
title: mongodb_resources
hide_title: false
hide_table_of_contents: false
keywords:
  - mongodb_resources
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

Creates, updates, deletes, gets or lists a <code>mongodb_resources</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>mongodb_resources</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cosmos_db.mongodb_resources" /></td></tr>
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
    <td><a href="#retrieve_continuous_backup_information"><CopyableCode code="retrieve_continuous_backup_information" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-collectionName"><code>collectionName</code></a></td>
    <td></td>
    <td>Retrieves continuous backup information for a Mongodb collection.</td>
</tr>
<tr>
    <td><a href="#migrate_mongodb_database_to_autoscale"><CopyableCode code="migrate_mongodb_database_to_autoscale" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a></td>
    <td></td>
    <td>Migrate an Azure Cosmos DB MongoDB database from manual throughput to autoscale</td>
</tr>
<tr>
    <td><a href="#migrate_mongodb_database_to_manual_throughput"><CopyableCode code="migrate_mongodb_database_to_manual_throughput" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a></td>
    <td></td>
    <td>Migrate an Azure Cosmos DB MongoDB database from autoscale to manual throughput</td>
</tr>
<tr>
    <td><a href="#mongodb_database_retrieve_throughput_distribution"><CopyableCode code="mongodb_database_retrieve_throughput_distribution" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td></td>
    <td>Retrieve throughput distribution for an Azure Cosmos DB MongoDB database</td>
</tr>
<tr>
    <td><a href="#mongodb_database_redistribute_throughput"><CopyableCode code="mongodb_database_redistribute_throughput" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td></td>
    <td>Redistribute throughput for an Azure Cosmos DB MongoDB database</td>
</tr>
<tr>
    <td><a href="#mongodb_container_retrieve_throughput_distribution"><CopyableCode code="mongodb_container_retrieve_throughput_distribution" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-collectionName"><code>collectionName</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td></td>
    <td>Retrieve throughput distribution for an Azure Cosmos DB MongoDB container</td>
</tr>
<tr>
    <td><a href="#mongodb_container_redistribute_throughput"><CopyableCode code="mongodb_container_redistribute_throughput" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-collectionName"><code>collectionName</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td></td>
    <td>Redistribute throughput for an Azure Cosmos DB MongoDB container</td>
</tr>
<tr>
    <td><a href="#mongodb_database_partition_merge"><CopyableCode code="mongodb_database_partition_merge" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a></td>
    <td></td>
    <td>Merges the partitions of a MongoDB database</td>
</tr>
<tr>
    <td><a href="#migrate_mongodb_collection_to_autoscale"><CopyableCode code="migrate_mongodb_collection_to_autoscale" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-collectionName"><code>collectionName</code></a></td>
    <td></td>
    <td>Migrate an Azure Cosmos DB MongoDB collection from manual throughput to autoscale</td>
</tr>
<tr>
    <td><a href="#migrate_mongodb_collection_to_manual_throughput"><CopyableCode code="migrate_mongodb_collection_to_manual_throughput" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-collectionName"><code>collectionName</code></a></td>
    <td></td>
    <td>Migrate an Azure Cosmos DB MongoDB collection from autoscale to manual throughput</td>
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
<tr id="parameter-collectionName">
    <td><CopyableCode code="collectionName" /></td>
    <td><code>string</code></td>
    <td>Cosmos DB collection name.</td>
</tr>
<tr id="parameter-databaseName">
    <td><CopyableCode code="databaseName" /></td>
    <td><code>string</code></td>
    <td>Cosmos DB database name.</td>
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

## Lifecycle Methods

<Tabs
    defaultValue="retrieve_continuous_backup_information"
    values={[
        { label: 'retrieve_continuous_backup_information', value: 'retrieve_continuous_backup_information' },
        { label: 'migrate_mongodb_database_to_autoscale', value: 'migrate_mongodb_database_to_autoscale' },
        { label: 'migrate_mongodb_database_to_manual_throughput', value: 'migrate_mongodb_database_to_manual_throughput' },
        { label: 'mongodb_database_retrieve_throughput_distribution', value: 'mongodb_database_retrieve_throughput_distribution' },
        { label: 'mongodb_database_redistribute_throughput', value: 'mongodb_database_redistribute_throughput' },
        { label: 'mongodb_container_retrieve_throughput_distribution', value: 'mongodb_container_retrieve_throughput_distribution' },
        { label: 'mongodb_container_redistribute_throughput', value: 'mongodb_container_redistribute_throughput' },
        { label: 'mongodb_database_partition_merge', value: 'mongodb_database_partition_merge' },
        { label: 'migrate_mongodb_collection_to_autoscale', value: 'migrate_mongodb_collection_to_autoscale' },
        { label: 'migrate_mongodb_collection_to_manual_throughput', value: 'migrate_mongodb_collection_to_manual_throughput' }
    ]}
>
<TabItem value="retrieve_continuous_backup_information">

Retrieves continuous backup information for a Mongodb collection.

```sql
EXEC azure.cosmos_db.mongodb_resources.retrieve_continuous_backup_information 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@databaseName='{{ databaseName }}' --required, 
@collectionName='{{ collectionName }}' --required 
@@json=
'{
"location": "{{ location }}"
}'
;
```
</TabItem>
<TabItem value="migrate_mongodb_database_to_autoscale">

Migrate an Azure Cosmos DB MongoDB database from manual throughput to autoscale

```sql
EXEC azure.cosmos_db.mongodb_resources.migrate_mongodb_database_to_autoscale 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@databaseName='{{ databaseName }}' --required
;
```
</TabItem>
<TabItem value="migrate_mongodb_database_to_manual_throughput">

Migrate an Azure Cosmos DB MongoDB database from autoscale to manual throughput

```sql
EXEC azure.cosmos_db.mongodb_resources.migrate_mongodb_database_to_manual_throughput 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@databaseName='{{ databaseName }}' --required
;
```
</TabItem>
<TabItem value="mongodb_database_retrieve_throughput_distribution">

Retrieve throughput distribution for an Azure Cosmos DB MongoDB database

```sql
EXEC azure.cosmos_db.mongodb_resources.mongodb_database_retrieve_throughput_distribution 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@databaseName='{{ databaseName }}' --required 
@@json=
'{
"properties": "{{ properties }}", 
"location": "{{ location }}", 
"tags": "{{ tags }}", 
"identity": "{{ identity }}"
}'
;
```
</TabItem>
<TabItem value="mongodb_database_redistribute_throughput">

Redistribute throughput for an Azure Cosmos DB MongoDB database

```sql
EXEC azure.cosmos_db.mongodb_resources.mongodb_database_redistribute_throughput 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@databaseName='{{ databaseName }}' --required 
@@json=
'{
"properties": "{{ properties }}", 
"location": "{{ location }}", 
"tags": "{{ tags }}", 
"identity": "{{ identity }}"
}'
;
```
</TabItem>
<TabItem value="mongodb_container_retrieve_throughput_distribution">

Retrieve throughput distribution for an Azure Cosmos DB MongoDB container

```sql
EXEC azure.cosmos_db.mongodb_resources.mongodb_container_retrieve_throughput_distribution 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@databaseName='{{ databaseName }}' --required, 
@collectionName='{{ collectionName }}' --required 
@@json=
'{
"properties": "{{ properties }}", 
"location": "{{ location }}", 
"tags": "{{ tags }}", 
"identity": "{{ identity }}"
}'
;
```
</TabItem>
<TabItem value="mongodb_container_redistribute_throughput">

Redistribute throughput for an Azure Cosmos DB MongoDB container

```sql
EXEC azure.cosmos_db.mongodb_resources.mongodb_container_redistribute_throughput 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@databaseName='{{ databaseName }}' --required, 
@collectionName='{{ collectionName }}' --required 
@@json=
'{
"properties": "{{ properties }}", 
"location": "{{ location }}", 
"tags": "{{ tags }}", 
"identity": "{{ identity }}"
}'
;
```
</TabItem>
<TabItem value="mongodb_database_partition_merge">

Merges the partitions of a MongoDB database

```sql
EXEC azure.cosmos_db.mongodb_resources.mongodb_database_partition_merge 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@databaseName='{{ databaseName }}' --required 
@@json=
'{
"isDryRun": {{ isDryRun }}
}'
;
```
</TabItem>
<TabItem value="migrate_mongodb_collection_to_autoscale">

Migrate an Azure Cosmos DB MongoDB collection from manual throughput to autoscale

```sql
EXEC azure.cosmos_db.mongodb_resources.migrate_mongodb_collection_to_autoscale 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@databaseName='{{ databaseName }}' --required, 
@collectionName='{{ collectionName }}' --required
;
```
</TabItem>
<TabItem value="migrate_mongodb_collection_to_manual_throughput">

Migrate an Azure Cosmos DB MongoDB collection from autoscale to manual throughput

```sql
EXEC azure.cosmos_db.mongodb_resources.migrate_mongodb_collection_to_manual_throughput 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@databaseName='{{ databaseName }}' --required, 
@collectionName='{{ collectionName }}' --required
;
```
</TabItem>
</Tabs>
