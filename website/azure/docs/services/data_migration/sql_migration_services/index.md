--- 
title: sql_migration_services
hide_title: false
hide_table_of_contents: false
keywords:
  - sql_migration_services
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

Creates, updates, deletes, gets or lists a <code>sql_migration_services</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>sql_migration_services</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_migration.sql_migration_services" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
    ]}
>
<TabItem value="get">

Successfully retrieved the Migration Service.

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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The SQL Migration Service properties.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group">

Successfully retrieved the Migration SErvices in the resource group.

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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The SQL Migration Service properties.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_subscription">

Successfully retrieved the Migration Services in the Subscription.

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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The SQL Migration Service properties.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td></td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sqlMigrationServiceName"><code>sqlMigrationServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Retrieve the Database Migration Service</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Retrieve all SQL migration services in the resource group.</td>
</tr>
<tr>
    <td><a href="#list_by_subscription"><CopyableCode code="list_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Retrieve all SQL migration services in the subscriptions.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sqlMigrationServiceName"><code>sqlMigrationServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Create or Update Database Migration Service.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sqlMigrationServiceName"><code>sqlMigrationServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Update Database Migration Service.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sqlMigrationServiceName"><code>sqlMigrationServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Delete Database Migration Service.</td>
</tr>
<tr>
    <td><a href="#regenerate_auth_keys"><CopyableCode code="regenerate_auth_keys" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sqlMigrationServiceName"><code>sqlMigrationServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Regenerate a new set of Authentication Keys for Self Hosted Integration Runtime.</td>
</tr>
<tr>
    <td><a href="#delete_node"><CopyableCode code="delete_node" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sqlMigrationServiceName"><code>sqlMigrationServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Delete the integration runtime node.</td>
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
<tr id="parameter-sqlMigrationServiceName">
    <td><CopyableCode code="sqlMigrationServiceName" /></td>
    <td><code>string</code></td>
    <td>Name of the SQL Migration Service.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription ID that identifies an Azure subscription.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
    ]}
>
<TabItem value="get">

Retrieve the Database Migration Service

```sql
SELECT
id,
name,
location,
properties,
systemData,
tags,
type
FROM azure.data_migration.sql_migration_services
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND sqlMigrationServiceName = '{{ sqlMigrationServiceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_resource_group">

Retrieve all SQL migration services in the resource group.

```sql
SELECT
id,
name,
location,
properties,
systemData,
tags,
type
FROM azure.data_migration.sql_migration_services
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_subscription">

Retrieve all SQL migration services in the subscriptions.

```sql
SELECT
id,
name,
location,
properties,
systemData,
tags,
type
FROM azure.data_migration.sql_migration_services
WHERE subscriptionId = '{{ subscriptionId }}' -- required
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

Create or Update Database Migration Service.

```sql
INSERT INTO azure.data_migration.sql_migration_services (
data__location,
data__tags,
data__properties,
resourceGroupName,
sqlMigrationServiceName,
subscriptionId
)
SELECT 
'{{ location }}',
'{{ tags }}',
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ sqlMigrationServiceName }}',
'{{ subscriptionId }}'
RETURNING
id,
name,
location,
properties,
systemData,
tags,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: sql_migration_services
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the sql_migration_services resource.
    - name: sqlMigrationServiceName
      value: string
      description: Required parameter for the sql_migration_services resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the sql_migration_services resource.
    - name: location
      value: string
    - name: tags
      value: object
    - name: properties
      value: object
      description: |
        The SQL Migration Service properties.
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

Update Database Migration Service.

```sql
UPDATE azure.data_migration.sql_migration_services
SET 
data__tags = '{{ tags }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND sqlMigrationServiceName = '{{ sqlMigrationServiceName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
RETURNING
id,
name,
location,
properties,
systemData,
tags,
type;
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

Delete Database Migration Service.

```sql
DELETE FROM azure.data_migration.sql_migration_services
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND sqlMigrationServiceName = '{{ sqlMigrationServiceName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="regenerate_auth_keys"
    values={[
        { label: 'regenerate_auth_keys', value: 'regenerate_auth_keys' },
        { label: 'delete_node', value: 'delete_node' }
    ]}
>
<TabItem value="regenerate_auth_keys">

Regenerate a new set of Authentication Keys for Self Hosted Integration Runtime.

```sql
EXEC azure.data_migration.sql_migration_services.regenerate_auth_keys 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@sqlMigrationServiceName='{{ sqlMigrationServiceName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"keyName": "{{ keyName }}", 
"authKey1": "{{ authKey1 }}", 
"authKey2": "{{ authKey2 }}"
}'
;
```
</TabItem>
<TabItem value="delete_node">

Delete the integration runtime node.

```sql
EXEC azure.data_migration.sql_migration_services.delete_node 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@sqlMigrationServiceName='{{ sqlMigrationServiceName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"nodeName": "{{ nodeName }}", 
"integrationRuntimeName": "{{ integrationRuntimeName }}"
}'
;
```
</TabItem>
</Tabs>
