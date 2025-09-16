--- 
title: backup_vaults
hide_title: false
hide_table_of_contents: false
keywords:
  - backup_vaults
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

Creates, updates, deletes, gets or lists a <code>backup_vaults</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>backup_vaults</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_protection.backup_vaults" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'get_in_resource_group', value: 'get_in_resource_group' },
        { label: 'get_in_subscription', value: 'get_in_subscription' }
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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Input Managed Identity Details (title: DppIdentityDetails)</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>BackupVaultResource properties (title: BackupVault)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_in_resource_group">

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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Input Managed Identity Details (title: DppIdentityDetails)</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>BackupVaultResource properties (title: BackupVault)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_in_subscription">

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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Input Managed Identity Details (title: DppIdentityDetails)</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>BackupVaultResource properties (title: BackupVault)</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vaultName"><code>vaultName</code></a></td>
    <td></td>
    <td>Returns a resource belonging to a resource group.</td>
</tr>
<tr>
    <td><a href="#get_in_resource_group"><CopyableCode code="get_in_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Returns resource collection belonging to a resource group.</td>
</tr>
<tr>
    <td><a href="#get_in_subscription"><CopyableCode code="get_in_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Returns resource collection belonging to a subscription.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-data__location"><code>data__location</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td><a href="#parameter-x-ms-authorization-auxiliary"><code>x-ms-authorization-auxiliary</code></a></td>
    <td>Creates or updates a BackupVault resource belonging to a resource group.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vaultName"><code>vaultName</code></a></td>
    <td><a href="#parameter-x-ms-authorization-auxiliary"><code>x-ms-authorization-auxiliary</code></a></td>
    <td>Updates a BackupVault resource belonging to a resource group. For example, updating tags for a resource.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vaultName"><code>vaultName</code></a></td>
    <td></td>
    <td>Deletes a BackupVault resource from the resource group.</td>
</tr>
<tr>
    <td><a href="#check_name_availability"><CopyableCode code="check_name_availability" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a></td>
    <td></td>
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
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The location in which uniqueness will be verified.</td>
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
        { label: 'get_in_resource_group', value: 'get_in_resource_group' },
        { label: 'get_in_subscription', value: 'get_in_subscription' }
    ]}
>
<TabItem value="get">

Returns a resource belonging to a resource group.

```sql
SELECT
identity,
properties
FROM azure.data_protection.backup_vaults
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND vaultName = '{{ vaultName }}' -- required
;
```
</TabItem>
<TabItem value="get_in_resource_group">

Returns resource collection belonging to a resource group.

```sql
SELECT
identity,
properties
FROM azure.data_protection.backup_vaults
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="get_in_subscription">

Returns resource collection belonging to a subscription.

```sql
SELECT
identity,
properties
FROM azure.data_protection.backup_vaults
WHERE subscriptionId = '{{ subscriptionId }}' -- required
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

Creates or updates a BackupVault resource belonging to a resource group.

```sql
INSERT INTO azure.data_protection.backup_vaults (
data__identity,
data__properties,
subscriptionId,
resourceGroupName,
vaultName,
x-ms-authorization-auxiliary
)
SELECT 
'{{ identity }}',
'{{ properties }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ vaultName }}',
'{{ x-ms-authorization-auxiliary }}'
RETURNING
identity,
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: backup_vaults
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the backup_vaults resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the backup_vaults resource.
    - name: vaultName
      value: string
      description: Required parameter for the backup_vaults resource.
    - name: identity
      value: object
      description: |
        Input Managed Identity Details
    - name: properties
      value: object
      description: |
        BackupVaultResource properties
    - name: x-ms-authorization-auxiliary
      value: string
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

Updates a BackupVault resource belonging to a resource group. For example, updating tags for a resource.

```sql
UPDATE azure.data_protection.backup_vaults
SET 
data__identity = '{{ identity }}',
data__properties = '{{ properties }}',
data__tags = '{{ tags }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND vaultName = '{{ vaultName }}' --required
AND x-ms-authorization-auxiliary = '{{ x-ms-authorization-auxiliary}}'
RETURNING
identity,
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

Deletes a BackupVault resource from the resource group.

```sql
DELETE FROM azure.data_protection.backup_vaults
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND vaultName = '{{ vaultName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="check_name_availability"
    values={[
        { label: 'check_name_availability', value: 'check_name_availability' }
    ]}
>
<TabItem value="check_name_availability">

OK

```sql
EXEC azure.data_protection.backup_vaults.check_name_availability 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@location='{{ location }}' --required 
@@json=
'{
"name": "{{ name }}", 
"type": "{{ type }}"
}'
;
```
</TabItem>
</Tabs>
