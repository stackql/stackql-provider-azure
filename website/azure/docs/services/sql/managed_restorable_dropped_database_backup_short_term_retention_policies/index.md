--- 
title: managed_restorable_dropped_database_backup_short_term_retention_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - managed_restorable_dropped_database_backup_short_term_retention_policies
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

Creates, updates, deletes, gets or lists a <code>managed_restorable_dropped_database_backup_short_term_retention_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>managed_restorable_dropped_database_backup_short_term_retention_policies</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.managed_restorable_dropped_database_backup_short_term_retention_policies" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_restorable_dropped_database', value: 'list_by_restorable_dropped_database' }
    ]}
>
<TabItem value="get">

Successfully retrieved the policies.

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
<TabItem value="list_by_restorable_dropped_database">

Successfully retrieved the policies.

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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-restorableDroppedDatabaseId"><code>restorableDroppedDatabaseId</code></a>, <a href="#parameter-policyName"><code>policyName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets a dropped database's short term retention policy.</td>
</tr>
<tr>
    <td><a href="#list_by_restorable_dropped_database"><CopyableCode code="list_by_restorable_dropped_database" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-restorableDroppedDatabaseId"><code>restorableDroppedDatabaseId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets a dropped database's short term retention policy list.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-restorableDroppedDatabaseId"><code>restorableDroppedDatabaseId</code></a>, <a href="#parameter-policyName"><code>policyName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Sets a database's short term retention policy.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedInstanceName"><code>managedInstanceName</code></a>, <a href="#parameter-restorableDroppedDatabaseId"><code>restorableDroppedDatabaseId</code></a>, <a href="#parameter-policyName"><code>policyName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Sets a database's short term retention policy.</td>
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
<tr id="parameter-managedInstanceName">
    <td><CopyableCode code="managedInstanceName" /></td>
    <td><code>string</code></td>
    <td>The name of the managed instance.</td>
</tr>
<tr id="parameter-policyName">
    <td><CopyableCode code="policyName" /></td>
    <td><code>string</code></td>
    <td>The policy name. Should always be "default".</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.</td>
</tr>
<tr id="parameter-restorableDroppedDatabaseId">
    <td><CopyableCode code="restorableDroppedDatabaseId" /></td>
    <td><code>string</code></td>
    <td></td>
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
        { label: 'get', value: 'get' },
        { label: 'list_by_restorable_dropped_database', value: 'list_by_restorable_dropped_database' }
    ]}
>
<TabItem value="get">

Gets a dropped database's short term retention policy.

```sql
SELECT
properties
FROM azure.sql.managed_restorable_dropped_database_backup_short_term_retention_policies
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND managedInstanceName = '{{ managedInstanceName }}' -- required
AND restorableDroppedDatabaseId = '{{ restorableDroppedDatabaseId }}' -- required
AND policyName = '{{ policyName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_restorable_dropped_database">

Gets a dropped database's short term retention policy list.

```sql
SELECT
properties
FROM azure.sql.managed_restorable_dropped_database_backup_short_term_retention_policies
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND managedInstanceName = '{{ managedInstanceName }}' -- required
AND restorableDroppedDatabaseId = '{{ restorableDroppedDatabaseId }}' -- required
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

Sets a database's short term retention policy.

```sql
INSERT INTO azure.sql.managed_restorable_dropped_database_backup_short_term_retention_policies (
data__properties,
resourceGroupName,
managedInstanceName,
restorableDroppedDatabaseId,
policyName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ managedInstanceName }}',
'{{ restorableDroppedDatabaseId }}',
'{{ policyName }}',
'{{ subscriptionId }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: managed_restorable_dropped_database_backup_short_term_retention_policies
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the managed_restorable_dropped_database_backup_short_term_retention_policies resource.
    - name: managedInstanceName
      value: string
      description: Required parameter for the managed_restorable_dropped_database_backup_short_term_retention_policies resource.
    - name: restorableDroppedDatabaseId
      value: string
      description: Required parameter for the managed_restorable_dropped_database_backup_short_term_retention_policies resource.
    - name: policyName
      value: string
      description: Required parameter for the managed_restorable_dropped_database_backup_short_term_retention_policies resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the managed_restorable_dropped_database_backup_short_term_retention_policies resource.
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

Sets a database's short term retention policy.

```sql
UPDATE azure.sql.managed_restorable_dropped_database_backup_short_term_retention_policies
SET 
data__properties = '{{ properties }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND managedInstanceName = '{{ managedInstanceName }}' --required
AND restorableDroppedDatabaseId = '{{ restorableDroppedDatabaseId }}' --required
AND policyName = '{{ policyName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
RETURNING
properties;
```
</TabItem>
</Tabs>
