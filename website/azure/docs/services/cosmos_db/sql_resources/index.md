--- 
title: sql_resources
hide_title: false
hide_table_of_contents: false
keywords:
  - sql_resources
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

Creates, updates, deletes, gets or lists a <code>sql_resources</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>sql_resources</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cosmos_db.sql_resources" /></td></tr>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-containerName"><code>containerName</code></a></td>
    <td></td>
    <td>Retrieves continuous backup information for a container resource.</td>
</tr>
<tr>
    <td><a href="#migrate_sql_database_to_autoscale"><CopyableCode code="migrate_sql_database_to_autoscale" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a></td>
    <td></td>
    <td>Migrate an Azure Cosmos DB SQL database from manual throughput to autoscale</td>
</tr>
<tr>
    <td><a href="#migrate_sql_database_to_manual_throughput"><CopyableCode code="migrate_sql_database_to_manual_throughput" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a></td>
    <td></td>
    <td>Migrate an Azure Cosmos DB SQL database from autoscale to manual throughput</td>
</tr>
<tr>
    <td><a href="#sql_database_partition_merge"><CopyableCode code="sql_database_partition_merge" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a></td>
    <td></td>
    <td>Merges the partitions of a SQL database</td>
</tr>
<tr>
    <td><a href="#migrate_sql_container_to_autoscale"><CopyableCode code="migrate_sql_container_to_autoscale" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-containerName"><code>containerName</code></a></td>
    <td></td>
    <td>Migrate an Azure Cosmos DB SQL container from manual throughput to autoscale</td>
</tr>
<tr>
    <td><a href="#migrate_sql_container_to_manual_throughput"><CopyableCode code="migrate_sql_container_to_manual_throughput" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-containerName"><code>containerName</code></a></td>
    <td></td>
    <td>Migrate an Azure Cosmos DB SQL container from autoscale to manual throughput</td>
</tr>
<tr>
    <td><a href="#sql_database_retrieve_throughput_distribution"><CopyableCode code="sql_database_retrieve_throughput_distribution" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td></td>
    <td>Retrieve throughput distribution for an Azure Cosmos DB SQL database</td>
</tr>
<tr>
    <td><a href="#sql_database_redistribute_throughput"><CopyableCode code="sql_database_redistribute_throughput" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td></td>
    <td>Redistribute throughput for an Azure Cosmos DB SQL database</td>
</tr>
<tr>
    <td><a href="#sql_container_retrieve_throughput_distribution"><CopyableCode code="sql_container_retrieve_throughput_distribution" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-containerName"><code>containerName</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td></td>
    <td>Retrieve throughput distribution for an Azure Cosmos DB SQL container</td>
</tr>
<tr>
    <td><a href="#sql_container_redistribute_throughput"><CopyableCode code="sql_container_redistribute_throughput" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-containerName"><code>containerName</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td></td>
    <td>Redistribute throughput for an Azure Cosmos DB SQL container</td>
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
<tr id="parameter-containerName">
    <td><CopyableCode code="containerName" /></td>
    <td><code>string</code></td>
    <td>Cosmos DB container name.</td>
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
        { label: 'migrate_sql_database_to_autoscale', value: 'migrate_sql_database_to_autoscale' },
        { label: 'migrate_sql_database_to_manual_throughput', value: 'migrate_sql_database_to_manual_throughput' },
        { label: 'sql_database_partition_merge', value: 'sql_database_partition_merge' },
        { label: 'migrate_sql_container_to_autoscale', value: 'migrate_sql_container_to_autoscale' },
        { label: 'migrate_sql_container_to_manual_throughput', value: 'migrate_sql_container_to_manual_throughput' },
        { label: 'sql_database_retrieve_throughput_distribution', value: 'sql_database_retrieve_throughput_distribution' },
        { label: 'sql_database_redistribute_throughput', value: 'sql_database_redistribute_throughput' },
        { label: 'sql_container_retrieve_throughput_distribution', value: 'sql_container_retrieve_throughput_distribution' },
        { label: 'sql_container_redistribute_throughput', value: 'sql_container_redistribute_throughput' }
    ]}
>
<TabItem value="retrieve_continuous_backup_information">

Retrieves continuous backup information for a container resource.

```sql
EXEC azure.cosmos_db.sql_resources.retrieve_continuous_backup_information 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@databaseName='{{ databaseName }}' --required, 
@containerName='{{ containerName }}' --required 
@@json=
'{
"location": "{{ location }}"
}'
;
```
</TabItem>
<TabItem value="migrate_sql_database_to_autoscale">

Migrate an Azure Cosmos DB SQL database from manual throughput to autoscale

```sql
EXEC azure.cosmos_db.sql_resources.migrate_sql_database_to_autoscale 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@databaseName='{{ databaseName }}' --required
;
```
</TabItem>
<TabItem value="migrate_sql_database_to_manual_throughput">

Migrate an Azure Cosmos DB SQL database from autoscale to manual throughput

```sql
EXEC azure.cosmos_db.sql_resources.migrate_sql_database_to_manual_throughput 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@databaseName='{{ databaseName }}' --required
;
```
</TabItem>
<TabItem value="sql_database_partition_merge">

Merges the partitions of a SQL database

```sql
EXEC azure.cosmos_db.sql_resources.sql_database_partition_merge 
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
<TabItem value="migrate_sql_container_to_autoscale">

Migrate an Azure Cosmos DB SQL container from manual throughput to autoscale

```sql
EXEC azure.cosmos_db.sql_resources.migrate_sql_container_to_autoscale 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@databaseName='{{ databaseName }}' --required, 
@containerName='{{ containerName }}' --required
;
```
</TabItem>
<TabItem value="migrate_sql_container_to_manual_throughput">

Migrate an Azure Cosmos DB SQL container from autoscale to manual throughput

```sql
EXEC azure.cosmos_db.sql_resources.migrate_sql_container_to_manual_throughput 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@databaseName='{{ databaseName }}' --required, 
@containerName='{{ containerName }}' --required
;
```
</TabItem>
<TabItem value="sql_database_retrieve_throughput_distribution">

Retrieve throughput distribution for an Azure Cosmos DB SQL database

```sql
EXEC azure.cosmos_db.sql_resources.sql_database_retrieve_throughput_distribution 
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
<TabItem value="sql_database_redistribute_throughput">

Redistribute throughput for an Azure Cosmos DB SQL database

```sql
EXEC azure.cosmos_db.sql_resources.sql_database_redistribute_throughput 
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
<TabItem value="sql_container_retrieve_throughput_distribution">

Retrieve throughput distribution for an Azure Cosmos DB SQL container

```sql
EXEC azure.cosmos_db.sql_resources.sql_container_retrieve_throughput_distribution 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@databaseName='{{ databaseName }}' --required, 
@containerName='{{ containerName }}' --required 
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
<TabItem value="sql_container_redistribute_throughput">

Redistribute throughput for an Azure Cosmos DB SQL container

```sql
EXEC azure.cosmos_db.sql_resources.sql_container_redistribute_throughput 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@databaseName='{{ databaseName }}' --required, 
@containerName='{{ containerName }}' --required 
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
</Tabs>
