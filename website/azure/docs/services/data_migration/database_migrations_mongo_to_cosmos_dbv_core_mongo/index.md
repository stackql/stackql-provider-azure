--- 
title: database_migrations_mongo_to_cosmos_dbv_core_mongo
hide_title: false
hide_table_of_contents: false
keywords:
  - database_migrations_mongo_to_cosmos_dbv_core_mongo
  - data_migration
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

Creates, updates, deletes, gets or lists a <code>database_migrations_mongo_to_cosmos_dbv_core_mongo</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>database_migrations_mongo_to_cosmos_dbv_core_mongo</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_migration.database_migrations_mongo_to_cosmos_dbv_core_mongo" /></td></tr>
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
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Database Migration Resource properties for CosmosDb for Mongo. (x-ms-discriminator-value: MongoToCosmosDbMongo)</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td></td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-targetResourceName"><code>targetResourceName</code></a>, <a href="#parameter-migrationName"><code>migrationName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Get Database Migration resource.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-targetResourceName"><code>targetResourceName</code></a>, <a href="#parameter-migrationName"><code>migrationName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Create or Update Database Migration resource.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-targetResourceName"><code>targetResourceName</code></a>, <a href="#parameter-migrationName"><code>migrationName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-force"><code>force</code></a></td>
    <td>Delete Database Migration resource.</td>
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
    <td>Name of the migration.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription ID that identifies an Azure subscription.</td>
</tr>
<tr id="parameter-targetResourceName">
    <td><CopyableCode code="targetResourceName" /></td>
    <td><code>string</code></td>
    <td>The name of the target resource/account.</td>
</tr>
<tr id="parameter-force">
    <td><CopyableCode code="force" /></td>
    <td><code>boolean</code></td>
    <td>Optional force delete boolean. If this is provided as true, migration will be deleted even if active.</td>
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

Get Database Migration resource.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.data_migration.database_migrations_mongo_to_cosmos_dbv_core_mongo
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND targetResourceName = '{{ targetResourceName }}' -- required
AND migrationName = '{{ migrationName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
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

Create or Update Database Migration resource.

```sql
INSERT INTO azure.data_migration.database_migrations_mongo_to_cosmos_dbv_core_mongo (
data__properties,
resourceGroupName,
targetResourceName,
migrationName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ targetResourceName }}',
'{{ migrationName }}',
'{{ subscriptionId }}'
RETURNING
id,
name,
properties,
systemData,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: database_migrations_mongo_to_cosmos_dbv_core_mongo
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the database_migrations_mongo_to_cosmos_dbv_core_mongo resource.
    - name: targetResourceName
      value: string
      description: Required parameter for the database_migrations_mongo_to_cosmos_dbv_core_mongo resource.
    - name: migrationName
      value: string
      description: Required parameter for the database_migrations_mongo_to_cosmos_dbv_core_mongo resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the database_migrations_mongo_to_cosmos_dbv_core_mongo resource.
    - name: properties
      value: object
      description: |
        Database Migration Resource properties for CosmosDb for Mongo.
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

Delete Database Migration resource.

```sql
DELETE FROM azure.data_migration.database_migrations_mongo_to_cosmos_dbv_core_mongo
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND targetResourceName = '{{ targetResourceName }}' --required
AND migrationName = '{{ migrationName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND force = '{{ force }}'
;
```
</TabItem>
</Tabs>
