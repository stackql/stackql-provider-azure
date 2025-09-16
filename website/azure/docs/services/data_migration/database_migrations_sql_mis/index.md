--- 
title: database_migrations_sql_mis
hide_title: false
hide_table_of_contents: false
keywords:
  - database_migrations_sql_mis
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

Creates, updates, deletes, gets or lists a <code>database_migrations_sql_mis</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>database_migrations_sql_mis</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_migration.database_migrations_sql_mis" /></td></tr>
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
    <td>Database Migration Resource properties for SQL Managed Instance. (x-ms-discriminator-value: SqlMi)</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-targetDbName"><code>targetDbName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-migrationOperationId"><code>migrationOperationId</code></a>, <a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>Retrieve the specified database migration for a given SQL Managed Instance.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-targetDbName"><code>targetDbName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Create a new database migration to a given SQL Managed Instance.</td>
</tr>
<tr>
    <td><a href="#cancel"><CopyableCode code="cancel" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-targetDbName"><code>targetDbName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Stop in-progress database migration to SQL Managed Instance.</td>
</tr>
<tr>
    <td><a href="#cutover"><CopyableCode code="cutover" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-targetDbName"><code>targetDbName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Initiate cutover for in-progress online database migration to SQL Managed Instance.</td>
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
<tr id="parameter-managedInstanceName">
    <td><CopyableCode code="managedInstanceName" /></td>
    <td><code>string</code></td>
    <td></td>
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

Retrieve the specified database migration for a given SQL Managed Instance.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.data_migration.database_migrations_sql_mis
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND managedInstanceName = '{{ managedInstanceName }}' -- required
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

Create a new database migration to a given SQL Managed Instance.

```sql
INSERT INTO azure.data_migration.database_migrations_sql_mis (
data__properties,
resourceGroupName,
managedInstanceName,
targetDbName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ managedInstanceName }}',
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
- name: database_migrations_sql_mis
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the database_migrations_sql_mis resource.
    - name: managedInstanceName
      value: string
      description: Required parameter for the database_migrations_sql_mis resource.
    - name: targetDbName
      value: string
      description: Required parameter for the database_migrations_sql_mis resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the database_migrations_sql_mis resource.
    - name: properties
      value: object
      description: |
        Database Migration Resource properties for SQL Managed Instance.
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="cancel"
    values={[
        { label: 'cancel', value: 'cancel' },
        { label: 'cutover', value: 'cutover' }
    ]}
>
<TabItem value="cancel">

Stop in-progress database migration to SQL Managed Instance.

```sql
EXEC azure.data_migration.database_migrations_sql_mis.cancel 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@managedInstanceName='{{ managedInstanceName }}' --required, 
@targetDbName='{{ targetDbName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"migrationOperationId": "{{ migrationOperationId }}"
}'
;
```
</TabItem>
<TabItem value="cutover">

Initiate cutover for in-progress online database migration to SQL Managed Instance.

```sql
EXEC azure.data_migration.database_migrations_sql_mis.cutover 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@managedInstanceName='{{ managedInstanceName }}' --required, 
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
