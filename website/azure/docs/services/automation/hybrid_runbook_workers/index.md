--- 
title: hybrid_runbook_workers
hide_title: false
hide_table_of_contents: false
keywords:
  - hybrid_runbook_workers
  - automation
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

Creates, updates, deletes, gets or lists a <code>hybrid_runbook_workers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>hybrid_runbook_workers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.automation.hybrid_runbook_workers" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_hybrid_runbook_worker_group', value: 'list_by_hybrid_runbook_worker_group' }
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
    <td>Fully qualified resource Id for the resource</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Gets or sets the hybrid worker group properties.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Resource system metadata.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_hybrid_runbook_worker_group">

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
    <td>Fully qualified resource Id for the resource</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Gets or sets the hybrid worker group properties.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Resource system metadata.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-hybridRunbookWorkerGroupName"><code>hybridRunbookWorkerGroupName</code></a>, <a href="#parameter-hybridRunbookWorkerId"><code>hybridRunbookWorkerId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Retrieve a hybrid runbook worker.</td>
</tr>
<tr>
    <td><a href="#list_by_hybrid_runbook_worker_group"><CopyableCode code="list_by_hybrid_runbook_worker_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-hybridRunbookWorkerGroupName"><code>hybridRunbookWorkerGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Retrieve a list of hybrid runbook workers.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-hybridRunbookWorkerGroupName"><code>hybridRunbookWorkerGroupName</code></a>, <a href="#parameter-hybridRunbookWorkerId"><code>hybridRunbookWorkerId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Create a hybrid runbook worker.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-hybridRunbookWorkerGroupName"><code>hybridRunbookWorkerGroupName</code></a>, <a href="#parameter-hybridRunbookWorkerId"><code>hybridRunbookWorkerId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Delete a hybrid runbook worker.</td>
</tr>
<tr>
    <td><a href="#move"><CopyableCode code="move" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-hybridRunbookWorkerGroupName"><code>hybridRunbookWorkerGroupName</code></a>, <a href="#parameter-hybridRunbookWorkerId"><code>hybridRunbookWorkerId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Move a hybrid worker to a different group.</td>
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
<tr id="parameter-automationAccountName">
    <td><CopyableCode code="automationAccountName" /></td>
    <td><code>string</code></td>
    <td>The name of the automation account.</td>
</tr>
<tr id="parameter-hybridRunbookWorkerGroupName">
    <td><CopyableCode code="hybridRunbookWorkerGroupName" /></td>
    <td><code>string</code></td>
    <td>The hybrid runbook worker group name</td>
</tr>
<tr id="parameter-hybridRunbookWorkerId">
    <td><CopyableCode code="hybridRunbookWorkerId" /></td>
    <td><code>string</code></td>
    <td>The hybrid runbook worker id</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of an Azure Resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The filter to apply on the operation.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_hybrid_runbook_worker_group', value: 'list_by_hybrid_runbook_worker_group' }
    ]}
>
<TabItem value="get">

Retrieve a hybrid runbook worker.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.automation.hybrid_runbook_workers
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND automationAccountName = '{{ automationAccountName }}' -- required
AND hybridRunbookWorkerGroupName = '{{ hybridRunbookWorkerGroupName }}' -- required
AND hybridRunbookWorkerId = '{{ hybridRunbookWorkerId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_hybrid_runbook_worker_group">

Retrieve a list of hybrid runbook workers.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.automation.hybrid_runbook_workers
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND automationAccountName = '{{ automationAccountName }}' -- required
AND hybridRunbookWorkerGroupName = '{{ hybridRunbookWorkerGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
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

Create a hybrid runbook worker.

```sql
INSERT INTO azure.automation.hybrid_runbook_workers (
data__properties,
data__name,
resourceGroupName,
automationAccountName,
hybridRunbookWorkerGroupName,
hybridRunbookWorkerId,
subscriptionId
)
SELECT 
'{{ properties }}' /* required */,
'{{ name }}',
'{{ resourceGroupName }}',
'{{ automationAccountName }}',
'{{ hybridRunbookWorkerGroupName }}',
'{{ hybridRunbookWorkerId }}',
'{{ subscriptionId }}'
RETURNING
id,
name,
properties,
systemData,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: hybrid_runbook_workers
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the hybrid_runbook_workers resource.
    - name: automationAccountName
      value: string
      description: Required parameter for the hybrid_runbook_workers resource.
    - name: hybridRunbookWorkerGroupName
      value: string
      description: Required parameter for the hybrid_runbook_workers resource.
    - name: hybridRunbookWorkerId
      value: string
      description: Required parameter for the hybrid_runbook_workers resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the hybrid_runbook_workers resource.
    - name: properties
      value: object
      description: |
        Gets or sets hybrid runbook worker group create or update properties.
    - name: name
      value: string
      description: |
        Gets or sets the name of the resource.
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

Delete a hybrid runbook worker.

```sql
DELETE FROM azure.automation.hybrid_runbook_workers
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND automationAccountName = '{{ automationAccountName }}' --required
AND hybridRunbookWorkerGroupName = '{{ hybridRunbookWorkerGroupName }}' --required
AND hybridRunbookWorkerId = '{{ hybridRunbookWorkerId }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="move"
    values={[
        { label: 'move', value: 'move' }
    ]}
>
<TabItem value="move">

Move a hybrid worker to a different group.

```sql
EXEC azure.automation.hybrid_runbook_workers.move 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@automationAccountName='{{ automationAccountName }}' --required, 
@hybridRunbookWorkerGroupName='{{ hybridRunbookWorkerGroupName }}' --required, 
@hybridRunbookWorkerId='{{ hybridRunbookWorkerId }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"hybridRunbookWorkerGroupName": "{{ hybridRunbookWorkerGroupName }}"
}'
;
```
</TabItem>
</Tabs>
