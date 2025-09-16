--- 
title: distributed_availability_groups
hide_title: false
hide_table_of_contents: false
keywords:
  - distributed_availability_groups
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

Creates, updates, deletes, gets or lists a <code>distributed_availability_groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>distributed_availability_groups</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.distributed_availability_groups" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Successfully retrieved the distributed availability group.

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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-distributedAvailabilityGroupName"><code>distributedAvailabilityGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets a distributed availability group info.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-distributedAvailabilityGroupName"><code>distributedAvailabilityGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates a distributed availability group between Sql On-Prem and Sql Managed Instance.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-distributedAvailabilityGroupName"><code>distributedAvailabilityGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Updates a distributed availability group replication mode.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-distributedAvailabilityGroupName"><code>distributedAvailabilityGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Drops a distributed availability group between Sql On-Prem and Sql Managed Instance.</td>
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
<tr id="parameter-distributedAvailabilityGroupName">
    <td><CopyableCode code="distributedAvailabilityGroupName" /></td>
    <td><code>string</code></td>
    <td>The distributed availability group name.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Gets a distributed availability group info.

```sql
SELECT
properties
FROM azure.sql.distributed_availability_groups
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND managedInstanceName = '{{ managedInstanceName }}' -- required
AND distributedAvailabilityGroupName = '{{ distributedAvailabilityGroupName }}' -- required
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

Creates a distributed availability group between Sql On-Prem and Sql Managed Instance.

```sql
INSERT INTO azure.sql.distributed_availability_groups (
data__properties,
resourceGroupName,
managedInstanceName,
distributedAvailabilityGroupName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ managedInstanceName }}',
'{{ distributedAvailabilityGroupName }}',
'{{ subscriptionId }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: distributed_availability_groups
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the distributed_availability_groups resource.
    - name: managedInstanceName
      value: string
      description: Required parameter for the distributed_availability_groups resource.
    - name: distributedAvailabilityGroupName
      value: string
      description: Required parameter for the distributed_availability_groups resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the distributed_availability_groups resource.
    - name: properties
      value: object
      description: |
        Resource properties.
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

Updates a distributed availability group replication mode.

```sql
UPDATE azure.sql.distributed_availability_groups
SET 
data__properties = '{{ properties }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND managedInstanceName = '{{ managedInstanceName }}' --required
AND distributedAvailabilityGroupName = '{{ distributedAvailabilityGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
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

Drops a distributed availability group between Sql On-Prem and Sql Managed Instance.

```sql
DELETE FROM azure.sql.distributed_availability_groups
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND managedInstanceName = '{{ managedInstanceName }}' --required
AND distributedAvailabilityGroupName = '{{ distributedAvailabilityGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
