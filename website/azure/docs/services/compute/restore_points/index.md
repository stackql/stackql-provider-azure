--- 
title: restore_points
hide_title: false
hide_table_of_contents: false
keywords:
  - restore_points
  - compute
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

Creates, updates, deletes, gets or lists a <code>restore_points</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>restore_points</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.restore_points" /></td></tr>
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
    <td>Resource Id</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource name</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The restore point properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-restorePointCollectionName"><code>restorePointCollectionName</code></a>, <a href="#parameter-restorePointName"><code>restorePointName</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>The operation to get the restore point.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-restorePointCollectionName"><code>restorePointCollectionName</code></a>, <a href="#parameter-restorePointName"><code>restorePointName</code></a></td>
    <td></td>
    <td>The operation to create the restore point. Updating properties of an existing restore point is not allowed</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-restorePointCollectionName"><code>restorePointCollectionName</code></a>, <a href="#parameter-restorePointName"><code>restorePointName</code></a></td>
    <td></td>
    <td>The operation to delete the restore point.</td>
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
    <td>The name of the resource group.</td>
</tr>
<tr id="parameter-restorePointCollectionName">
    <td><CopyableCode code="restorePointCollectionName" /></td>
    <td><code>string</code></td>
    <td>The name of the Restore Point Collection.</td>
</tr>
<tr id="parameter-restorePointName">
    <td><CopyableCode code="restorePointName" /></td>
    <td><code>string</code></td>
    <td>The name of the restore point.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
<tr id="parameter-$expand">
    <td><CopyableCode code="$expand" /></td>
    <td><code>string</code></td>
    <td>The expand expression to apply on the operation. 'InstanceView' retrieves information about the run-time state of a restore point.</td>
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

The operation to get the restore point.

```sql
SELECT
id,
name,
properties,
type
FROM azure.compute.restore_points
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND restorePointCollectionName = '{{ restorePointCollectionName }}' -- required
AND restorePointName = '{{ restorePointName }}' -- required
AND $expand = '{{ $expand }}'
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

The operation to create the restore point. Updating properties of an existing restore point is not allowed

```sql
INSERT INTO azure.compute.restore_points (
data__properties,
subscriptionId,
resourceGroupName,
restorePointCollectionName,
restorePointName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ restorePointCollectionName }}',
'{{ restorePointName }}'
RETURNING
id,
name,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: restore_points
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the restore_points resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the restore_points resource.
    - name: restorePointCollectionName
      value: string
      description: Required parameter for the restore_points resource.
    - name: restorePointName
      value: string
      description: Required parameter for the restore_points resource.
    - name: properties
      value: object
      description: |
        The restore point properties.
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

The operation to delete the restore point.

```sql
DELETE FROM azure.compute.restore_points
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND restorePointCollectionName = '{{ restorePointCollectionName }}' --required
AND restorePointName = '{{ restorePointName }}' --required
;
```
</TabItem>
</Tabs>
