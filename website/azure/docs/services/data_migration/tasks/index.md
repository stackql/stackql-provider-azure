--- 
title: tasks
hide_title: false
hide_table_of_contents: false
keywords:
  - tasks
  - data_migration
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

Creates, updates, deletes, gets or lists a <code>tasks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>tasks</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_migration.tasks" /></td></tr>
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

A task resource

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
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>HTTP strong entity tag value. This is ignored if submitted.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Custom task properties</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
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

Got tasks

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
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>HTTP strong entity tag value. This is ignored if submitted.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Custom task properties</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
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
    <td></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>The tasks resource is a nested, proxy-only resource representing work performed by a DMS (classic) instance. The GET method retrieves information about a task.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-groupName"><code>groupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-projectName"><code>projectName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-taskType"><code>taskType</code></a></td>
    <td>The services resource is the top-level resource that represents the Azure Database Migration Service (classic). This method returns a list of tasks owned by a service resource. Some tasks may have a status of Unknown, which indicates that an error occurred while querying the status of that task.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td></td>
    <td></td>
    <td>The tasks resource is a nested, proxy-only resource representing work performed by a DMS (classic) instance. The PUT method creates a new task or updates an existing one, although since tasks have no mutable custom properties, there is little reason to update an existing one.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td></td>
    <td></td>
    <td>The tasks resource is a nested, proxy-only resource representing work performed by a DMS (classic) instance. The PATCH method updates an existing task, but since tasks have no mutable custom properties, there is little reason to do so.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td></td>
    <td><a href="#parameter-deleteRunningTasks"><code>deleteRunningTasks</code></a></td>
    <td>The tasks resource is a nested, proxy-only resource representing work performed by a DMS (classic) instance. The DELETE method deletes a task, canceling it first if it's running.</td>
</tr>
<tr>
    <td><a href="#cancel"><CopyableCode code="cancel" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-groupName"><code>groupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-projectName"><code>projectName</code></a>, <a href="#parameter-taskName"><code>taskName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The tasks resource is a nested, proxy-only resource representing work performed by a DMS (classic) instance. This method cancels a task if it's currently queued or running.</td>
</tr>
<tr>
    <td><a href="#command"><CopyableCode code="command" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-groupName"><code>groupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-projectName"><code>projectName</code></a>, <a href="#parameter-taskName"><code>taskName</code></a>, <a href="#parameter-commandType"><code>commandType</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The tasks resource is a nested, proxy-only resource representing work performed by a DMS (classic) instance. This method executes a command on a running task.</td>
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
<tr id="parameter-groupName">
    <td><CopyableCode code="groupName" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group</td>
</tr>
<tr id="parameter-projectName">
    <td><CopyableCode code="projectName" /></td>
    <td><code>string</code></td>
    <td>Name of the project</td>
</tr>
<tr id="parameter-serviceName">
    <td><CopyableCode code="serviceName" /></td>
    <td><code>string</code></td>
    <td>Name of the service</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription ID that identifies an Azure subscription.</td>
</tr>
<tr id="parameter-taskName">
    <td><CopyableCode code="taskName" /></td>
    <td><code>string</code></td>
    <td>Name of the Task</td>
</tr>
<tr id="parameter-$expand">
    <td><CopyableCode code="$expand" /></td>
    <td><code>string</code></td>
    <td>Expand the response</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>Version of the API</td>
</tr>
<tr id="parameter-deleteRunningTasks">
    <td><CopyableCode code="deleteRunningTasks" /></td>
    <td><code>boolean</code></td>
    <td>Delete the resource even if it contains running tasks</td>
</tr>
<tr id="parameter-taskType">
    <td><CopyableCode code="taskType" /></td>
    <td><code>string</code></td>
    <td>Filter tasks by task type</td>
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

The tasks resource is a nested, proxy-only resource representing work performed by a DMS (classic) instance. The GET method retrieves information about a task.

```sql
SELECT
id,
name,
etag,
properties,
systemData,
type
FROM azure.data_migration.tasks
WHERE $expand = '{{ $expand }}'
;
```
</TabItem>
<TabItem value="list">

The services resource is the top-level resource that represents the Azure Database Migration Service (classic). This method returns a list of tasks owned by a service resource. Some tasks may have a status of Unknown, which indicates that an error occurred while querying the status of that task.

```sql
SELECT
id,
name,
etag,
properties,
systemData,
type
FROM azure.data_migration.tasks
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND groupName = '{{ groupName }}' -- required
AND serviceName = '{{ serviceName }}' -- required
AND projectName = '{{ projectName }}' -- required
AND api-version = '{{ api-version }}'
AND taskType = '{{ taskType }}'
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

The tasks resource is a nested, proxy-only resource representing work performed by a DMS (classic) instance. The PUT method creates a new task or updates an existing one, although since tasks have no mutable custom properties, there is little reason to update an existing one.

```sql
INSERT INTO azure.data_migration.tasks (
data__etag,
data__properties
)
SELECT 
'{{ etag }}',
'{{ properties }}'
RETURNING
id,
name,
etag,
properties,
systemData,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: tasks
  props:
    - name: etag
      value: string
      description: |
        HTTP strong entity tag value. This is ignored if submitted.
    - name: properties
      value: object
      description: |
        Custom task properties
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

The tasks resource is a nested, proxy-only resource representing work performed by a DMS (classic) instance. The PATCH method updates an existing task, but since tasks have no mutable custom properties, there is little reason to do so.

```sql
UPDATE azure.data_migration.tasks
SET 
data__etag = '{{ etag }}',
data__properties = '{{ properties }}'
RETURNING
id,
name,
etag,
properties,
systemData,
type;
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

The tasks resource is a nested, proxy-only resource representing work performed by a DMS (classic) instance. The DELETE method deletes a task, canceling it first if it's running.

```sql
DELETE FROM azure.data_migration.tasks
WHERE deleteRunningTasks = '{{ deleteRunningTasks }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="cancel"
    values={[
        { label: 'cancel', value: 'cancel' },
        { label: 'command', value: 'command' }
    ]}
>
<TabItem value="cancel">

The tasks resource is a nested, proxy-only resource representing work performed by a DMS (classic) instance. This method cancels a task if it's currently queued or running.

```sql
EXEC azure.data_migration.tasks.cancel 
@subscriptionId='{{ subscriptionId }}' --required, 
@groupName='{{ groupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@projectName='{{ projectName }}' --required, 
@taskName='{{ taskName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="command">

The tasks resource is a nested, proxy-only resource representing work performed by a DMS (classic) instance. This method executes a command on a running task.

```sql
EXEC azure.data_migration.tasks.command 
@subscriptionId='{{ subscriptionId }}' --required, 
@groupName='{{ groupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@projectName='{{ projectName }}' --required, 
@taskName='{{ taskName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"commandType": "{{ commandType }}"
}'
;
```
</TabItem>
</Tabs>
