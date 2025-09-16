--- 
title: instance_failover_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - instance_failover_groups
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

Creates, updates, deletes, gets or lists an <code>instance_failover_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>instance_failover_groups</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.instance_failover_groups" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_location', value: 'list_by_location' }
    ]}
>
<TabItem value="get">

Successfully retrieved the specified failover group.

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

Successfully retrieved the failover groups.

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
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-locationName"><code>locationName</code></a>, <a href="#parameter-failoverGroupName"><code>failoverGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets a failover group.</td>
</tr>
<tr>
    <td><a href="#list_by_location"><CopyableCode code="list_by_location" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-locationName"><code>locationName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Lists the failover groups in a location.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-locationName"><code>locationName</code></a>, <a href="#parameter-failoverGroupName"><code>failoverGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates or updates a failover group.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-locationName"><code>locationName</code></a>, <a href="#parameter-failoverGroupName"><code>failoverGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes a failover group.</td>
</tr>
<tr>
    <td><a href="#failover"><CopyableCode code="failover" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-locationName"><code>locationName</code></a>, <a href="#parameter-failoverGroupName"><code>failoverGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Fails over from the current primary managed instance to this managed instance.</td>
</tr>
<tr>
    <td><a href="#force_failover_allow_data_loss"><CopyableCode code="force_failover_allow_data_loss" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-locationName"><code>locationName</code></a>, <a href="#parameter-failoverGroupName"><code>failoverGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Fails over from the current primary managed instance to this managed instance. This operation might result in data loss.</td>
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
<tr id="parameter-failoverGroupName">
    <td><CopyableCode code="failoverGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the failover group.</td>
</tr>
<tr id="parameter-locationName">
    <td><CopyableCode code="locationName" /></td>
    <td><code>string</code></td>
    <td>The name of the region where the resource is located.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_location', value: 'list_by_location' }
    ]}
>
<TabItem value="get">

Gets a failover group.

```sql
SELECT
properties
FROM azure.sql.instance_failover_groups
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND locationName = '{{ locationName }}' -- required
AND failoverGroupName = '{{ failoverGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_location">

Lists the failover groups in a location.

```sql
SELECT
properties
FROM azure.sql.instance_failover_groups
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND locationName = '{{ locationName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
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

Creates or updates a failover group.

```sql
INSERT INTO azure.sql.instance_failover_groups (
data__properties,
resourceGroupName,
locationName,
failoverGroupName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ locationName }}',
'{{ failoverGroupName }}',
'{{ subscriptionId }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: instance_failover_groups
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the instance_failover_groups resource.
    - name: locationName
      value: string
      description: Required parameter for the instance_failover_groups resource.
    - name: failoverGroupName
      value: string
      description: Required parameter for the instance_failover_groups resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the instance_failover_groups resource.
    - name: properties
      value: object
      description: |
        Resource properties.
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

Deletes a failover group.

```sql
DELETE FROM azure.sql.instance_failover_groups
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND locationName = '{{ locationName }}' --required
AND failoverGroupName = '{{ failoverGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="failover"
    values={[
        { label: 'failover', value: 'failover' },
        { label: 'force_failover_allow_data_loss', value: 'force_failover_allow_data_loss' }
    ]}
>
<TabItem value="failover">

Fails over from the current primary managed instance to this managed instance.

```sql
EXEC azure.sql.instance_failover_groups.failover 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@locationName='{{ locationName }}' --required, 
@failoverGroupName='{{ failoverGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="force_failover_allow_data_loss">

Fails over from the current primary managed instance to this managed instance. This operation might result in data loss.

```sql
EXEC azure.sql.instance_failover_groups.force_failover_allow_data_loss 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@locationName='{{ locationName }}' --required, 
@failoverGroupName='{{ failoverGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
