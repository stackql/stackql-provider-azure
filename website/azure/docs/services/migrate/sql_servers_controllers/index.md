--- 
title: sql_servers_controllers
hide_title: false
hide_table_of_contents: false
keywords:
  - sql_servers_controllers
  - migrate
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

Creates, updates, deletes, gets or lists a <code>sql_servers_controllers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>sql_servers_controllers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.migrate.sql_servers_controllers" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_sql_site', value: 'list_by_sql_site' }
    ]}
>
<TabItem value="get">

ARM operation completed successfully.

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
    <td>The resource-specific properties for this resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_sql_site">

ARM operation completed successfully.

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
    <td>The resource-specific properties for this resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a>, <a href="#parameter-sqlSiteName"><code>sqlSiteName</code></a>, <a href="#parameter-sqlServerName"><code>sqlServerName</code></a></td>
    <td></td>
    <td>Gets the sql server.</td>
</tr>
<tr>
    <td><a href="#list_by_sql_site"><CopyableCode code="list_by_sql_site" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a>, <a href="#parameter-sqlSiteName"><code>sqlSiteName</code></a></td>
    <td><a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-top"><code>top</code></a>, <a href="#parameter-continuationToken"><code>continuationToken</code></a>, <a href="#parameter-totalRecordCount"><code>totalRecordCount</code></a></td>
    <td>Gets the sql servers.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a>, <a href="#parameter-sqlSiteName"><code>sqlSiteName</code></a>, <a href="#parameter-sqlServerName"><code>sqlServerName</code></a></td>
    <td></td>
    <td>Updates the sql server tags.</td>
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
<tr id="parameter-siteName">
    <td><CopyableCode code="siteName" /></td>
    <td><code>string</code></td>
    <td>Site name</td>
</tr>
<tr id="parameter-sqlServerName">
    <td><CopyableCode code="sqlServerName" /></td>
    <td><code>string</code></td>
    <td>SQL server name.</td>
</tr>
<tr id="parameter-sqlSiteName">
    <td><CopyableCode code="sqlSiteName" /></td>
    <td><code>string</code></td>
    <td>SQL site name.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-continuationToken">
    <td><CopyableCode code="continuationToken" /></td>
    <td><code>string</code></td>
    <td>Optional parameter for continuation token.</td>
</tr>
<tr id="parameter-filter">
    <td><CopyableCode code="filter" /></td>
    <td><code>string</code></td>
    <td>filter query</td>
</tr>
<tr id="parameter-top">
    <td><CopyableCode code="top" /></td>
    <td><code>string</code></td>
    <td>page size  query</td>
</tr>
<tr id="parameter-totalRecordCount">
    <td><CopyableCode code="totalRecordCount" /></td>
    <td><code>integer (int32)</code></td>
    <td>Total count of machines in the given site.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_sql_site', value: 'list_by_sql_site' }
    ]}
>
<TabItem value="get">

Gets the sql server.

```sql
SELECT
properties
FROM azure.migrate.sql_servers_controllers
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND siteName = '{{ siteName }}' -- required
AND sqlSiteName = '{{ sqlSiteName }}' -- required
AND sqlServerName = '{{ sqlServerName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_sql_site">

Gets the sql servers.

```sql
SELECT
properties
FROM azure.migrate.sql_servers_controllers
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND siteName = '{{ siteName }}' -- required
AND sqlSiteName = '{{ sqlSiteName }}' -- required
AND filter = '{{ filter }}'
AND top = '{{ top }}'
AND continuationToken = '{{ continuationToken }}'
AND totalRecordCount = '{{ totalRecordCount }}'
;
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

Updates the sql server tags.

```sql
UPDATE azure.migrate.sql_servers_controllers
SET 
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND siteName = '{{ siteName }}' --required
AND sqlSiteName = '{{ sqlSiteName }}' --required
AND sqlServerName = '{{ sqlServerName }}' --required
RETURNING
properties;
```
</TabItem>
</Tabs>
