--- 
title: sql_sites_controllers
hide_title: false
hide_table_of_contents: false
keywords:
  - sql_sites_controllers
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

Creates, updates, deletes, gets or lists a <code>sql_sites_controllers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>sql_sites_controllers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.migrate.sql_sites_controllers" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_master_site', value: 'list_by_master_site' }
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
<TabItem value="list_by_master_site">

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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a>, <a href="#parameter-sqlSiteName"><code>sqlSiteName</code></a></td>
    <td></td>
    <td>Method to get a site.</td>
</tr>
<tr>
    <td><a href="#list_by_master_site"><CopyableCode code="list_by_master_site" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a></td>
    <td></td>
    <td>Method to get all sites.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a>, <a href="#parameter-sqlSiteName"><code>sqlSiteName</code></a></td>
    <td></td>
    <td>Method to create a SQL site.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a>, <a href="#parameter-sqlSiteName"><code>sqlSiteName</code></a></td>
    <td></td>
    <td>Method to update an existing site.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a>, <a href="#parameter-sqlSiteName"><code>sqlSiteName</code></a></td>
    <td></td>
    <td>Deletes the SQL site.</td>
</tr>
<tr>
    <td><a href="#error_summary"><CopyableCode code="error_summary" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a>, <a href="#parameter-sqlSiteName"><code>sqlSiteName</code></a></td>
    <td></td>
    <td>Method to get error summary from SQL site.</td>
</tr>
<tr>
    <td><a href="#export_sql_server_errors"><CopyableCode code="export_sql_server_errors" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a>, <a href="#parameter-sqlSiteName"><code>sqlSiteName</code></a></td>
    <td></td>
    <td>Method to generate report containing SQL servers.</td>
</tr>
<tr>
    <td><a href="#export_sql_servers"><CopyableCode code="export_sql_servers" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a>, <a href="#parameter-sqlSiteName"><code>sqlSiteName</code></a></td>
    <td></td>
    <td>Method to generate report containing SQL servers.</td>
</tr>
<tr>
    <td><a href="#refresh"><CopyableCode code="refresh" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a>, <a href="#parameter-sqlSiteName"><code>sqlSiteName</code></a></td>
    <td></td>
    <td>Method to refresh a site.</td>
</tr>
<tr>
    <td><a href="#summary"><CopyableCode code="summary" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a>, <a href="#parameter-sqlSiteName"><code>sqlSiteName</code></a></td>
    <td></td>
    <td>Method to get site usage/summary.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_master_site', value: 'list_by_master_site' }
    ]}
>
<TabItem value="get">

Method to get a site.

```sql
SELECT
properties
FROM azure.migrate.sql_sites_controllers
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND siteName = '{{ siteName }}' -- required
AND sqlSiteName = '{{ sqlSiteName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_master_site">

Method to get all sites.

```sql
SELECT
properties
FROM azure.migrate.sql_sites_controllers
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND siteName = '{{ siteName }}' -- required
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

Method to create a SQL site.

```sql
INSERT INTO azure.migrate.sql_sites_controllers (
data__properties,
subscriptionId,
resourceGroupName,
siteName,
sqlSiteName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ siteName }}',
'{{ sqlSiteName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: sql_sites_controllers
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the sql_sites_controllers resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the sql_sites_controllers resource.
    - name: siteName
      value: string
      description: Required parameter for the sql_sites_controllers resource.
    - name: sqlSiteName
      value: string
      description: Required parameter for the sql_sites_controllers resource.
    - name: properties
      value: object
      description: |
        The resource-specific properties for this resource.
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

Method to update an existing site.

```sql
UPDATE azure.migrate.sql_sites_controllers
SET 
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND siteName = '{{ siteName }}' --required
AND sqlSiteName = '{{ sqlSiteName }}' --required
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

Deletes the SQL site.

```sql
DELETE FROM azure.migrate.sql_sites_controllers
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND siteName = '{{ siteName }}' --required
AND sqlSiteName = '{{ sqlSiteName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="error_summary"
    values={[
        { label: 'error_summary', value: 'error_summary' },
        { label: 'export_sql_server_errors', value: 'export_sql_server_errors' },
        { label: 'export_sql_servers', value: 'export_sql_servers' },
        { label: 'refresh', value: 'refresh' },
        { label: 'summary', value: 'summary' }
    ]}
>
<TabItem value="error_summary">

Method to get error summary from SQL site.

```sql
EXEC azure.migrate.sql_sites_controllers.error_summary 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@siteName='{{ siteName }}' --required, 
@sqlSiteName='{{ sqlSiteName }}' --required 
@@json=
'{
"applianceName": "{{ applianceName }}"
}'
;
```
</TabItem>
<TabItem value="export_sql_server_errors">

Method to generate report containing SQL servers.

```sql
EXEC azure.migrate.sql_sites_controllers.export_sql_server_errors 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@siteName='{{ siteName }}' --required, 
@sqlSiteName='{{ sqlSiteName }}' --required
;
```
</TabItem>
<TabItem value="export_sql_servers">

Method to generate report containing SQL servers.

```sql
EXEC azure.migrate.sql_sites_controllers.export_sql_servers 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@siteName='{{ siteName }}' --required, 
@sqlSiteName='{{ sqlSiteName }}' --required 
@@json=
'{
"applianceName": "{{ applianceName }}", 
"filter": "{{ filter }}"
}'
;
```
</TabItem>
<TabItem value="refresh">

Method to refresh a site.

```sql
EXEC azure.migrate.sql_sites_controllers.refresh 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@siteName='{{ siteName }}' --required, 
@sqlSiteName='{{ sqlSiteName }}' --required 
@@json=
'{
"applianceName": "{{ applianceName }}"
}'
;
```
</TabItem>
<TabItem value="summary">

Method to get site usage/summary.

```sql
EXEC azure.migrate.sql_sites_controllers.summary 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@siteName='{{ siteName }}' --required, 
@sqlSiteName='{{ sqlSiteName }}' --required
;
```
</TabItem>
</Tabs>
