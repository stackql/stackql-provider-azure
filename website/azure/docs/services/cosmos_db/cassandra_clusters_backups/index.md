--- 
title: cassandra_clusters_backups
hide_title: false
hide_table_of_contents: false
keywords:
  - cassandra_clusters_backups
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

Creates, updates, deletes, gets or lists a <code>cassandra_clusters_backups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>cassandra_clusters_backups</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cosmos_db.cassandra_clusters_backups" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Successfully retrieved the properties of the backup.

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
    <td><CopyableCode code="backupExpiryTimestamp" /></td>
    <td><code>string (date-time)</code></td>
    <td>The time at which the backup will expire.</td>
</tr>
<tr>
    <td><CopyableCode code="backupId" /></td>
    <td><code>string</code></td>
    <td>The unique identifier of backup.</td>
</tr>
<tr>
    <td><CopyableCode code="backupStartTimestamp" /></td>
    <td><code>string (date-time)</code></td>
    <td>The time at which the backup process begins.</td>
</tr>
<tr>
    <td><CopyableCode code="backupState" /></td>
    <td><code>string</code></td>
    <td>The current state of the backup.</td>
</tr>
<tr>
    <td><CopyableCode code="backupStopTimestamp" /></td>
    <td><code>string (date-time)</code></td>
    <td>The time at which the backup process ends.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Successfully retrieved the list of restorable backups for this Cassandra cluster.

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
    <td><CopyableCode code="backupExpiryTimestamp" /></td>
    <td><code>string (date-time)</code></td>
    <td>The time at which the backup will expire.</td>
</tr>
<tr>
    <td><CopyableCode code="backupId" /></td>
    <td><code>string</code></td>
    <td>The unique identifier of backup.</td>
</tr>
<tr>
    <td><CopyableCode code="backupStartTimestamp" /></td>
    <td><code>string (date-time)</code></td>
    <td>The time at which the backup process begins.</td>
</tr>
<tr>
    <td><CopyableCode code="backupState" /></td>
    <td><code>string</code></td>
    <td>The current state of the backup.</td>
</tr>
<tr>
    <td><CopyableCode code="backupStopTimestamp" /></td>
    <td><code>string (date-time)</code></td>
    <td>The time at which the backup process ends.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-backupId"><code>backupId</code></a></td>
    <td></td>
    <td>Get the properties of an individual backup of this cluster that is available to restore.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a></td>
    <td></td>
    <td>List the backups of this cluster that are available to restore.</td>
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
<tr id="parameter-backupId">
    <td><CopyableCode code="backupId" /></td>
    <td><code>string</code></td>
    <td>Id of a restorable backup of a Cassandra cluster.</td>
</tr>
<tr id="parameter-clusterName">
    <td><CopyableCode code="clusterName" /></td>
    <td><code>string</code></td>
    <td>Managed Cassandra cluster name.</td>
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
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Get the properties of an individual backup of this cluster that is available to restore.

```sql
SELECT
backupExpiryTimestamp,
backupId,
backupStartTimestamp,
backupState,
backupStopTimestamp
FROM azure.cosmos_db.cassandra_clusters_backups
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND clusterName = '{{ clusterName }}' -- required
AND backupId = '{{ backupId }}' -- required
;
```
</TabItem>
<TabItem value="list">

List the backups of this cluster that are available to restore.

```sql
SELECT
backupExpiryTimestamp,
backupId,
backupStartTimestamp,
backupState,
backupStopTimestamp
FROM azure.cosmos_db.cassandra_clusters_backups
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND clusterName = '{{ clusterName }}' -- required
;
```
</TabItem>
</Tabs>
