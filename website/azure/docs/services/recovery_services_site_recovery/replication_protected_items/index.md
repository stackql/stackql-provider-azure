--- 
title: replication_protected_items
hide_title: false
hide_table_of_contents: false
keywords:
  - replication_protected_items
  - recovery_services_site_recovery
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

Creates, updates, deletes, gets or lists a <code>replication_protected_items</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>replication_protected_items</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_site_recovery.replication_protected_items" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_replication_protection_containers', value: 'list_by_replication_protection_containers' },
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
    <td>Resource Id</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource Name</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource Location</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The custom data.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource Type</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_replication_protection_containers">

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
    <td>Resource Name</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource Location</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The custom data.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource Type</td>
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
    <td>Resource Id</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource Name</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource Location</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The custom data.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource Type</td>
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
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-protectionContainerName"><code>protectionContainerName</code></a>, <a href="#parameter-replicatedProtectedItemName"><code>replicatedProtectedItemName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Gets the details of an ASR replication protected item.</td>
</tr>
<tr>
    <td><a href="#list_by_replication_protection_containers"><CopyableCode code="list_by_replication_protection_containers" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-protectionContainerName"><code>protectionContainerName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Gets the list of ASR replication protected items in the protection container.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-skipToken"><code>skipToken</code></a>, <a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Gets the list of ASR replication protected items in the vault.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-protectionContainerName"><code>protectionContainerName</code></a>, <a href="#parameter-replicatedProtectedItemName"><code>replicatedProtectedItemName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The operation to create an ASR replication protected item (Enable replication).</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-protectionContainerName"><code>protectionContainerName</code></a>, <a href="#parameter-replicatedProtectedItemName"><code>replicatedProtectedItemName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The operation to update the recovery settings of an ASR replication protected item.</td>
</tr>
<tr>
    <td><a href="#purge"><CopyableCode code="purge" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-protectionContainerName"><code>protectionContainerName</code></a>, <a href="#parameter-replicatedProtectedItemName"><code>replicatedProtectedItemName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The operation to delete or purge a replication protected item. This operation will force delete the replication protected item. Use the remove operation on replication protected item to perform a clean disable replication for the item.</td>
</tr>
<tr>
    <td><a href="#add_disks"><CopyableCode code="add_disks" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-protectionContainerName"><code>protectionContainerName</code></a>, <a href="#parameter-replicatedProtectedItemName"><code>replicatedProtectedItemName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Operation to add disks(s) to the replication protected item.</td>
</tr>
<tr>
    <td><a href="#apply_recovery_point"><CopyableCode code="apply_recovery_point" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-protectionContainerName"><code>protectionContainerName</code></a>, <a href="#parameter-replicatedProtectedItemName"><code>replicatedProtectedItemName</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The operation to change the recovery point of a failed over replication protected item.</td>
</tr>
<tr>
    <td><a href="#failover_cancel"><CopyableCode code="failover_cancel" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-protectionContainerName"><code>protectionContainerName</code></a>, <a href="#parameter-replicatedProtectedItemName"><code>replicatedProtectedItemName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Operation to cancel the failover of the replication protected item.</td>
</tr>
<tr>
    <td><a href="#failover_commit"><CopyableCode code="failover_commit" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-protectionContainerName"><code>protectionContainerName</code></a>, <a href="#parameter-replicatedProtectedItemName"><code>replicatedProtectedItemName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Operation to commit the failover of the replication protected item.</td>
</tr>
<tr>
    <td><a href="#planned_failover"><CopyableCode code="planned_failover" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-protectionContainerName"><code>protectionContainerName</code></a>, <a href="#parameter-replicatedProtectedItemName"><code>replicatedProtectedItemName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Operation to initiate a planned failover of the replication protected item.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-protectionContainerName"><code>protectionContainerName</code></a>, <a href="#parameter-replicatedProtectedItemName"><code>replicatedProtectedItemName</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The operation to disable replication on a replication protected item. This will also remove the item.</td>
</tr>
<tr>
    <td><a href="#remove_disks"><CopyableCode code="remove_disks" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-protectionContainerName"><code>protectionContainerName</code></a>, <a href="#parameter-replicatedProtectedItemName"><code>replicatedProtectedItemName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Operation to remove disk(s) from the replication protected item.</td>
</tr>
<tr>
    <td><a href="#repair_replication"><CopyableCode code="repair_replication" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-protectionContainerName"><code>protectionContainerName</code></a>, <a href="#parameter-replicatedProtectedItemName"><code>replicatedProtectedItemName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The operation to start resynchronize/repair replication for a replication protected item requiring resynchronization.</td>
</tr>
<tr>
    <td><a href="#reprotect"><CopyableCode code="reprotect" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-protectionContainerName"><code>protectionContainerName</code></a>, <a href="#parameter-replicatedProtectedItemName"><code>replicatedProtectedItemName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Operation to reprotect or reverse replicate a failed over replication protected item.</td>
</tr>
<tr>
    <td><a href="#resolve_health_errors"><CopyableCode code="resolve_health_errors" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-protectionContainerName"><code>protectionContainerName</code></a>, <a href="#parameter-replicatedProtectedItemName"><code>replicatedProtectedItemName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Operation to resolve health issues of the replication protected item.</td>
</tr>
<tr>
    <td><a href="#switch_provider"><CopyableCode code="switch_provider" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-protectionContainerName"><code>protectionContainerName</code></a>, <a href="#parameter-replicatedProtectedItemName"><code>replicatedProtectedItemName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Operation to initiate a switch provider of the replication protected item.</td>
</tr>
<tr>
    <td><a href="#test_failover"><CopyableCode code="test_failover" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-protectionContainerName"><code>protectionContainerName</code></a>, <a href="#parameter-replicatedProtectedItemName"><code>replicatedProtectedItemName</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Operation to perform a test failover of the replication protected item.</td>
</tr>
<tr>
    <td><a href="#test_failover_cleanup"><CopyableCode code="test_failover_cleanup" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-protectionContainerName"><code>protectionContainerName</code></a>, <a href="#parameter-replicatedProtectedItemName"><code>replicatedProtectedItemName</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Operation to clean up the test failover of a replication protected item.</td>
</tr>
<tr>
    <td><a href="#unplanned_failover"><CopyableCode code="unplanned_failover" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-protectionContainerName"><code>protectionContainerName</code></a>, <a href="#parameter-replicatedProtectedItemName"><code>replicatedProtectedItemName</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Operation to initiate a failover of the replication protected item.</td>
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
<tr id="parameter-fabricName">
    <td><CopyableCode code="fabricName" /></td>
    <td><code>string</code></td>
    <td>Unique fabric name.</td>
</tr>
<tr id="parameter-protectionContainerName">
    <td><CopyableCode code="protectionContainerName" /></td>
    <td><code>string</code></td>
    <td>Protection container name.</td>
</tr>
<tr id="parameter-replicatedProtectedItemName">
    <td><CopyableCode code="replicatedProtectedItemName" /></td>
    <td><code>string</code></td>
    <td>Replication protected item name.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group where the recovery services vault is present.</td>
</tr>
<tr id="parameter-resourceName">
    <td><CopyableCode code="resourceName" /></td>
    <td><code>string</code></td>
    <td>The name of the recovery services vault.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription Id.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>OData filter options.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>Client Api Version.</td>
</tr>
<tr id="parameter-skipToken">
    <td><CopyableCode code="skipToken" /></td>
    <td><code>string</code></td>
    <td>The pagination token. Possible values: "FabricId" or "FabricId_CloudId" or null.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_replication_protection_containers', value: 'list_by_replication_protection_containers' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Gets the details of an ASR replication protected item.

```sql
SELECT
id,
name,
location,
properties,
type
FROM azure.recovery_services_site_recovery.replication_protected_items
WHERE resourceName = '{{ resourceName }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND fabricName = '{{ fabricName }}' -- required
AND protectionContainerName = '{{ protectionContainerName }}' -- required
AND replicatedProtectedItemName = '{{ replicatedProtectedItemName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list_by_replication_protection_containers">

Gets the list of ASR replication protected items in the protection container.

```sql
SELECT
id,
name,
location,
properties,
type
FROM azure.recovery_services_site_recovery.replication_protected_items
WHERE resourceName = '{{ resourceName }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND fabricName = '{{ fabricName }}' -- required
AND protectionContainerName = '{{ protectionContainerName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list">

Gets the list of ASR replication protected items in the vault.

```sql
SELECT
id,
name,
location,
properties,
type
FROM azure.recovery_services_site_recovery.replication_protected_items
WHERE resourceName = '{{ resourceName }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND api-version = '{{ api-version }}'
AND skipToken = '{{ skipToken }}'
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

The operation to create an ASR replication protected item (Enable replication).

```sql
INSERT INTO azure.recovery_services_site_recovery.replication_protected_items (
data__properties,
resourceName,
resourceGroupName,
subscriptionId,
fabricName,
protectionContainerName,
replicatedProtectedItemName,
api-version
)
SELECT 
'{{ properties }}',
'{{ resourceName }}',
'{{ resourceGroupName }}',
'{{ subscriptionId }}',
'{{ fabricName }}',
'{{ protectionContainerName }}',
'{{ replicatedProtectedItemName }}',
'{{ api-version }}'
RETURNING
id,
name,
location,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: replication_protected_items
  props:
    - name: resourceName
      value: string
      description: Required parameter for the replication_protected_items resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the replication_protected_items resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the replication_protected_items resource.
    - name: fabricName
      value: string
      description: Required parameter for the replication_protected_items resource.
    - name: protectionContainerName
      value: string
      description: Required parameter for the replication_protected_items resource.
    - name: replicatedProtectedItemName
      value: string
      description: Required parameter for the replication_protected_items resource.
    - name: properties
      value: object
      description: |
        Enable protection input properties.
    - name: api-version
      value: string
      description: Client Api Version.
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

The operation to update the recovery settings of an ASR replication protected item.

```sql
UPDATE azure.recovery_services_site_recovery.replication_protected_items
SET 
data__properties = '{{ properties }}'
WHERE 
resourceName = '{{ resourceName }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND fabricName = '{{ fabricName }}' --required
AND protectionContainerName = '{{ protectionContainerName }}' --required
AND replicatedProtectedItemName = '{{ replicatedProtectedItemName }}' --required
AND api-version = '{{ api-version}}'
RETURNING
id,
name,
location,
properties,
type;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="purge"
    values={[
        { label: 'purge', value: 'purge' },
        { label: 'add_disks', value: 'add_disks' },
        { label: 'apply_recovery_point', value: 'apply_recovery_point' },
        { label: 'failover_cancel', value: 'failover_cancel' },
        { label: 'failover_commit', value: 'failover_commit' },
        { label: 'planned_failover', value: 'planned_failover' },
        { label: 'delete', value: 'delete' },
        { label: 'remove_disks', value: 'remove_disks' },
        { label: 'repair_replication', value: 'repair_replication' },
        { label: 'reprotect', value: 'reprotect' },
        { label: 'resolve_health_errors', value: 'resolve_health_errors' },
        { label: 'switch_provider', value: 'switch_provider' },
        { label: 'test_failover', value: 'test_failover' },
        { label: 'test_failover_cleanup', value: 'test_failover_cleanup' },
        { label: 'unplanned_failover', value: 'unplanned_failover' }
    ]}
>
<TabItem value="purge">

The operation to delete or purge a replication protected item. This operation will force delete the replication protected item. Use the remove operation on replication protected item to perform a clean disable replication for the item.

```sql
EXEC azure.recovery_services_site_recovery.replication_protected_items.purge 
@resourceName='{{ resourceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@fabricName='{{ fabricName }}' --required, 
@protectionContainerName='{{ protectionContainerName }}' --required, 
@replicatedProtectedItemName='{{ replicatedProtectedItemName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="add_disks">

Operation to add disks(s) to the replication protected item.

```sql
EXEC azure.recovery_services_site_recovery.replication_protected_items.add_disks 
@resourceName='{{ resourceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@fabricName='{{ fabricName }}' --required, 
@protectionContainerName='{{ protectionContainerName }}' --required, 
@replicatedProtectedItemName='{{ replicatedProtectedItemName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="apply_recovery_point">

The operation to change the recovery point of a failed over replication protected item.

```sql
EXEC azure.recovery_services_site_recovery.replication_protected_items.apply_recovery_point 
@resourceName='{{ resourceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@fabricName='{{ fabricName }}' --required, 
@protectionContainerName='{{ protectionContainerName }}' --required, 
@replicatedProtectedItemName='{{ replicatedProtectedItemName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="failover_cancel">

Operation to cancel the failover of the replication protected item.

```sql
EXEC azure.recovery_services_site_recovery.replication_protected_items.failover_cancel 
@resourceName='{{ resourceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@fabricName='{{ fabricName }}' --required, 
@protectionContainerName='{{ protectionContainerName }}' --required, 
@replicatedProtectedItemName='{{ replicatedProtectedItemName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="failover_commit">

Operation to commit the failover of the replication protected item.

```sql
EXEC azure.recovery_services_site_recovery.replication_protected_items.failover_commit 
@resourceName='{{ resourceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@fabricName='{{ fabricName }}' --required, 
@protectionContainerName='{{ protectionContainerName }}' --required, 
@replicatedProtectedItemName='{{ replicatedProtectedItemName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="planned_failover">

Operation to initiate a planned failover of the replication protected item.

```sql
EXEC azure.recovery_services_site_recovery.replication_protected_items.planned_failover 
@resourceName='{{ resourceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@fabricName='{{ fabricName }}' --required, 
@protectionContainerName='{{ protectionContainerName }}' --required, 
@replicatedProtectedItemName='{{ replicatedProtectedItemName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="delete">

The operation to disable replication on a replication protected item. This will also remove the item.

```sql
EXEC azure.recovery_services_site_recovery.replication_protected_items.delete 
@resourceName='{{ resourceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@fabricName='{{ fabricName }}' --required, 
@protectionContainerName='{{ protectionContainerName }}' --required, 
@replicatedProtectedItemName='{{ replicatedProtectedItemName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="remove_disks">

Operation to remove disk(s) from the replication protected item.

```sql
EXEC azure.recovery_services_site_recovery.replication_protected_items.remove_disks 
@resourceName='{{ resourceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@fabricName='{{ fabricName }}' --required, 
@protectionContainerName='{{ protectionContainerName }}' --required, 
@replicatedProtectedItemName='{{ replicatedProtectedItemName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="repair_replication">

The operation to start resynchronize/repair replication for a replication protected item requiring resynchronization.

```sql
EXEC azure.recovery_services_site_recovery.replication_protected_items.repair_replication 
@resourceName='{{ resourceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@fabricName='{{ fabricName }}' --required, 
@protectionContainerName='{{ protectionContainerName }}' --required, 
@replicatedProtectedItemName='{{ replicatedProtectedItemName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="reprotect">

Operation to reprotect or reverse replicate a failed over replication protected item.

```sql
EXEC azure.recovery_services_site_recovery.replication_protected_items.reprotect 
@resourceName='{{ resourceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@fabricName='{{ fabricName }}' --required, 
@protectionContainerName='{{ protectionContainerName }}' --required, 
@replicatedProtectedItemName='{{ replicatedProtectedItemName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="resolve_health_errors">

Operation to resolve health issues of the replication protected item.

```sql
EXEC azure.recovery_services_site_recovery.replication_protected_items.resolve_health_errors 
@resourceName='{{ resourceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@fabricName='{{ fabricName }}' --required, 
@protectionContainerName='{{ protectionContainerName }}' --required, 
@replicatedProtectedItemName='{{ replicatedProtectedItemName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="switch_provider">

Operation to initiate a switch provider of the replication protected item.

```sql
EXEC azure.recovery_services_site_recovery.replication_protected_items.switch_provider 
@resourceName='{{ resourceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@fabricName='{{ fabricName }}' --required, 
@protectionContainerName='{{ protectionContainerName }}' --required, 
@replicatedProtectedItemName='{{ replicatedProtectedItemName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="test_failover">

Operation to perform a test failover of the replication protected item.

```sql
EXEC azure.recovery_services_site_recovery.replication_protected_items.test_failover 
@resourceName='{{ resourceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@fabricName='{{ fabricName }}' --required, 
@protectionContainerName='{{ protectionContainerName }}' --required, 
@replicatedProtectedItemName='{{ replicatedProtectedItemName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="test_failover_cleanup">

Operation to clean up the test failover of a replication protected item.

```sql
EXEC azure.recovery_services_site_recovery.replication_protected_items.test_failover_cleanup 
@resourceName='{{ resourceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@fabricName='{{ fabricName }}' --required, 
@protectionContainerName='{{ protectionContainerName }}' --required, 
@replicatedProtectedItemName='{{ replicatedProtectedItemName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="unplanned_failover">

Operation to initiate a failover of the replication protected item.

```sql
EXEC azure.recovery_services_site_recovery.replication_protected_items.unplanned_failover 
@resourceName='{{ resourceName }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@fabricName='{{ fabricName }}' --required, 
@protectionContainerName='{{ protectionContainerName }}' --required, 
@replicatedProtectedItemName='{{ replicatedProtectedItemName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
</Tabs>
