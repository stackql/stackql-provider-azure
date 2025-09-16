--- 
title: backup_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - backup_instances
  - data_protection
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

Creates, updates, deletes, gets or lists a <code>backup_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>backup_instances</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_protection.backup_instances" /></td></tr>
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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Proxy Resource Id represents the complete path to the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Proxy Resource name associated with the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>BackupInstanceResource properties</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Proxy Resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Proxy Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...</td>
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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Proxy Resource Id represents the complete path to the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Proxy Resource name associated with the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>BackupInstanceResource properties</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Proxy Resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Proxy Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-backupInstanceName"><code>backupInstanceName</code></a></td>
    <td></td>
    <td>Gets a backup instance with name in a backup vault</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vaultName"><code>vaultName</code></a></td>
    <td></td>
    <td>Gets a backup instances belonging to a backup vault</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-backupInstanceName"><code>backupInstanceName</code></a></td>
    <td><a href="#parameter-x-ms-authorization-auxiliary"><code>x-ms-authorization-auxiliary</code></a></td>
    <td>Create or update a backup instance in a backup vault</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-backupInstanceName"><code>backupInstanceName</code></a></td>
    <td><a href="#parameter-x-ms-authorization-auxiliary"><code>x-ms-authorization-auxiliary</code></a></td>
    <td>Delete a backup instance in a backup vault</td>
</tr>
<tr>
    <td><a href="#adhoc_backup"><CopyableCode code="adhoc_backup" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-backupInstanceName"><code>backupInstanceName</code></a>, <a href="#parameter-backupRuleOptions"><code>backupRuleOptions</code></a></td>
    <td></td>
    <td>Trigger adhoc backup </td>
</tr>
<tr>
    <td><a href="#validate_for_backup"><CopyableCode code="validate_for_backup" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-backupInstance"><code>backupInstance</code></a></td>
    <td></td>
    <td>Validate whether adhoc backup will be successful or not</td>
</tr>
<tr>
    <td><a href="#trigger_cross_region_restore"><CopyableCode code="trigger_cross_region_restore" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-restoreRequestObject"><code>restoreRequestObject</code></a>, <a href="#parameter-crossRegionRestoreDetails"><code>crossRegionRestoreDetails</code></a></td>
    <td></td>
    <td>Triggers Cross Region Restore for BackupInstance.</td>
</tr>
<tr>
    <td><a href="#validate_cross_region_restore"><CopyableCode code="validate_cross_region_restore" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-restoreRequestObject"><code>restoreRequestObject</code></a>, <a href="#parameter-crossRegionRestoreDetails"><code>crossRegionRestoreDetails</code></a></td>
    <td></td>
    <td>Validates whether Cross Region Restore can be triggered for DataSource.</td>
</tr>
<tr>
    <td><a href="#trigger_rehydrate"><CopyableCode code="trigger_rehydrate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-backupInstanceName"><code>backupInstanceName</code></a>, <a href="#parameter-recoveryPointId"><code>recoveryPointId</code></a>, <a href="#parameter-rehydrationRetentionDuration"><code>rehydrationRetentionDuration</code></a></td>
    <td></td>
    <td>rehydrate recovery point for restore for a BackupInstance</td>
</tr>
<tr>
    <td><a href="#trigger_restore"><CopyableCode code="trigger_restore" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-backupInstanceName"><code>backupInstanceName</code></a>, <a href="#parameter-objectType"><code>objectType</code></a>, <a href="#parameter-restoreTargetInfo"><code>restoreTargetInfo</code></a>, <a href="#parameter-sourceDataStoreType"><code>sourceDataStoreType</code></a></td>
    <td><a href="#parameter-x-ms-authorization-auxiliary"><code>x-ms-authorization-auxiliary</code></a></td>
    <td>Triggers restore for a BackupInstance</td>
</tr>
<tr>
    <td><a href="#resume_backups"><CopyableCode code="resume_backups" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-backupInstanceName"><code>backupInstanceName</code></a></td>
    <td></td>
    <td>This operation will resume backups for backup instance</td>
</tr>
<tr>
    <td><a href="#resume_protection"><CopyableCode code="resume_protection" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-backupInstanceName"><code>backupInstanceName</code></a></td>
    <td></td>
    <td>This operation will resume protection for a stopped backup instance</td>
</tr>
<tr>
    <td><a href="#stop_protection"><CopyableCode code="stop_protection" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-backupInstanceName"><code>backupInstanceName</code></a></td>
    <td><a href="#parameter-x-ms-authorization-auxiliary"><code>x-ms-authorization-auxiliary</code></a></td>
    <td>This operation will stop protection of a backup instance and data will be held forever</td>
</tr>
<tr>
    <td><a href="#suspend_backups"><CopyableCode code="suspend_backups" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-backupInstanceName"><code>backupInstanceName</code></a></td>
    <td><a href="#parameter-x-ms-authorization-auxiliary"><code>x-ms-authorization-auxiliary</code></a></td>
    <td>This operation will stop backup for a backup instance and retains the backup data as per the policy (except latest Recovery point, which will be retained forever)</td>
</tr>
<tr>
    <td><a href="#sync_backup_instance"><CopyableCode code="sync_backup_instance" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-backupInstanceName"><code>backupInstanceName</code></a></td>
    <td></td>
    <td>Sync backup instance again in case of failure<br />This action will retry last failed operation and will bring backup instance to valid state</td>
</tr>
<tr>
    <td><a href="#validate_for_restore"><CopyableCode code="validate_for_restore" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-backupInstanceName"><code>backupInstanceName</code></a>, <a href="#parameter-restoreRequestObject"><code>restoreRequestObject</code></a></td>
    <td></td>
    <td>Validates if Restore can be triggered for a DataSource</td>
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
<tr id="parameter-backupInstanceName">
    <td><CopyableCode code="backupInstanceName" /></td>
    <td><code>string</code></td>
    <td>The name of the backup instance.</td>
</tr>
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The name of the Azure region.</td>
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
<tr id="parameter-vaultName">
    <td><CopyableCode code="vaultName" /></td>
    <td><code>string</code></td>
    <td>The name of the backup vault.</td>
</tr>
<tr id="parameter-x-ms-authorization-auxiliary">
    <td><CopyableCode code="x-ms-authorization-auxiliary" /></td>
    <td><code>string</code></td>
    <td></td>
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

Gets a backup instance with name in a backup vault

```sql
SELECT
id,
name,
properties,
systemData,
tags,
type
FROM azure.data_protection.backup_instances
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND vaultName = '{{ vaultName }}' -- required
AND backupInstanceName = '{{ backupInstanceName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets a backup instances belonging to a backup vault

```sql
SELECT
id,
name,
properties,
systemData,
tags,
type
FROM azure.data_protection.backup_instances
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND vaultName = '{{ vaultName }}' -- required
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

Create or update a backup instance in a backup vault

```sql
INSERT INTO azure.data_protection.backup_instances (
data__tags,
data__properties,
subscriptionId,
resourceGroupName,
vaultName,
backupInstanceName,
x-ms-authorization-auxiliary
)
SELECT 
'{{ tags }}',
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ vaultName }}',
'{{ backupInstanceName }}',
'{{ x-ms-authorization-auxiliary }}'
RETURNING
id,
name,
properties,
systemData,
tags,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: backup_instances
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the backup_instances resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the backup_instances resource.
    - name: vaultName
      value: string
      description: Required parameter for the backup_instances resource.
    - name: backupInstanceName
      value: string
      description: Required parameter for the backup_instances resource.
    - name: tags
      value: object
      description: |
        Proxy Resource tags.
    - name: properties
      value: object
      description: |
        BackupInstanceResource properties
    - name: x-ms-authorization-auxiliary
      value: string
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

Delete a backup instance in a backup vault

```sql
DELETE FROM azure.data_protection.backup_instances
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND vaultName = '{{ vaultName }}' --required
AND backupInstanceName = '{{ backupInstanceName }}' --required
AND x-ms-authorization-auxiliary = '{{ x-ms-authorization-auxiliary }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="adhoc_backup"
    values={[
        { label: 'adhoc_backup', value: 'adhoc_backup' },
        { label: 'validate_for_backup', value: 'validate_for_backup' },
        { label: 'trigger_cross_region_restore', value: 'trigger_cross_region_restore' },
        { label: 'validate_cross_region_restore', value: 'validate_cross_region_restore' },
        { label: 'trigger_rehydrate', value: 'trigger_rehydrate' },
        { label: 'trigger_restore', value: 'trigger_restore' },
        { label: 'resume_backups', value: 'resume_backups' },
        { label: 'resume_protection', value: 'resume_protection' },
        { label: 'stop_protection', value: 'stop_protection' },
        { label: 'suspend_backups', value: 'suspend_backups' },
        { label: 'sync_backup_instance', value: 'sync_backup_instance' },
        { label: 'validate_for_restore', value: 'validate_for_restore' }
    ]}
>
<TabItem value="adhoc_backup">

Trigger adhoc backup 

```sql
EXEC azure.data_protection.backup_instances.adhoc_backup 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vaultName='{{ vaultName }}' --required, 
@backupInstanceName='{{ backupInstanceName }}' --required 
@@json=
'{
"backupRuleOptions": "{{ backupRuleOptions }}"
}'
;
```
</TabItem>
<TabItem value="validate_for_backup">

Validate whether adhoc backup will be successful or not

```sql
EXEC azure.data_protection.backup_instances.validate_for_backup 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vaultName='{{ vaultName }}' --required 
@@json=
'{
"backupInstance": "{{ backupInstance }}"
}'
;
```
</TabItem>
<TabItem value="trigger_cross_region_restore">

Triggers Cross Region Restore for BackupInstance.

```sql
EXEC azure.data_protection.backup_instances.trigger_cross_region_restore 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@location='{{ location }}' --required 
@@json=
'{
"restoreRequestObject": "{{ restoreRequestObject }}", 
"crossRegionRestoreDetails": "{{ crossRegionRestoreDetails }}"
}'
;
```
</TabItem>
<TabItem value="validate_cross_region_restore">

Validates whether Cross Region Restore can be triggered for DataSource.

```sql
EXEC azure.data_protection.backup_instances.validate_cross_region_restore 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@location='{{ location }}' --required 
@@json=
'{
"restoreRequestObject": "{{ restoreRequestObject }}", 
"crossRegionRestoreDetails": "{{ crossRegionRestoreDetails }}"
}'
;
```
</TabItem>
<TabItem value="trigger_rehydrate">

rehydrate recovery point for restore for a BackupInstance

```sql
EXEC azure.data_protection.backup_instances.trigger_rehydrate 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@vaultName='{{ vaultName }}' --required, 
@backupInstanceName='{{ backupInstanceName }}' --required 
@@json=
'{
"recoveryPointId": "{{ recoveryPointId }}", 
"rehydrationPriority": "{{ rehydrationPriority }}", 
"rehydrationRetentionDuration": "{{ rehydrationRetentionDuration }}"
}'
;
```
</TabItem>
<TabItem value="trigger_restore">

Triggers restore for a BackupInstance

```sql
EXEC azure.data_protection.backup_instances.trigger_restore 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vaultName='{{ vaultName }}' --required, 
@backupInstanceName='{{ backupInstanceName }}' --required, 
@x-ms-authorization-auxiliary='{{ x-ms-authorization-auxiliary }}' 
@@json=
'{
"objectType": "{{ objectType }}", 
"restoreTargetInfo": "{{ restoreTargetInfo }}", 
"sourceDataStoreType": "{{ sourceDataStoreType }}", 
"sourceResourceId": "{{ sourceResourceId }}", 
"resourceGuardOperationRequests": "{{ resourceGuardOperationRequests }}", 
"identityDetails": "{{ identityDetails }}"
}'
;
```
</TabItem>
<TabItem value="resume_backups">

This operation will resume backups for backup instance

```sql
EXEC azure.data_protection.backup_instances.resume_backups 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vaultName='{{ vaultName }}' --required, 
@backupInstanceName='{{ backupInstanceName }}' --required
;
```
</TabItem>
<TabItem value="resume_protection">

This operation will resume protection for a stopped backup instance

```sql
EXEC azure.data_protection.backup_instances.resume_protection 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vaultName='{{ vaultName }}' --required, 
@backupInstanceName='{{ backupInstanceName }}' --required
;
```
</TabItem>
<TabItem value="stop_protection">

This operation will stop protection of a backup instance and data will be held forever

```sql
EXEC azure.data_protection.backup_instances.stop_protection 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vaultName='{{ vaultName }}' --required, 
@backupInstanceName='{{ backupInstanceName }}' --required, 
@x-ms-authorization-auxiliary='{{ x-ms-authorization-auxiliary }}' 
@@json=
'{
"resourceGuardOperationRequests": "{{ resourceGuardOperationRequests }}"
}'
;
```
</TabItem>
<TabItem value="suspend_backups">

This operation will stop backup for a backup instance and retains the backup data as per the policy (except latest Recovery point, which will be retained forever)

```sql
EXEC azure.data_protection.backup_instances.suspend_backups 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vaultName='{{ vaultName }}' --required, 
@backupInstanceName='{{ backupInstanceName }}' --required, 
@x-ms-authorization-auxiliary='{{ x-ms-authorization-auxiliary }}' 
@@json=
'{
"resourceGuardOperationRequests": "{{ resourceGuardOperationRequests }}"
}'
;
```
</TabItem>
<TabItem value="sync_backup_instance">

Sync backup instance again in case of failure<br />This action will retry last failed operation and will bring backup instance to valid state

```sql
EXEC azure.data_protection.backup_instances.sync_backup_instance 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vaultName='{{ vaultName }}' --required, 
@backupInstanceName='{{ backupInstanceName }}' --required 
@@json=
'{
"syncType": "{{ syncType }}"
}'
;
```
</TabItem>
<TabItem value="validate_for_restore">

Validates if Restore can be triggered for a DataSource

```sql
EXEC azure.data_protection.backup_instances.validate_for_restore 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@vaultName='{{ vaultName }}' --required, 
@backupInstanceName='{{ backupInstanceName }}' --required 
@@json=
'{
"restoreRequestObject": "{{ restoreRequestObject }}"
}'
;
```
</TabItem>
</Tabs>
