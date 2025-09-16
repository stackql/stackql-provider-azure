--- 
title: database_migrations_sql_dbs
hide_title: false
hide_table_of_contents: false
keywords:
  - database_migrations_sql_dbs
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

Creates, updates, deletes, gets or lists a <code>database_migrations_sql_dbs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>database_migrations_sql_dbs</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_migration.database_migrations_sql_dbs" /></td></tr>
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

Successfully retrieved the Database Migration resource.

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
    <td>Database Migration Resource properties for SQL database. (x-ms-discriminator-value: SqlDb)</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sqlDbInstanceName"><code>sqlDbInstanceName</code></a>, <a href="#parameter-targetDbName"><code>targetDbName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-migrationOperationId"><code>migrationOperationId</code></a>, <a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>Retrieve the Database Migration resource.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sqlDbInstanceName"><code>sqlDbInstanceName</code></a>, <a href="#parameter-targetDbName"><code>targetDbName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Create or Update Database Migration resource.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sqlDbInstanceName"><code>sqlDbInstanceName</code></a>, <a href="#parameter-targetDbName"><code>targetDbName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-force"><code>force</code></a></td>
    <td>Delete Database Migration resource.</td>
</tr>
<tr>
    <td><a href="#cancel"><CopyableCode code="cancel" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sqlDbInstanceName"><code>sqlDbInstanceName</code></a>, <a href="#parameter-targetDbName"><code>targetDbName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Stop on going migration for the database.</td>
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
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.</td>
</tr>
<tr id="parameter-sqlDbInstanceName">
    <td><CopyableCode code="sqlDbInstanceName" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription ID that identifies an Azure subscription.</td>
</tr>
<tr id="parameter-targetDbName">
    <td><CopyableCode code="targetDbName" /></td>
    <td><code>string</code></td>
    <td>The name of the target database.</td>
</tr>
<tr id="parameter-$expand">
    <td><CopyableCode code="$expand" /></td>
    <td><code>string</code></td>
    <td>Complete migration details be included in the response.</td>
</tr>
<tr id="parameter-force">
    <td><CopyableCode code="force" /></td>
    <td><code>boolean</code></td>
    <td>Optional force delete boolean. If this is provided as true, migration will be deleted even if active.</td>
</tr>
<tr id="parameter-migrationOperationId">
    <td><CopyableCode code="migrationOperationId" /></td>
    <td><code>string (uuid)</code></td>
    <td>Optional migration operation ID. If this is provided, then details of migration operation for that ID are retrieved. If not provided (default), then details related to most recent or current operation are retrieved.</td>
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

Retrieve the Database Migration resource.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.data_migration.database_migrations_sql_dbs
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND sqlDbInstanceName = '{{ sqlDbInstanceName }}' -- required
AND targetDbName = '{{ targetDbName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND migrationOperationId = '{{ migrationOperationId }}'
AND $expand = '{{ $expand }}'
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

Create or Update Database Migration resource.

```sql
INSERT INTO azure.data_migration.database_migrations_sql_dbs (
data__properties,
resourceGroupName,
sqlDbInstanceName,
targetDbName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ sqlDbInstanceName }}',
'{{ targetDbName }}',
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
- name: database_migrations_sql_dbs
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the database_migrations_sql_dbs resource.
    - name: sqlDbInstanceName
      value: string
      description: Required parameter for the database_migrations_sql_dbs resource.
    - name: targetDbName
      value: string
      description: Required parameter for the database_migrations_sql_dbs resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the database_migrations_sql_dbs resource.
    - name: properties
      value: object
      description: |
        Database Migration Resource properties for SQL database.
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
DELETE FROM azure.data_migration.database_migrations_sql_dbs
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND sqlDbInstanceName = '{{ sqlDbInstanceName }}' --required
AND targetDbName = '{{ targetDbName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND force = '{{ force }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="cancel"
    values={[
        { label: 'cancel', value: 'cancel' }
    ]}
>
<TabItem value="cancel">

Stop on going migration for the database.

```sql
EXEC azure.data_migration.database_migrations_sql_dbs.cancel 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@sqlDbInstanceName='{{ sqlDbInstanceName }}' --required, 
@targetDbName='{{ targetDbName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"migrationOperationId": "{{ migrationOperationId }}"
}'
;
```
</TabItem>
</Tabs>
