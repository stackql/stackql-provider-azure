--- 
title: backups
hide_title: false
hide_table_of_contents: false
keywords:
  - backups
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

Creates, updates, deletes, gets or lists a <code>backups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>backups</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.netapp.backups" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_vault', value: 'list_by_vault' }
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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Backup Properties</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_vault">

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
    <td>Backup Properties</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-backupVaultName"><code>backupVaultName</code></a>, <a href="#parameter-backupName"><code>backupName</code></a></td>
    <td></td>
    <td>Get the specified Backup under Backup Vault.</td>
</tr>
<tr>
    <td><a href="#list_by_vault"><CopyableCode code="list_by_vault" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-backupVaultName"><code>backupVaultName</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>List all backups Under a Backup Vault</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-backupVaultName"><code>backupVaultName</code></a>, <a href="#parameter-backupName"><code>backupName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Create a backup under the Backup Vault</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-backupVaultName"><code>backupVaultName</code></a>, <a href="#parameter-backupName"><code>backupName</code></a></td>
    <td></td>
    <td>Patch a Backup under the Backup Vault</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-backupVaultName"><code>backupVaultName</code></a>, <a href="#parameter-backupName"><code>backupName</code></a></td>
    <td></td>
    <td>Delete a Backup under the Backup Vault</td>
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
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>An option to specify the VolumeResourceId. If present, then only returns the backups under the specified volume</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_vault', value: 'list_by_vault' }
    ]}
>
<TabItem value="get">

Get the specified Backup under Backup Vault.

```sql
SELECT
properties
FROM azure_isv.netapp.backups
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND backupVaultName = '{{ backupVaultName }}' -- required
AND backupName = '{{ backupName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_vault">

List all backups Under a Backup Vault

```sql
SELECT
properties
FROM azure_isv.netapp.backups
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND backupVaultName = '{{ backupVaultName }}' -- required
AND $filter = '{{ $filter }}'
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

Create a backup under the Backup Vault

```sql
INSERT INTO azure_isv.netapp.backups (
data__properties,
subscriptionId,
resourceGroupName,
accountName,
backupVaultName,
backupName
)
SELECT 
'{{ properties }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ accountName }}',
'{{ backupVaultName }}',
'{{ backupName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: backups
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the backups resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the backups resource.
    - name: accountName
      value: string
      description: Required parameter for the backups resource.
    - name: backupVaultName
      value: string
      description: Required parameter for the backups resource.
    - name: backupName
      value: string
      description: Required parameter for the backups resource.
    - name: properties
      value: object
      description: |
        Backup Properties
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

Patch a Backup under the Backup Vault

```sql
UPDATE azure_isv.netapp.backups
SET 
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND accountName = '{{ accountName }}' --required
AND backupVaultName = '{{ backupVaultName }}' --required
AND backupName = '{{ backupName }}' --required
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

Delete a Backup under the Backup Vault

```sql
DELETE FROM azure_isv.netapp.backups
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND accountName = '{{ accountName }}' --required
AND backupVaultName = '{{ backupVaultName }}' --required
AND backupName = '{{ backupName }}' --required
;
```
</TabItem>
</Tabs>
