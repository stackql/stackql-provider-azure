--- 
title: scaling_plan_personal_schedules
hide_title: false
hide_table_of_contents: false
keywords:
  - scaling_plan_personal_schedules
  - desktop_virtualization
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

Creates, updates, deletes, gets or lists a <code>scaling_plan_personal_schedules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>scaling_plan_personal_schedules</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.desktop_virtualization.scaling_plan_personal_schedules" /></td></tr>
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

Successfully retrieved ScalingPlanPersonalSchedule.

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
    <td>Detailed properties for ScalingPlanPersonalSchedule</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Successfully retrieved ScalingPlanPersonalSchedules.

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
    <td>Detailed properties for ScalingPlanPersonalSchedule</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-scalingPlanName"><code>scalingPlanName</code></a>, <a href="#parameter-scalingPlanScheduleName"><code>scalingPlanScheduleName</code></a></td>
    <td></td>
    <td>Get a ScalingPlanPersonalSchedule.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-scalingPlanName"><code>scalingPlanName</code></a></td>
    <td><a href="#parameter-pageSize"><code>pageSize</code></a>, <a href="#parameter-isDescending"><code>isDescending</code></a>, <a href="#parameter-initialSkip"><code>initialSkip</code></a></td>
    <td>List ScalingPlanPersonalSchedules.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-scalingPlanName"><code>scalingPlanName</code></a>, <a href="#parameter-scalingPlanScheduleName"><code>scalingPlanScheduleName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Create or update a ScalingPlanPersonalSchedule.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-scalingPlanName"><code>scalingPlanName</code></a>, <a href="#parameter-scalingPlanScheduleName"><code>scalingPlanScheduleName</code></a></td>
    <td></td>
    <td>Update a ScalingPlanPersonalSchedule.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-scalingPlanName"><code>scalingPlanName</code></a>, <a href="#parameter-scalingPlanScheduleName"><code>scalingPlanScheduleName</code></a></td>
    <td></td>
    <td>Remove a ScalingPlanPersonalSchedule.</td>
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
<tr id="parameter-scalingPlanName">
    <td><CopyableCode code="scalingPlanName" /></td>
    <td><code>string</code></td>
    <td>The name of the scaling plan.</td>
</tr>
<tr id="parameter-scalingPlanScheduleName">
    <td><CopyableCode code="scalingPlanScheduleName" /></td>
    <td><code>string</code></td>
    <td>The name of the ScalingPlanSchedule</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-initialSkip">
    <td><CopyableCode code="initialSkip" /></td>
    <td><code>integer (int32)</code></td>
    <td>Initial number of items to skip.</td>
</tr>
<tr id="parameter-isDescending">
    <td><CopyableCode code="isDescending" /></td>
    <td><code>boolean</code></td>
    <td>Indicates whether the collection is descending.</td>
</tr>
<tr id="parameter-pageSize">
    <td><CopyableCode code="pageSize" /></td>
    <td><code>integer (int32)</code></td>
    <td>Number of items per page.</td>
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

Get a ScalingPlanPersonalSchedule.

```sql
SELECT
properties
FROM azure.desktop_virtualization.scaling_plan_personal_schedules
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND scalingPlanName = '{{ scalingPlanName }}' -- required
AND scalingPlanScheduleName = '{{ scalingPlanScheduleName }}' -- required
;
```
</TabItem>
<TabItem value="list">

List ScalingPlanPersonalSchedules.

```sql
SELECT
properties
FROM azure.desktop_virtualization.scaling_plan_personal_schedules
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND scalingPlanName = '{{ scalingPlanName }}' -- required
AND pageSize = '{{ pageSize }}'
AND isDescending = '{{ isDescending }}'
AND initialSkip = '{{ initialSkip }}'
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

Create or update a ScalingPlanPersonalSchedule.

```sql
INSERT INTO azure.desktop_virtualization.scaling_plan_personal_schedules (
data__properties,
subscriptionId,
resourceGroupName,
scalingPlanName,
scalingPlanScheduleName
)
SELECT 
'{{ properties }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ scalingPlanName }}',
'{{ scalingPlanScheduleName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: scaling_plan_personal_schedules
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the scaling_plan_personal_schedules resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the scaling_plan_personal_schedules resource.
    - name: scalingPlanName
      value: string
      description: Required parameter for the scaling_plan_personal_schedules resource.
    - name: scalingPlanScheduleName
      value: string
      description: Required parameter for the scaling_plan_personal_schedules resource.
    - name: properties
      value: object
      description: |
        Detailed properties for ScalingPlanPersonalSchedule
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

Update a ScalingPlanPersonalSchedule.

```sql
UPDATE azure.desktop_virtualization.scaling_plan_personal_schedules
SET 
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND scalingPlanName = '{{ scalingPlanName }}' --required
AND scalingPlanScheduleName = '{{ scalingPlanScheduleName }}' --required
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

Remove a ScalingPlanPersonalSchedule.

```sql
DELETE FROM azure.desktop_virtualization.scaling_plan_personal_schedules
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND scalingPlanName = '{{ scalingPlanName }}' --required
AND scalingPlanScheduleName = '{{ scalingPlanScheduleName }}' --required
;
```
</TabItem>
</Tabs>
