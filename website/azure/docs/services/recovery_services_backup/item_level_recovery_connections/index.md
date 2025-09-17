--- 
title: item_level_recovery_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - item_level_recovery_connections
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

Creates, updates, deletes, gets or lists an <code>item_level_recovery_connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>item_level_recovery_connections</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_backup.item_level_recovery_connections" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#provision"><CopyableCode code="provision" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-containerName"><code>containerName</code></a>, <a href="#parameter-protectedItemName"><code>protectedItemName</code></a>, <a href="#parameter-recoveryPointId"><code>recoveryPointId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Provisions a script which invokes an iSCSI connection to the backup data. Executing this script opens a file<br />explorer displaying all the recoverable files and folders. This is an asynchronous operation. To know the status of<br />provisioning, call GetProtectedItemOperationResult API.</td>
</tr>
<tr>
    <td><a href="#revoke"><CopyableCode code="revoke" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-containerName"><code>containerName</code></a>, <a href="#parameter-protectedItemName"><code>protectedItemName</code></a>, <a href="#parameter-recoveryPointId"><code>recoveryPointId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Revokes an iSCSI connection which can be used to download a script. Executing this script opens a file explorer<br />displaying all recoverable files and folders. This is an asynchronous operation.</td>
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
    <td>Container name associated with the backed up items.</td>
</tr>
<tr id="parameter-fabricName">
    <td><CopyableCode code="fabricName" /></td>
    <td><code>string</code></td>
    <td>Fabric name associated with the backed up items.</td>
</tr>
<tr id="parameter-protectedItemName">
    <td><CopyableCode code="protectedItemName" /></td>
    <td><code>string</code></td>
    <td>Backed up item name whose files/folders are to be restored.</td>
</tr>
<tr id="parameter-recoveryPointId">
    <td><CopyableCode code="recoveryPointId" /></td>
    <td><code>string</code></td>
    <td>Recovery point ID which represents backed up data. iSCSI connection will be revoked for<br /> this backed up data.</td>
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

## Lifecycle Methods

<Tabs
    defaultValue="provision"
    values={[
        { label: 'provision', value: 'provision' },
        { label: 'revoke', value: 'revoke' }
    ]}
>
<TabItem value="provision">

Provisions a script which invokes an iSCSI connection to the backup data. Executing this script opens a file<br />explorer displaying all the recoverable files and folders. This is an asynchronous operation. To know the status of<br />provisioning, call GetProtectedItemOperationResult API.

```sql
EXEC azure.recovery_services_backup.item_level_recovery_connections.provision 
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
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="revoke">

Revokes an iSCSI connection which can be used to download a script. Executing this script opens a file explorer<br />displaying all recoverable files and folders. This is an asynchronous operation.

```sql
EXEC azure.recovery_services_backup.item_level_recovery_connections.revoke 
@vaultName='{{ vaultName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@fabricName='{{ fabricName }}' --required, 
@containerName='{{ containerName }}' --required, 
@protectedItemName='{{ protectedItemName }}' --required, 
@recoveryPointId='{{ recoveryPointId }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
</Tabs>
