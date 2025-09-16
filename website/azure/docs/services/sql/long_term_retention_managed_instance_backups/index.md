--- 
title: long_term_retention_managed_instance_backups
hide_title: false
hide_table_of_contents: false
keywords:
  - long_term_retention_managed_instance_backups
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

Creates, updates, deletes, gets or lists a <code>long_term_retention_managed_instance_backups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>long_term_retention_managed_instance_backups</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.long_term_retention_managed_instance_backups" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_by_resource_group"
    values={[
        { label: 'get_by_resource_group', value: 'get_by_resource_group' },
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group_database', value: 'list_by_resource_group_database' },
        { label: 'list_by_database', value: 'list_by_database' },
        { label: 'list_by_resource_group_location', value: 'list_by_resource_group_location' },
        { label: 'list_by_location', value: 'list_by_location' }
    ]}
>
<TabItem value="get_by_resource_group">

Successfully retrieved the backup.

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
<TabItem value="get">

Successfully retrieved the backup.

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
<TabItem value="list_by_resource_group_database">

Successfully retrieved the list of backups.

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

Successfully retrieved the list of backups.

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
<TabItem value="list_by_resource_group_location">

Successfully retrieved the list of backups.

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
<TabItem value="list_by_location">

Successfully retrieved the list of backups.

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
    <td><a href="#get_by_resource_group"><CopyableCode code="get_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-locationName"><code>locationName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-backupName"><code>backupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets a long term retention backup for a managed database.</td>
</tr>
<tr>
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-locationName"><code>locationName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-backupName"><code>backupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets a long term retention backup for a managed database.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group_database"><CopyableCode code="list_by_resource_group_database" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-locationName"><code>locationName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-onlyLatestPerDatabase"><code>onlyLatestPerDatabase</code></a>, <a href="#parameter-databaseState"><code>databaseState</code></a></td>
    <td>Lists all long term retention backups for a managed database.</td>
</tr>
<tr>
    <td><a href="#list_by_database"><CopyableCode code="list_by_database" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-locationName"><code>locationName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-onlyLatestPerDatabase"><code>onlyLatestPerDatabase</code></a>, <a href="#parameter-databaseState"><code>databaseState</code></a></td>
    <td>Lists all long term retention backups for a managed database.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group_location"><CopyableCode code="list_by_resource_group_location" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-locationName"><code>locationName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-onlyLatestPerDatabase"><code>onlyLatestPerDatabase</code></a>, <a href="#parameter-databaseState"><code>databaseState</code></a></td>
    <td>Lists the long term retention backups for managed databases in a given location.</td>
</tr>
<tr>
    <td><a href="#list_by_location"><CopyableCode code="list_by_location" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-locationName"><code>locationName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-onlyLatestPerDatabase"><code>onlyLatestPerDatabase</code></a>, <a href="#parameter-databaseState"><code>databaseState</code></a></td>
    <td>Lists the long term retention backups for managed databases in a given location.</td>
</tr>
<tr>
    <td><a href="#delete_by_resource_group"><CopyableCode code="delete_by_resource_group" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-locationName"><code>locationName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-backupName"><code>backupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes a long term retention backup.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-locationName"><code>locationName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-databaseName"><code>databaseName</code></a>, <a href="#parameter-backupName"><code>backupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes a long term retention backup.</td>
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
<tr id="parameter-backupName">
    <td><CopyableCode code="backupName" /></td>
    <td><code>string</code></td>
    <td>The backup name.</td>
</tr>
<tr id="parameter-databaseName">
    <td><CopyableCode code="databaseName" /></td>
    <td><code>string</code></td>
    <td>The name of the managed database.</td>
</tr>
<tr id="parameter-locationName">
    <td><CopyableCode code="locationName" /></td>
    <td><code>string</code></td>
    <td>The location of the database.</td>
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
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription ID that identifies an Azure subscription.</td>
</tr>
<tr id="parameter-databaseState">
    <td><CopyableCode code="databaseState" /></td>
    <td><code>string</code></td>
    <td>Whether to query against just live databases, just deleted databases, or all databases.</td>
</tr>
<tr id="parameter-onlyLatestPerDatabase">
    <td><CopyableCode code="onlyLatestPerDatabase" /></td>
    <td><code>boolean</code></td>
    <td>Whether or not to only get the latest backup for each database.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_by_resource_group"
    values={[
        { label: 'get_by_resource_group', value: 'get_by_resource_group' },
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group_database', value: 'list_by_resource_group_database' },
        { label: 'list_by_database', value: 'list_by_database' },
        { label: 'list_by_resource_group_location', value: 'list_by_resource_group_location' },
        { label: 'list_by_location', value: 'list_by_location' }
    ]}
>
<TabItem value="get_by_resource_group">

Gets a long term retention backup for a managed database.

```sql
SELECT
properties
FROM azure.sql.long_term_retention_managed_instance_backups
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND locationName = '{{ locationName }}' -- required
AND managedInstanceName = '{{ managedInstanceName }}' -- required
AND databaseName = '{{ databaseName }}' -- required
AND backupName = '{{ backupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="get">

Gets a long term retention backup for a managed database.

```sql
SELECT
properties
FROM azure.sql.long_term_retention_managed_instance_backups
WHERE locationName = '{{ locationName }}' -- required
AND managedInstanceName = '{{ managedInstanceName }}' -- required
AND databaseName = '{{ databaseName }}' -- required
AND backupName = '{{ backupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_resource_group_database">

Lists all long term retention backups for a managed database.

```sql
SELECT
properties
FROM azure.sql.long_term_retention_managed_instance_backups
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND locationName = '{{ locationName }}' -- required
AND managedInstanceName = '{{ managedInstanceName }}' -- required
AND databaseName = '{{ databaseName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND onlyLatestPerDatabase = '{{ onlyLatestPerDatabase }}'
AND databaseState = '{{ databaseState }}'
;
```
</TabItem>
<TabItem value="list_by_database">

Lists all long term retention backups for a managed database.

```sql
SELECT
properties
FROM azure.sql.long_term_retention_managed_instance_backups
WHERE locationName = '{{ locationName }}' -- required
AND managedInstanceName = '{{ managedInstanceName }}' -- required
AND databaseName = '{{ databaseName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND onlyLatestPerDatabase = '{{ onlyLatestPerDatabase }}'
AND databaseState = '{{ databaseState }}'
;
```
</TabItem>
<TabItem value="list_by_resource_group_location">

Lists the long term retention backups for managed databases in a given location.

```sql
SELECT
properties
FROM azure.sql.long_term_retention_managed_instance_backups
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND locationName = '{{ locationName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND onlyLatestPerDatabase = '{{ onlyLatestPerDatabase }}'
AND databaseState = '{{ databaseState }}'
;
```
</TabItem>
<TabItem value="list_by_location">

Lists the long term retention backups for managed databases in a given location.

```sql
SELECT
properties
FROM azure.sql.long_term_retention_managed_instance_backups
WHERE locationName = '{{ locationName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND onlyLatestPerDatabase = '{{ onlyLatestPerDatabase }}'
AND databaseState = '{{ databaseState }}'
;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_by_resource_group"
    values={[
        { label: 'delete_by_resource_group', value: 'delete_by_resource_group' },
        { label: 'delete', value: 'delete' }
    ]}
>
<TabItem value="delete_by_resource_group">

Deletes a long term retention backup.

```sql
DELETE FROM azure.sql.long_term_retention_managed_instance_backups
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND locationName = '{{ locationName }}' --required
AND managedInstanceName = '{{ managedInstanceName }}' --required
AND databaseName = '{{ databaseName }}' --required
AND backupName = '{{ backupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="delete">

Deletes a long term retention backup.

```sql
DELETE FROM azure.sql.long_term_retention_managed_instance_backups
WHERE locationName = '{{ locationName }}' --required
AND managedInstanceName = '{{ managedInstanceName }}' --required
AND databaseName = '{{ databaseName }}' --required
AND backupName = '{{ backupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
