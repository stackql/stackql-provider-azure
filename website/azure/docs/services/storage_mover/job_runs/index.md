--- 
title: job_runs
hide_title: false
hide_table_of_contents: false
keywords:
  - job_runs
  - storage_mover
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

Creates, updates, deletes, gets or lists a <code>job_runs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>job_runs</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage_mover.job_runs" /></td></tr>
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

The Job Run resource.

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
    <td>Job run properties.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Resource system metadata.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

The list of Job Runs.

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
    <td>Job run properties.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Resource system metadata.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageMoverName"><code>storageMoverName</code></a>, <a href="#parameter-projectName"><code>projectName</code></a>, <a href="#parameter-jobDefinitionName"><code>jobDefinitionName</code></a>, <a href="#parameter-jobRunName"><code>jobRunName</code></a></td>
    <td></td>
    <td>Gets a Job Run resource.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageMoverName"><code>storageMoverName</code></a>, <a href="#parameter-projectName"><code>projectName</code></a>, <a href="#parameter-jobDefinitionName"><code>jobDefinitionName</code></a></td>
    <td></td>
    <td>Lists all Job Runs in a Job Definition.</td>
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
<tr id="parameter-jobDefinitionName">
    <td><CopyableCode code="jobDefinitionName" /></td>
    <td><code>string</code></td>
    <td>The name of the Job Definition resource.</td>
</tr>
<tr id="parameter-jobRunName">
    <td><CopyableCode code="jobRunName" /></td>
    <td><code>string</code></td>
    <td>The name of the Job Run resource.</td>
</tr>
<tr id="parameter-projectName">
    <td><CopyableCode code="projectName" /></td>
    <td><code>string</code></td>
    <td>The name of the Project resource.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-storageMoverName">
    <td><CopyableCode code="storageMoverName" /></td>
    <td><code>string</code></td>
    <td>The name of the Storage Mover resource.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
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

Gets a Job Run resource.

```sql
SELECT
properties,
systemData
FROM azure.storage_mover.job_runs
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND storageMoverName = '{{ storageMoverName }}' -- required
AND projectName = '{{ projectName }}' -- required
AND jobDefinitionName = '{{ jobDefinitionName }}' -- required
AND jobRunName = '{{ jobRunName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists all Job Runs in a Job Definition.

```sql
SELECT
properties,
systemData
FROM azure.storage_mover.job_runs
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND storageMoverName = '{{ storageMoverName }}' -- required
AND projectName = '{{ projectName }}' -- required
AND jobDefinitionName = '{{ jobDefinitionName }}' -- required
;
```
</TabItem>
</Tabs>
