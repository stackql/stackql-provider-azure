--- 
title: databases
hide_title: false
hide_table_of_contents: false
keywords:
  - databases
  - redis_enterprise
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>databases</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>databases</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.redis_enterprise.databases" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_cluster', value: 'list_by_cluster' }
    ]}
>
<TabItem value="get">

Successfully found the database

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
    <td>Other properties of the database. (title: Redis Enterprise database properties)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_cluster">

The list of databases

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
    <td>Other properties of the database. (title: Redis Enterprise database properties)</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets information about a database in a Redis Enterprise cluster.</td>
</tr>
<tr>
    <td><a href="#list_by_cluster"><CopyableCode code="list_by_cluster" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a></td>
    <td></td>
    <td>Gets all databases in the specified Redis Enterprise cluster.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates a database</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Updates a database</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes a single database</td>
</tr>
<tr>
    <td><a href="#regenerate_key"><CopyableCode code="regenerate_key" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-keyType"><code>keyType</code></a></td>
    <td></td>
    <td>Regenerates the Redis Enterprise database's access keys.</td>
</tr>
<tr>
    <td><a href="#import"><CopyableCode code="import" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-sasUris"><code>sasUris</code></a></td>
    <td></td>
    <td>Imports database files to target database.</td>
</tr>
<tr>
    <td><a href="#export"><CopyableCode code="export" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-sasUri"><code>sasUri</code></a></td>
    <td></td>
    <td>Exports a database file from target database.</td>
</tr>
<tr>
    <td><a href="#force_unlink"><CopyableCode code="force_unlink" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-ids"><code>ids</code></a></td>
    <td></td>
    <td>Forcibly removes the link to the specified database resource.</td>
</tr>
<tr>
    <td><a href="#force_link_to_replication_group"><CopyableCode code="force_link_to_replication_group" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-groupNickname"><code>groupNickname</code></a>, <a href="#parameter-linkedDatabases"><code>linkedDatabases</code></a></td>
    <td></td>
    <td>Forcibly recreates an existing database on the specified cluster, and rejoins it to an existing replication group. **IMPORTANT NOTE:** All data in this database will be discarded, and the database will temporarily be unavailable while rejoining the replication group.</td>
</tr>
<tr>
    <td><a href="#flush"><CopyableCode code="flush" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Flushes all the keys in this database and also from its linked databases.</td>
</tr>
<tr>
    <td><a href="#upgrade_db_redis_version"><CopyableCode code="upgrade_db_redis_version" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Upgrades the database Redis version to the latest available.</td>
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
<tr id="parameter-clusterName">
    <td><CopyableCode code="clusterName" /></td>
    <td><code>string</code></td>
    <td>The name of the Redis Enterprise cluster.</td>
</tr>
<tr id="parameter-databaseName">
    <td><CopyableCode code="databaseName" /></td>
    <td><code>string</code></td>
    <td>The name of the Redis Enterprise database.</td>
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

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_cluster', value: 'list_by_cluster' }
    ]}
>
<TabItem value="get">

Gets information about a database in a Redis Enterprise cluster.

```sql
SELECT
properties
FROM azure_isv.redis_enterprise.databases
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND clusterName = '{{ clusterName }}' -- required
AND databaseName = '{{ databaseName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_cluster">

Gets all databases in the specified Redis Enterprise cluster.

```sql
SELECT
properties
FROM azure_isv.redis_enterprise.databases
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND clusterName = '{{ clusterName }}' -- required
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

Creates a database

```sql
INSERT INTO azure_isv.redis_enterprise.databases (
data__properties,
resourceGroupName,
clusterName,
databaseName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ clusterName }}',
'{{ databaseName }}',
'{{ subscriptionId }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: databases
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the databases resource.
    - name: clusterName
      value: string
      description: Required parameter for the databases resource.
    - name: databaseName
      value: string
      description: Required parameter for the databases resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the databases resource.
    - name: properties
      value: object
      description: |
        Other properties of the database.
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

Updates a database

```sql
UPDATE azure_isv.redis_enterprise.databases
SET 
data__properties = '{{ properties }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND clusterName = '{{ clusterName }}' --required
AND databaseName = '{{ databaseName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
RETURNING
properties;
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

Deletes a single database

```sql
DELETE FROM azure_isv.redis_enterprise.databases
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND clusterName = '{{ clusterName }}' --required
AND databaseName = '{{ databaseName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="regenerate_key"
    values={[
        { label: 'regenerate_key', value: 'regenerate_key' },
        { label: 'import', value: 'import' },
        { label: 'export', value: 'export' },
        { label: 'force_unlink', value: 'force_unlink' },
        { label: 'force_link_to_replication_group', value: 'force_link_to_replication_group' },
        { label: 'flush', value: 'flush' },
        { label: 'upgrade_db_redis_version', value: 'upgrade_db_redis_version' }
    ]}
>
<TabItem value="regenerate_key">

Regenerates the Redis Enterprise database's access keys.

```sql
EXEC azure_isv.redis_enterprise.databases.regenerate_key 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@clusterName='{{ clusterName }}' --required, 
@databaseName='{{ databaseName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"keyType": "{{ keyType }}"
}'
;
```
</TabItem>
<TabItem value="import">

Imports database files to target database.

```sql
EXEC azure_isv.redis_enterprise.databases.import 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@clusterName='{{ clusterName }}' --required, 
@databaseName='{{ databaseName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"sasUris": "{{ sasUris }}"
}'
;
```
</TabItem>
<TabItem value="export">

Exports a database file from target database.

```sql
EXEC azure_isv.redis_enterprise.databases.export 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@clusterName='{{ clusterName }}' --required, 
@databaseName='{{ databaseName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"sasUri": "{{ sasUri }}"
}'
;
```
</TabItem>
<TabItem value="force_unlink">

Forcibly removes the link to the specified database resource.

```sql
EXEC azure_isv.redis_enterprise.databases.force_unlink 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@clusterName='{{ clusterName }}' --required, 
@databaseName='{{ databaseName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"ids": "{{ ids }}"
}'
;
```
</TabItem>
<TabItem value="force_link_to_replication_group">

Forcibly recreates an existing database on the specified cluster, and rejoins it to an existing replication group. **IMPORTANT NOTE:** All data in this database will be discarded, and the database will temporarily be unavailable while rejoining the replication group.

```sql
EXEC azure_isv.redis_enterprise.databases.force_link_to_replication_group 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@clusterName='{{ clusterName }}' --required, 
@databaseName='{{ databaseName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"groupNickname": "{{ groupNickname }}", 
"linkedDatabases": "{{ linkedDatabases }}"
}'
;
```
</TabItem>
<TabItem value="flush">

Flushes all the keys in this database and also from its linked databases.

```sql
EXEC azure_isv.redis_enterprise.databases.flush 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@clusterName='{{ clusterName }}' --required, 
@databaseName='{{ databaseName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"ids": "{{ ids }}"
}'
;
```
</TabItem>
<TabItem value="upgrade_db_redis_version">

Upgrades the database Redis version to the latest available.

```sql
EXEC azure_isv.redis_enterprise.databases.upgrade_db_redis_version 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@clusterName='{{ clusterName }}' --required, 
@databaseName='{{ databaseName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
