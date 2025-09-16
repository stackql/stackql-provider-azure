--- 
title: clusters_follower_databases
hide_title: false
hide_table_of_contents: false
keywords:
  - clusters_follower_databases
  - data_explorer
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

Creates, updates, deletes, gets or lists a <code>clusters_follower_databases</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>clusters_follower_databases</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_explorer.clusters_follower_databases" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

Successfully retrieved the list of followed databases.

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
    <td><CopyableCode code="attachedDatabaseConfigurationName" /></td>
    <td><code>string</code></td>
    <td>Resource name of the attached database configuration in the follower cluster.</td>
</tr>
<tr>
    <td><CopyableCode code="clusterResourceId" /></td>
    <td><code>string</code></td>
    <td>Resource id of the cluster that follows a database owned by this cluster.</td>
</tr>
<tr>
    <td><CopyableCode code="databaseName" /></td>
    <td><code>string</code></td>
    <td>The database name owned by this cluster that was followed. * in case following all databases.</td>
</tr>
<tr>
    <td><CopyableCode code="databaseShareOrigin" /></td>
    <td><code>string</code></td>
    <td>The origin of the following setup.</td>
</tr>
<tr>
    <td><CopyableCode code="tableLevelSharingProperties" /></td>
    <td><code>object</code></td>
    <td>Table level sharing specifications</td>
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
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Returns a list of databases that are owned by this cluster and were followed by another cluster.</td>
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
    <td>The name of the Kusto cluster.</td>
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
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

Returns a list of databases that are owned by this cluster and were followed by another cluster.

```sql
SELECT
attachedDatabaseConfigurationName,
clusterResourceId,
databaseName,
databaseShareOrigin,
tableLevelSharingProperties
FROM azure.data_explorer.clusters_follower_databases
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND clusterName = '{{ clusterName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>
