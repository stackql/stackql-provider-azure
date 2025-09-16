--- 
title: server_based_performance_tiers
hide_title: false
hide_table_of_contents: false
keywords:
  - server_based_performance_tiers
  - maria_db
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

Creates, updates, deletes, gets or lists a <code>server_based_performance_tiers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>server_based_performance_tiers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.maria_db.server_based_performance_tiers" /></td></tr>
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
    <td>ID of the performance tier.</td>
</tr>
<tr>
    <td><CopyableCode code="maxBackupRetentionDays" /></td>
    <td><code>integer (int32)</code></td>
    <td>Maximum Backup retention in days for the performance tier edition</td>
</tr>
<tr>
    <td><CopyableCode code="maxLargeStorageMB" /></td>
    <td><code>integer (int32)</code></td>
    <td>Max storage allowed for a server.</td>
</tr>
<tr>
    <td><CopyableCode code="maxStorageMB" /></td>
    <td><code>integer (int32)</code></td>
    <td>Max storage allowed for a server.</td>
</tr>
<tr>
    <td><CopyableCode code="minBackupRetentionDays" /></td>
    <td><code>integer (int32)</code></td>
    <td>Minimum Backup retention in days for the performance tier edition</td>
</tr>
<tr>
    <td><CopyableCode code="minLargeStorageMB" /></td>
    <td><code>integer (int32)</code></td>
    <td>Max storage allowed for a server.</td>
</tr>
<tr>
    <td><CopyableCode code="minStorageMB" /></td>
    <td><code>integer (int32)</code></td>
    <td>Max storage allowed for a server.</td>
</tr>
<tr>
    <td><CopyableCode code="serviceLevelObjectives" /></td>
    <td><code>array</code></td>
    <td>Service level objectives associated with the performance tier</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a></td>
    <td></td>
    <td>List all the performance tiers for a MariaDB server.</td>
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
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-serverName">
    <td><CopyableCode code="serverName" /></td>
    <td><code>string</code></td>
    <td>The name of the server.</td>
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

List all the performance tiers for a MariaDB server.

```sql
SELECT
id,
maxBackupRetentionDays,
maxLargeStorageMB,
maxStorageMB,
minBackupRetentionDays,
minLargeStorageMB,
minStorageMB,
serviceLevelObjectives
FROM azure.maria_db.server_based_performance_tiers
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND serverName = '{{ serverName }}' -- required
;
```
</TabItem>
</Tabs>
