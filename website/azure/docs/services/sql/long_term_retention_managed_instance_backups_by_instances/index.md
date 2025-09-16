--- 
title: long_term_retention_managed_instance_backups_by_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - long_term_retention_managed_instance_backups_by_instances
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

Creates, updates, deletes, gets or lists a <code>long_term_retention_managed_instance_backups_by_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>long_term_retention_managed_instance_backups_by_instances</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.long_term_retention_managed_instance_backups_by_instances" /></td></tr>
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
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-locationName"><code>locationName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-onlyLatestPerDatabase"><code>onlyLatestPerDatabase</code></a>, <a href="#parameter-databaseState"><code>databaseState</code></a></td>
    <td>Lists the long term retention backups for a given managed instance.</td>
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
<tr id="parameter-locationName">
    <td><CopyableCode code="locationName" /></td>
    <td><code>string</code></td>
    <td>The location of the database</td>
</tr>
<tr id="parameter-managedInstanceName">
    <td><CopyableCode code="managedInstanceName" /></td>
    <td><code>string</code></td>
    <td>The name of the managed instance.</td>
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
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

Lists the long term retention backups for a given managed instance.

```sql
SELECT
properties
FROM azure.sql.long_term_retention_managed_instance_backups_by_instances
WHERE locationName = '{{ locationName }}' -- required
AND managedInstanceName = '{{ managedInstanceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND onlyLatestPerDatabase = '{{ onlyLatestPerDatabase }}'
AND databaseState = '{{ databaseState }}'
;
```
</TabItem>
</Tabs>
