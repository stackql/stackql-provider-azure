--- 
title: workflows
hide_title: false
hide_table_of_contents: false
keywords:
  - workflows
  - storage_sync
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

Creates, updates, deletes, gets or lists a <code>workflows</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>workflows</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage_sync.workflows" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_storage_sync_service', value: 'list_by_storage_sync_service' }
    ]}
>
<TabItem value="get">

Workflow object

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
    <td>Workflow properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_storage_sync_service">

Array of Workflow resources in Storage Sync Service

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
    <td>Workflow properties.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageSyncServiceName"><code>storageSyncServiceName</code></a>, <a href="#parameter-workflowId"><code>workflowId</code></a></td>
    <td></td>
    <td>Get Workflows resource</td>
</tr>
<tr>
    <td><a href="#list_by_storage_sync_service"><CopyableCode code="list_by_storage_sync_service" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageSyncServiceName"><code>storageSyncServiceName</code></a></td>
    <td></td>
    <td>Get a Workflow List</td>
</tr>
<tr>
    <td><a href="#abort"><CopyableCode code="abort" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageSyncServiceName"><code>storageSyncServiceName</code></a>, <a href="#parameter-workflowId"><code>workflowId</code></a></td>
    <td></td>
    <td>Abort the given workflow.</td>
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
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-storageSyncServiceName">
    <td><CopyableCode code="storageSyncServiceName" /></td>
    <td><code>string</code></td>
    <td>Name of Storage Sync Service resource.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-workflowId">
    <td><CopyableCode code="workflowId" /></td>
    <td><code>string</code></td>
    <td>workflow Id</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_storage_sync_service', value: 'list_by_storage_sync_service' }
    ]}
>
<TabItem value="get">

Get Workflows resource

```sql
SELECT
properties
FROM azure.storage_sync.workflows
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND storageSyncServiceName = '{{ storageSyncServiceName }}' -- required
AND workflowId = '{{ workflowId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_storage_sync_service">

Get a Workflow List

```sql
SELECT
properties
FROM azure.storage_sync.workflows
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND storageSyncServiceName = '{{ storageSyncServiceName }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="abort"
    values={[
        { label: 'abort', value: 'abort' }
    ]}
>
<TabItem value="abort">

Abort the given workflow.

```sql
EXEC azure.storage_sync.workflows.abort 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@storageSyncServiceName='{{ storageSyncServiceName }}' --required, 
@workflowId='{{ workflowId }}' --required
;
```
</TabItem>
</Tabs>
