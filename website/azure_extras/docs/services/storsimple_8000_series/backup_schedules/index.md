--- 
title: backup_schedules
hide_title: false
hide_table_of_contents: false
keywords:
  - backup_schedules
  - storsimple_8000_series
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>backup_schedules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>backup_schedules</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.storsimple_8000_series.backup_schedules" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_backup_policy', value: 'list_by_backup_policy' }
    ]}
>
<TabItem value="get">

The backup schedule.

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
    <td>The path ID that uniquely identifies the object.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the object.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The Kind of the object. Currently only Series8000 is supported</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the backup schedule.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The hierarchical type of the object.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_backup_policy">

The collection of backup schedules.

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
    <td>The path ID that uniquely identifies the object.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the object.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The Kind of the object. Currently only Series8000 is supported</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the backup schedule.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The hierarchical type of the object.</td>
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
    <td><a href="#parameter-deviceName"><code>deviceName</code></a>, <a href="#parameter-backupPolicyName"><code>backupPolicyName</code></a>, <a href="#parameter-backupScheduleName"><code>backupScheduleName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managerName"><code>managerName</code></a></td>
    <td></td>
    <td>Gets the properties of the specified backup schedule name.</td>
</tr>
<tr>
    <td><a href="#list_by_backup_policy"><CopyableCode code="list_by_backup_policy" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-deviceName"><code>deviceName</code></a>, <a href="#parameter-backupPolicyName"><code>backupPolicyName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managerName"><code>managerName</code></a></td>
    <td></td>
    <td>Gets all the backup schedules in a backup policy.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-deviceName"><code>deviceName</code></a>, <a href="#parameter-backupPolicyName"><code>backupPolicyName</code></a>, <a href="#parameter-backupScheduleName"><code>backupScheduleName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managerName"><code>managerName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Creates or updates the backup schedule.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-deviceName"><code>deviceName</code></a>, <a href="#parameter-backupPolicyName"><code>backupPolicyName</code></a>, <a href="#parameter-backupScheduleName"><code>backupScheduleName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managerName"><code>managerName</code></a></td>
    <td></td>
    <td>Deletes the backup schedule.</td>
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
<tr id="parameter-backupPolicyName">
    <td><CopyableCode code="backupPolicyName" /></td>
    <td><code>string</code></td>
    <td>The backup policy name.</td>
</tr>
<tr id="parameter-backupScheduleName">
    <td><CopyableCode code="backupScheduleName" /></td>
    <td><code>string</code></td>
    <td>The name the backup schedule.</td>
</tr>
<tr id="parameter-deviceName">
    <td><CopyableCode code="deviceName" /></td>
    <td><code>string</code></td>
    <td>The device name</td>
</tr>
<tr id="parameter-managerName">
    <td><CopyableCode code="managerName" /></td>
    <td><code>string</code></td>
    <td>The manager name</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The resource group name</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription id</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_backup_policy', value: 'list_by_backup_policy' }
    ]}
>
<TabItem value="get">

Gets the properties of the specified backup schedule name.

```sql
SELECT
id,
name,
kind,
properties,
type
FROM azure_extras.storsimple_8000_series.backup_schedules
WHERE deviceName = '{{ deviceName }}' -- required
AND backupPolicyName = '{{ backupPolicyName }}' -- required
AND backupScheduleName = '{{ backupScheduleName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND managerName = '{{ managerName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_backup_policy">

Gets all the backup schedules in a backup policy.

```sql
SELECT
id,
name,
kind,
properties,
type
FROM azure_extras.storsimple_8000_series.backup_schedules
WHERE deviceName = '{{ deviceName }}' -- required
AND backupPolicyName = '{{ backupPolicyName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND managerName = '{{ managerName }}' -- required
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

Creates or updates the backup schedule.

```sql
INSERT INTO azure_extras.storsimple_8000_series.backup_schedules (
data__kind,
data__properties,
deviceName,
backupPolicyName,
backupScheduleName,
subscriptionId,
resourceGroupName,
managerName
)
SELECT 
'{{ kind }}',
'{{ properties }}' /* required */,
'{{ deviceName }}',
'{{ backupPolicyName }}',
'{{ backupScheduleName }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ managerName }}'
RETURNING
id,
name,
kind,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: backup_schedules
  props:
    - name: deviceName
      value: string
      description: Required parameter for the backup_schedules resource.
    - name: backupPolicyName
      value: string
      description: Required parameter for the backup_schedules resource.
    - name: backupScheduleName
      value: string
      description: Required parameter for the backup_schedules resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the backup_schedules resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the backup_schedules resource.
    - name: managerName
      value: string
      description: Required parameter for the backup_schedules resource.
    - name: kind
      value: string
      description: |
        The Kind of the object. Currently only Series8000 is supported
      valid_values: ['Series8000']
    - name: properties
      value: object
      description: |
        The properties of the backup schedule.
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

Deletes the backup schedule.

```sql
DELETE FROM azure_extras.storsimple_8000_series.backup_schedules
WHERE deviceName = '{{ deviceName }}' --required
AND backupPolicyName = '{{ backupPolicyName }}' --required
AND backupScheduleName = '{{ backupScheduleName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND managerName = '{{ managerName }}' --required
;
```
</TabItem>
</Tabs>
