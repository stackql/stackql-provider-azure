--- 
title: disk_migration_jobs
hide_title: false
hide_table_of_contents: false
keywords:
  - disk_migration_jobs
  - compute_admin
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>disk_migration_jobs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>disk_migration_jobs</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.compute_admin.disk_migration_jobs" /></td></tr>
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

OK -- The disk migration job has been returned.

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
    <td>Fully qualified resource ID for the resource. Ex - /subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Disk migration properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

OK -- The list of disk migration jobs has been returned.

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
    <td>Fully qualified resource ID for the resource. Ex - /subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Disk migration properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-migrationId"><code>migrationId</code></a></td>
    <td></td>
    <td>Returns the requested disk migration job.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a></td>
    <td><a href="#parameter-status"><code>status</code></a></td>
    <td>Returns a list of disk migration jobs.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-migrationId"><code>migrationId</code></a></td>
    <td><a href="#parameter-targetShare"><code>targetShare</code></a>, <a href="#parameter-targetScaleUnit"><code>targetScaleUnit</code></a>, <a href="#parameter-targetVolumeLabel"><code>targetVolumeLabel</code></a></td>
    <td>Create a disk migration job.</td>
</tr>
<tr>
    <td><a href="#cancel"><CopyableCode code="cancel" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-migrationId"><code>migrationId</code></a></td>
    <td></td>
    <td>Cancel a disk migration job.</td>
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
    <td>The name of Azure region.</td>
</tr>
<tr id="parameter-migrationId">
    <td><CopyableCode code="migrationId" /></td>
    <td><code>string</code></td>
    <td>The migration job guid name.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-status">
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>The parameters of disk migration job status.</td>
</tr>
<tr id="parameter-targetScaleUnit">
    <td><CopyableCode code="targetScaleUnit" /></td>
    <td><code>string</code></td>
    <td>The target scale unit name.</td>
</tr>
<tr id="parameter-targetShare">
    <td><CopyableCode code="targetShare" /></td>
    <td><code>string</code></td>
    <td>The target share name.</td>
</tr>
<tr id="parameter-targetVolumeLabel">
    <td><CopyableCode code="targetVolumeLabel" /></td>
    <td><code>string</code></td>
    <td>The target volume label.</td>
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

Returns the requested disk migration job.

```sql
SELECT
id,
name,
properties,
type
FROM azure_stack.compute_admin.disk_migration_jobs
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND location = '{{ location }}' -- required
AND migrationId = '{{ migrationId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Returns a list of disk migration jobs.

```sql
SELECT
id,
name,
properties,
type
FROM azure_stack.compute_admin.disk_migration_jobs
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND location = '{{ location }}' -- required
AND status = '{{ status }}'
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

Create a disk migration job.

```sql
INSERT INTO azure_stack.compute_admin.disk_migration_jobs (
subscriptionId,
location,
migrationId,
targetShare,
targetScaleUnit,
targetVolumeLabel
)
SELECT 
'{{ subscriptionId }}',
'{{ location }}',
'{{ migrationId }}',
'{{ targetShare }}',
'{{ targetScaleUnit }}',
'{{ targetVolumeLabel }}'
RETURNING
id,
name,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: disk_migration_jobs
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the disk_migration_jobs resource.
    - name: location
      value: string
      description: Required parameter for the disk_migration_jobs resource.
    - name: migrationId
      value: string
      description: Required parameter for the disk_migration_jobs resource.
    - name: targetShare
      value: string
      description: The target share name.
    - name: targetScaleUnit
      value: string
      description: The target scale unit name.
    - name: targetVolumeLabel
      value: string
      description: The target volume label.
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="cancel"
    values={[
        { label: 'cancel', value: 'cancel' }
    ]}
>
<TabItem value="cancel">

Cancel a disk migration job.

```sql
EXEC azure_stack.compute_admin.disk_migration_jobs.cancel 
@subscriptionId='{{ subscriptionId }}' --required, 
@location='{{ location }}' --required, 
@migrationId='{{ migrationId }}' --required
;
```
</TabItem>
</Tabs>
