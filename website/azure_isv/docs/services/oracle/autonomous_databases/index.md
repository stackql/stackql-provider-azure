--- 
title: autonomous_databases
hide_title: false
hide_table_of_contents: false
keywords:
  - autonomous_databases
  - oracle
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

Creates, updates, deletes, gets or lists an <code>autonomous_databases</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>autonomous_databases</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.oracle.autonomous_databases" /></td></tr>
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

Azure operation completed successfully.

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
    <td>The resource-specific properties for this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group">

Azure operation completed successfully.

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
    <td>The resource-specific properties for this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_subscription">

Azure operation completed successfully.

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
    <td>The resource-specific properties for this resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-autonomousdatabasename"><code>autonomousdatabasename</code></a></td>
    <td></td>
    <td>Get a AutonomousDatabase</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td>List AutonomousDatabase resources by resource group</td>
</tr>
<tr>
    <td><a href="#list_by_subscription"><CopyableCode code="list_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>List AutonomousDatabase resources by subscription ID</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-autonomousdatabasename"><code>autonomousdatabasename</code></a></td>
    <td></td>
    <td>Create a AutonomousDatabase</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-autonomousdatabasename"><code>autonomousdatabasename</code></a></td>
    <td></td>
    <td>Update a AutonomousDatabase</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-autonomousdatabasename"><code>autonomousdatabasename</code></a></td>
    <td></td>
    <td>Delete a AutonomousDatabase</td>
</tr>
<tr>
    <td><a href="#failover"><CopyableCode code="failover" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-autonomousdatabasename"><code>autonomousdatabasename</code></a></td>
    <td></td>
    <td>Perform failover action on Autonomous Database</td>
</tr>
<tr>
    <td><a href="#generate_wallet"><CopyableCode code="generate_wallet" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-autonomousdatabasename"><code>autonomousdatabasename</code></a>, <a href="#parameter-password"><code>password</code></a></td>
    <td></td>
    <td>Generate wallet action on Autonomous Database</td>
</tr>
<tr>
    <td><a href="#restore"><CopyableCode code="restore" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-autonomousdatabasename"><code>autonomousdatabasename</code></a>, <a href="#parameter-timestamp"><code>timestamp</code></a></td>
    <td></td>
    <td>Restores an Autonomous Database based on the provided request parameters.</td>
</tr>
<tr>
    <td><a href="#shrink"><CopyableCode code="shrink" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-autonomousdatabasename"><code>autonomousdatabasename</code></a></td>
    <td></td>
    <td>This operation shrinks the current allocated storage down to the current actual used data storage.</td>
</tr>
<tr>
    <td><a href="#switchover"><CopyableCode code="switchover" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-autonomousdatabasename"><code>autonomousdatabasename</code></a></td>
    <td></td>
    <td>Perform switchover action on Autonomous Database</td>
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
<tr id="parameter-autonomousdatabasename">
    <td><CopyableCode code="autonomousdatabasename" /></td>
    <td><code>string</code></td>
    <td>The database name.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
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

Get a AutonomousDatabase

```sql
SELECT
location,
properties,
tags
FROM azure_isv.oracle.autonomous_databases
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND autonomousdatabasename = '{{ autonomousdatabasename }}' -- required
;
```
</TabItem>
<TabItem value="list_by_resource_group">

List AutonomousDatabase resources by resource group

```sql
SELECT
location,
properties,
tags
FROM azure_isv.oracle.autonomous_databases
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_subscription">

List AutonomousDatabase resources by subscription ID

```sql
SELECT
location,
properties,
tags
FROM azure_isv.oracle.autonomous_databases
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

Create a AutonomousDatabase

```sql
INSERT INTO azure_isv.oracle.autonomous_databases (
data__properties,
data__tags,
data__location,
subscriptionId,
resourceGroupName,
autonomousdatabasename
)
SELECT 
'{{ properties }}',
'{{ tags }}',
'{{ location }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ autonomousdatabasename }}'
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
- name: autonomous_databases
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the autonomous_databases resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the autonomous_databases resource.
    - name: autonomousdatabasename
      value: string
      description: Required parameter for the autonomous_databases resource.
    - name: properties
      value: object
      description: |
        The resource-specific properties for this resource.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        The geo-location where the resource lives
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

Update a AutonomousDatabase

```sql
UPDATE azure_isv.oracle.autonomous_databases
SET 
data__tags = '{{ tags }}',
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND autonomousdatabasename = '{{ autonomousdatabasename }}' --required
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

Delete a AutonomousDatabase

```sql
DELETE FROM azure_isv.oracle.autonomous_databases
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND autonomousdatabasename = '{{ autonomousdatabasename }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="failover"
    values={[
        { label: 'failover', value: 'failover' },
        { label: 'generate_wallet', value: 'generate_wallet' },
        { label: 'restore', value: 'restore' },
        { label: 'shrink', value: 'shrink' },
        { label: 'switchover', value: 'switchover' }
    ]}
>
<TabItem value="failover">

Perform failover action on Autonomous Database

```sql
EXEC azure_isv.oracle.autonomous_databases.failover 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@autonomousdatabasename='{{ autonomousdatabasename }}' --required 
@@json=
'{
"peerDbId": "{{ peerDbId }}"
}'
;
```
</TabItem>
<TabItem value="generate_wallet">

Generate wallet action on Autonomous Database

```sql
EXEC azure_isv.oracle.autonomous_databases.generate_wallet 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@autonomousdatabasename='{{ autonomousdatabasename }}' --required 
@@json=
'{
"generateType": "{{ generateType }}", 
"isRegional": {{ isRegional }}, 
"password": "{{ password }}"
}'
;
```
</TabItem>
<TabItem value="restore">

Restores an Autonomous Database based on the provided request parameters.

```sql
EXEC azure_isv.oracle.autonomous_databases.restore 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@autonomousdatabasename='{{ autonomousdatabasename }}' --required 
@@json=
'{
"timestamp": "{{ timestamp }}"
}'
;
```
</TabItem>
<TabItem value="shrink">

This operation shrinks the current allocated storage down to the current actual used data storage.

```sql
EXEC azure_isv.oracle.autonomous_databases.shrink 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@autonomousdatabasename='{{ autonomousdatabasename }}' --required
;
```
</TabItem>
<TabItem value="switchover">

Perform switchover action on Autonomous Database

```sql
EXEC azure_isv.oracle.autonomous_databases.switchover 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@autonomousdatabasename='{{ autonomousdatabasename }}' --required 
@@json=
'{
"peerDbId": "{{ peerDbId }}"
}'
;
```
</TabItem>
</Tabs>
