--- 
title: backups_under_backup_vaults
hide_title: false
hide_table_of_contents: false
keywords:
  - backups_under_backup_vaults
  - netapp
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

Creates, updates, deletes, gets or lists a <code>backups_under_backup_vaults</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>backups_under_backup_vaults</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.netapp.backups_under_backup_vaults" /></td></tr>
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
    <td><a href="#restore_files"><CopyableCode code="restore_files" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-backupVaultName"><code>backupVaultName</code></a>, <a href="#parameter-backupName"><code>backupName</code></a>, <a href="#parameter-fileList"><code>fileList</code></a>, <a href="#parameter-destinationVolumeId"><code>destinationVolumeId</code></a></td>
    <td></td>
    <td>Restore the specified files from the specified backup to the active filesystem</td>
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
<tr id="parameter-accountName">
    <td><CopyableCode code="accountName" /></td>
    <td><code>string</code></td>
    <td>The name of the NetApp account</td>
</tr>
<tr id="parameter-backupName">
    <td><CopyableCode code="backupName" /></td>
    <td><code>string</code></td>
    <td>The name of the backup</td>
</tr>
<tr id="parameter-backupVaultName">
    <td><CopyableCode code="backupVaultName" /></td>
    <td><code>string</code></td>
    <td>The name of the Backup Vault</td>
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

## Lifecycle Methods

<Tabs
    defaultValue="restore_files"
    values={[
        { label: 'restore_files', value: 'restore_files' }
    ]}
>
<TabItem value="restore_files">

Restore the specified files from the specified backup to the active filesystem

```sql
EXEC azure_isv.netapp.backups_under_backup_vaults.restore_files 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@backupVaultName='{{ backupVaultName }}' --required, 
@backupName='{{ backupName }}' --required 
@@json=
'{
"fileList": "{{ fileList }}", 
"restoreFilePath": "{{ restoreFilePath }}", 
"destinationVolumeId": "{{ destinationVolumeId }}"
}'
;
```
</TabItem>
</Tabs>
