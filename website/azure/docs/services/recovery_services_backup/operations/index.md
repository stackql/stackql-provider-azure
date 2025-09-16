--- 
title: operations
hide_title: false
hide_table_of_contents: false
keywords:
  - operations
  - recovery_services_backup
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

Creates, updates, deletes, gets or lists an <code>operations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>operations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_backup.operations" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
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
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the Operation.</td>
</tr>
<tr>
    <td><CopyableCode code="display" /></td>
    <td><code>object</code></td>
    <td>Contains the localized display information for this particular operation</td>
</tr>
<tr>
    <td><CopyableCode code="origin" /></td>
    <td><code>string</code></td>
    <td>The intended executor of the operation;governs the display of the operation in the RBAC UX and the audit logs UX</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>ShoeBox properties for the given operation.</td>
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
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Returns the list of available operations.</td>
</tr>
<tr>
    <td><a href="#bms_prepare_data_move"><CopyableCode code="bms_prepare_data_move" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-targetResourceId"><code>targetResourceId</code></a>, <a href="#parameter-targetRegion"><code>targetRegion</code></a>, <a href="#parameter-dataMoveLevel"><code>dataMoveLevel</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Prepares source vault for Data Move operation</td>
</tr>
<tr>
    <td><a href="#bms_trigger_data_move"><CopyableCode code="bms_trigger_data_move" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-sourceResourceId"><code>sourceResourceId</code></a>, <a href="#parameter-sourceRegion"><code>sourceRegion</code></a>, <a href="#parameter-dataMoveLevel"><code>dataMoveLevel</code></a>, <a href="#parameter-correlationId"><code>correlationId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Triggers Data Move Operation on target vault</td>
</tr>
<tr>
    <td><a href="#validate"><CopyableCode code="validate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-id"><code>id</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Validate operation for specified backed up item. This is a synchronous operation.</td>
</tr>
<tr>
    <td><a href="#move_recovery_point"><CopyableCode code="move_recovery_point" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-containerName"><code>containerName</code></a>, <a href="#parameter-protectedItemName"><code>protectedItemName</code></a>, <a href="#parameter-recoveryPointId"><code>recoveryPointId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td></td>
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
<tr id="parameter-containerName">
    <td><CopyableCode code="containerName" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr id="parameter-fabricName">
    <td><CopyableCode code="fabricName" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr id="parameter-protectedItemName">
    <td><CopyableCode code="protectedItemName" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr id="parameter-recoveryPointId">
    <td><CopyableCode code="recoveryPointId" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group where the recovery services vault is present.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription Id.</td>
</tr>
<tr id="parameter-vaultName">
    <td><CopyableCode code="vaultName" /></td>
    <td><code>string</code></td>
    <td>The name of the recovery services vault.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>Client Api Version.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

Returns the list of available operations.

```sql
SELECT
name,
display,
origin,
properties
FROM azure.recovery_services_backup.operations
WHERE api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="bms_prepare_data_move"
    values={[
        { label: 'bms_prepare_data_move', value: 'bms_prepare_data_move' },
        { label: 'bms_trigger_data_move', value: 'bms_trigger_data_move' },
        { label: 'validate', value: 'validate' },
        { label: 'move_recovery_point', value: 'move_recovery_point' }
    ]}
>
<TabItem value="bms_prepare_data_move">

Prepares source vault for Data Move operation

```sql
EXEC azure.recovery_services_backup.operations.bms_prepare_data_move 
@vaultName='{{ vaultName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"targetResourceId": "{{ targetResourceId }}", 
"targetRegion": "{{ targetRegion }}", 
"dataMoveLevel": "{{ dataMoveLevel }}", 
"sourceContainerArmIds": "{{ sourceContainerArmIds }}", 
"ignoreMoved": {{ ignoreMoved }}
}'
;
```
</TabItem>
<TabItem value="bms_trigger_data_move">

Triggers Data Move Operation on target vault

```sql
EXEC azure.recovery_services_backup.operations.bms_trigger_data_move 
@vaultName='{{ vaultName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"sourceResourceId": "{{ sourceResourceId }}", 
"sourceRegion": "{{ sourceRegion }}", 
"dataMoveLevel": "{{ dataMoveLevel }}", 
"correlationId": "{{ correlationId }}", 
"sourceContainerArmIds": "{{ sourceContainerArmIds }}", 
"pauseGC": {{ pauseGC }}
}'
;
```
</TabItem>
<TabItem value="validate">

Validate operation for specified backed up item. This is a synchronous operation.

```sql
EXEC azure.recovery_services_backup.operations.validate 
@vaultName='{{ vaultName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"id": "{{ id }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="move_recovery_point">

Accepted

```sql
EXEC azure.recovery_services_backup.operations.move_recovery_point 
@vaultName='{{ vaultName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@fabricName='{{ fabricName }}' --required, 
@containerName='{{ containerName }}' --required, 
@protectedItemName='{{ protectedItemName }}' --required, 
@recoveryPointId='{{ recoveryPointId }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"objectType": "{{ objectType }}", 
"sourceTierType": "{{ sourceTierType }}", 
"targetTierType": "{{ targetTierType }}"
}'
;
```
</TabItem>
</Tabs>
