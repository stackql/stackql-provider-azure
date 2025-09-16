--- 
title: job_definitions
hide_title: false
hide_table_of_contents: false
keywords:
  - job_definitions
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

Creates, updates, deletes, gets or lists a <code>job_definitions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>job_definitions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage_mover.job_definitions" /></td></tr>
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

The Job Definition resource.

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
    <td>Job definition properties.</td>
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

The list of Job Definitions.

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
    <td>Job definition properties.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageMoverName"><code>storageMoverName</code></a>, <a href="#parameter-projectName"><code>projectName</code></a>, <a href="#parameter-jobDefinitionName"><code>jobDefinitionName</code></a></td>
    <td></td>
    <td>Gets a Job Definition resource.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageMoverName"><code>storageMoverName</code></a>, <a href="#parameter-projectName"><code>projectName</code></a></td>
    <td></td>
    <td>Lists all Job Definitions in a Project.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageMoverName"><code>storageMoverName</code></a>, <a href="#parameter-projectName"><code>projectName</code></a>, <a href="#parameter-jobDefinitionName"><code>jobDefinitionName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Creates or updates a Job Definition resource, which contains configuration for a single unit of managed data transfer.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageMoverName"><code>storageMoverName</code></a>, <a href="#parameter-projectName"><code>projectName</code></a>, <a href="#parameter-jobDefinitionName"><code>jobDefinitionName</code></a></td>
    <td></td>
    <td>Updates properties for a Job Definition resource. Properties not specified in the request body will be unchanged.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageMoverName"><code>storageMoverName</code></a>, <a href="#parameter-projectName"><code>projectName</code></a>, <a href="#parameter-jobDefinitionName"><code>jobDefinitionName</code></a></td>
    <td></td>
    <td>Deletes a Job Definition resource.</td>
</tr>
<tr>
    <td><a href="#start_job"><CopyableCode code="start_job" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageMoverName"><code>storageMoverName</code></a>, <a href="#parameter-projectName"><code>projectName</code></a>, <a href="#parameter-jobDefinitionName"><code>jobDefinitionName</code></a></td>
    <td></td>
    <td>Creates a new Job Run resource for the specified Job Definition and passes it to the Agent for execution.</td>
</tr>
<tr>
    <td><a href="#stop_job"><CopyableCode code="stop_job" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageMoverName"><code>storageMoverName</code></a>, <a href="#parameter-projectName"><code>projectName</code></a>, <a href="#parameter-jobDefinitionName"><code>jobDefinitionName</code></a></td>
    <td></td>
    <td>Requests the Agent of any active instance of this Job Definition to stop.</td>
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

Gets a Job Definition resource.

```sql
SELECT
properties,
systemData
FROM azure.storage_mover.job_definitions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND storageMoverName = '{{ storageMoverName }}' -- required
AND projectName = '{{ projectName }}' -- required
AND jobDefinitionName = '{{ jobDefinitionName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists all Job Definitions in a Project.

```sql
SELECT
properties,
systemData
FROM azure.storage_mover.job_definitions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND storageMoverName = '{{ storageMoverName }}' -- required
AND projectName = '{{ projectName }}' -- required
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

Creates or updates a Job Definition resource, which contains configuration for a single unit of managed data transfer.

```sql
INSERT INTO azure.storage_mover.job_definitions (
data__properties,
subscriptionId,
resourceGroupName,
storageMoverName,
projectName,
jobDefinitionName
)
SELECT 
'{{ properties }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ storageMoverName }}',
'{{ projectName }}',
'{{ jobDefinitionName }}'
RETURNING
properties,
systemData
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: job_definitions
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the job_definitions resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the job_definitions resource.
    - name: storageMoverName
      value: string
      description: Required parameter for the job_definitions resource.
    - name: projectName
      value: string
      description: Required parameter for the job_definitions resource.
    - name: jobDefinitionName
      value: string
      description: Required parameter for the job_definitions resource.
    - name: properties
      value: object
      description: |
        Job definition properties.
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

Updates properties for a Job Definition resource. Properties not specified in the request body will be unchanged.

```sql
UPDATE azure.storage_mover.job_definitions
SET 
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND storageMoverName = '{{ storageMoverName }}' --required
AND projectName = '{{ projectName }}' --required
AND jobDefinitionName = '{{ jobDefinitionName }}' --required
RETURNING
properties,
systemData;
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

Deletes a Job Definition resource.

```sql
DELETE FROM azure.storage_mover.job_definitions
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND storageMoverName = '{{ storageMoverName }}' --required
AND projectName = '{{ projectName }}' --required
AND jobDefinitionName = '{{ jobDefinitionName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="start_job"
    values={[
        { label: 'start_job', value: 'start_job' },
        { label: 'stop_job', value: 'stop_job' }
    ]}
>
<TabItem value="start_job">

Creates a new Job Run resource for the specified Job Definition and passes it to the Agent for execution.

```sql
EXEC azure.storage_mover.job_definitions.start_job 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@storageMoverName='{{ storageMoverName }}' --required, 
@projectName='{{ projectName }}' --required, 
@jobDefinitionName='{{ jobDefinitionName }}' --required
;
```
</TabItem>
<TabItem value="stop_job">

Requests the Agent of any active instance of this Job Definition to stop.

```sql
EXEC azure.storage_mover.job_definitions.stop_job 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@storageMoverName='{{ storageMoverName }}' --required, 
@projectName='{{ projectName }}' --required, 
@jobDefinitionName='{{ jobDefinitionName }}' --required
;
```
</TabItem>
</Tabs>
