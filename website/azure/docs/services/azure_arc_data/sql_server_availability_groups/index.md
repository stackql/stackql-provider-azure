--- 
title: sql_server_availability_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - sql_server_availability_groups
  - azure_arc_data
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

Creates, updates, deletes, gets or lists a <code>sql_server_availability_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>sql_server_availability_groups</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.azure_arc_data.sql_server_availability_groups" /></td></tr>
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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of Arc Sql Server availability group</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of Arc Sql Server availability group</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sqlServerInstanceName"><code>sqlServerInstanceName</code></a>, <a href="#parameter-availabilityGroupName"><code>availabilityGroupName</code></a></td>
    <td></td>
    <td>Retrieves an Arc Sql Server availability group.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sqlServerInstanceName"><code>sqlServerInstanceName</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sqlServerInstanceName"><code>sqlServerInstanceName</code></a>, <a href="#parameter-availabilityGroupName"><code>availabilityGroupName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Creates or replaces an Arc Sql Server Availability Group.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sqlServerInstanceName"><code>sqlServerInstanceName</code></a>, <a href="#parameter-availabilityGroupName"><code>availabilityGroupName</code></a></td>
    <td></td>
    <td>Updates an existing Availability Group.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sqlServerInstanceName"><code>sqlServerInstanceName</code></a>, <a href="#parameter-availabilityGroupName"><code>availabilityGroupName</code></a></td>
    <td></td>
    <td>Deletes an Arc Sql Server availability group resource.</td>
</tr>
<tr>
    <td><a href="#detail_view"><CopyableCode code="detail_view" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sqlServerInstanceName"><code>sqlServerInstanceName</code></a>, <a href="#parameter-availabilityGroupName"><code>availabilityGroupName</code></a></td>
    <td></td>
    <td>Retrieves detailed properties of the Availability Group.</td>
</tr>
<tr>
    <td><a href="#failover"><CopyableCode code="failover" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sqlServerInstanceName"><code>sqlServerInstanceName</code></a>, <a href="#parameter-availabilityGroupName"><code>availabilityGroupName</code></a></td>
    <td></td>
    <td>Request manual failover of the availability group to this server.</td>
</tr>
<tr>
    <td><a href="#force_failover_allow_data_loss"><CopyableCode code="force_failover_allow_data_loss" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-sqlServerInstanceName"><code>sqlServerInstanceName</code></a>, <a href="#parameter-availabilityGroupName"><code>availabilityGroupName</code></a></td>
    <td></td>
    <td>Request forced failover of the availability group to this server.</td>
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
<tr id="parameter-availabilityGroupName">
    <td><CopyableCode code="availabilityGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of SQL Availability Group</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the Azure resource group</td>
</tr>
<tr id="parameter-sqlServerInstanceName">
    <td><CopyableCode code="sqlServerInstanceName" /></td>
    <td><code>string</code></td>
    <td>Name of SQL Server Instance</td>
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

Retrieves an Arc Sql Server availability group.

```sql
SELECT
location,
properties,
tags
FROM azure.azure_arc_data.sql_server_availability_groups
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND sqlServerInstanceName = '{{ sqlServerInstanceName }}' -- required
AND availabilityGroupName = '{{ availabilityGroupName }}' -- required
;
```
</TabItem>
<TabItem value="list">

OK

```sql
SELECT
location,
properties,
tags
FROM azure.azure_arc_data.sql_server_availability_groups
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND sqlServerInstanceName = '{{ sqlServerInstanceName }}' -- required
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

Creates or replaces an Arc Sql Server Availability Group.

```sql
INSERT INTO azure.azure_arc_data.sql_server_availability_groups (
data__tags,
data__location,
data__properties,
subscriptionId,
resourceGroupName,
sqlServerInstanceName,
availabilityGroupName
)
SELECT 
'{{ tags }}',
'{{ location }}',
'{{ properties }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ sqlServerInstanceName }}',
'{{ availabilityGroupName }}'
RETURNING
location,
properties,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: sql_server_availability_groups
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the sql_server_availability_groups resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the sql_server_availability_groups resource.
    - name: sqlServerInstanceName
      value: string
      description: Required parameter for the sql_server_availability_groups resource.
    - name: availabilityGroupName
      value: string
      description: Required parameter for the sql_server_availability_groups resource.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        The geo-location where the resource lives
    - name: properties
      value: object
      description: |
        Properties of Arc Sql Server availability group
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

Updates an existing Availability Group.

```sql
UPDATE azure.azure_arc_data.sql_server_availability_groups
SET 
data__tags = '{{ tags }}',
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND sqlServerInstanceName = '{{ sqlServerInstanceName }}' --required
AND availabilityGroupName = '{{ availabilityGroupName }}' --required
RETURNING
location,
properties,
tags;
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

Deletes an Arc Sql Server availability group resource.

```sql
DELETE FROM azure.azure_arc_data.sql_server_availability_groups
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND sqlServerInstanceName = '{{ sqlServerInstanceName }}' --required
AND availabilityGroupName = '{{ availabilityGroupName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="detail_view"
    values={[
        { label: 'detail_view', value: 'detail_view' },
        { label: 'failover', value: 'failover' },
        { label: 'force_failover_allow_data_loss', value: 'force_failover_allow_data_loss' }
    ]}
>
<TabItem value="detail_view">

Retrieves detailed properties of the Availability Group.

```sql
EXEC azure.azure_arc_data.sql_server_availability_groups.detail_view 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@sqlServerInstanceName='{{ sqlServerInstanceName }}' --required, 
@availabilityGroupName='{{ availabilityGroupName }}' --required
;
```
</TabItem>
<TabItem value="failover">

Request manual failover of the availability group to this server.

```sql
EXEC azure.azure_arc_data.sql_server_availability_groups.failover 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@sqlServerInstanceName='{{ sqlServerInstanceName }}' --required, 
@availabilityGroupName='{{ availabilityGroupName }}' --required
;
```
</TabItem>
<TabItem value="force_failover_allow_data_loss">

Request forced failover of the availability group to this server.

```sql
EXEC azure.azure_arc_data.sql_server_availability_groups.force_failover_allow_data_loss 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@sqlServerInstanceName='{{ sqlServerInstanceName }}' --required, 
@availabilityGroupName='{{ availabilityGroupName }}' --required
;
```
</TabItem>
</Tabs>
