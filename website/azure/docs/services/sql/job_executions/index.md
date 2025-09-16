--- 
title: job_executions
hide_title: false
hide_table_of_contents: false
keywords:
  - job_executions
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

Creates, updates, deletes, gets or lists a <code>job_executions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>job_executions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.job_executions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_job', value: 'list_by_job' },
        { label: 'list_by_agent', value: 'list_by_agent' }
    ]}
>
<TabItem value="get">

Successfully retrieved the job.

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
<TabItem value="list_by_job">

Successfully retrieved job executions.

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
<TabItem value="list_by_agent">

Successfully retrieved job executions.

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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-jobAgentName"><code>jobAgentName</code></a>, <a href="#parameter-jobName"><code>jobName</code></a>, <a href="#parameter-jobExecutionId"><code>jobExecutionId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets a job execution.</td>
</tr>
<tr>
    <td><a href="#list_by_job"><CopyableCode code="list_by_job" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-jobAgentName"><code>jobAgentName</code></a>, <a href="#parameter-jobName"><code>jobName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-createTimeMin"><code>createTimeMin</code></a>, <a href="#parameter-createTimeMax"><code>createTimeMax</code></a>, <a href="#parameter-endTimeMin"><code>endTimeMin</code></a>, <a href="#parameter-endTimeMax"><code>endTimeMax</code></a>, <a href="#parameter-isActive"><code>isActive</code></a>, <a href="#parameter-$skip"><code>$skip</code></a>, <a href="#parameter-$top"><code>$top</code></a></td>
    <td>Lists a job's executions.</td>
</tr>
<tr>
    <td><a href="#list_by_agent"><CopyableCode code="list_by_agent" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-jobAgentName"><code>jobAgentName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-createTimeMin"><code>createTimeMin</code></a>, <a href="#parameter-createTimeMax"><code>createTimeMax</code></a>, <a href="#parameter-endTimeMin"><code>endTimeMin</code></a>, <a href="#parameter-endTimeMax"><code>endTimeMax</code></a>, <a href="#parameter-isActive"><code>isActive</code></a>, <a href="#parameter-$skip"><code>$skip</code></a>, <a href="#parameter-$top"><code>$top</code></a></td>
    <td>Lists all executions in a job agent.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-jobAgentName"><code>jobAgentName</code></a>, <a href="#parameter-jobName"><code>jobName</code></a>, <a href="#parameter-jobExecutionId"><code>jobExecutionId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates or updates a job execution.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-jobAgentName"><code>jobAgentName</code></a>, <a href="#parameter-jobName"><code>jobName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Starts an elastic job execution.</td>
</tr>
<tr>
    <td><a href="#cancel"><CopyableCode code="cancel" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-jobAgentName"><code>jobAgentName</code></a>, <a href="#parameter-jobName"><code>jobName</code></a>, <a href="#parameter-jobExecutionId"><code>jobExecutionId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Requests cancellation of a job execution.</td>
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
<tr id="parameter-jobAgentName">
    <td><CopyableCode code="jobAgentName" /></td>
    <td><code>string</code></td>
    <td>The name of the job agent.</td>
</tr>
<tr id="parameter-jobExecutionId">
    <td><CopyableCode code="jobExecutionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The id of the job execution to cancel.</td>
</tr>
<tr id="parameter-jobName">
    <td><CopyableCode code="jobName" /></td>
    <td><code>string</code></td>
    <td>The name of the job.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.</td>
</tr>
<tr id="parameter-serverName">
    <td><CopyableCode code="serverName" /></td>
    <td><code>string</code></td>
    <td>The name of the server.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription ID that identifies an Azure subscription.</td>
</tr>
<tr id="parameter-$skip">
    <td><CopyableCode code="$skip" /></td>
    <td><code>integer</code></td>
    <td>The number of elements in the collection to skip.</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer</code></td>
    <td>The number of elements to return from the collection.</td>
</tr>
<tr id="parameter-createTimeMax">
    <td><CopyableCode code="createTimeMax" /></td>
    <td><code>string (date-time)</code></td>
    <td>If specified, only job executions created before the specified time are included.</td>
</tr>
<tr id="parameter-createTimeMin">
    <td><CopyableCode code="createTimeMin" /></td>
    <td><code>string (date-time)</code></td>
    <td>If specified, only job executions created at or after the specified time are included.</td>
</tr>
<tr id="parameter-endTimeMax">
    <td><CopyableCode code="endTimeMax" /></td>
    <td><code>string (date-time)</code></td>
    <td>If specified, only job executions completed before the specified time are included.</td>
</tr>
<tr id="parameter-endTimeMin">
    <td><CopyableCode code="endTimeMin" /></td>
    <td><code>string (date-time)</code></td>
    <td>If specified, only job executions completed at or after the specified time are included.</td>
</tr>
<tr id="parameter-isActive">
    <td><CopyableCode code="isActive" /></td>
    <td><code>boolean</code></td>
    <td>If specified, only active or only completed job executions are included.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_job', value: 'list_by_job' },
        { label: 'list_by_agent', value: 'list_by_agent' }
    ]}
>
<TabItem value="get">

Gets a job execution.

```sql
SELECT
properties
FROM azure.sql.job_executions
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serverName = '{{ serverName }}' -- required
AND jobAgentName = '{{ jobAgentName }}' -- required
AND jobName = '{{ jobName }}' -- required
AND jobExecutionId = '{{ jobExecutionId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_job">

Lists a job's executions.

```sql
SELECT
properties
FROM azure.sql.job_executions
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serverName = '{{ serverName }}' -- required
AND jobAgentName = '{{ jobAgentName }}' -- required
AND jobName = '{{ jobName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND createTimeMin = '{{ createTimeMin }}'
AND createTimeMax = '{{ createTimeMax }}'
AND endTimeMin = '{{ endTimeMin }}'
AND endTimeMax = '{{ endTimeMax }}'
AND isActive = '{{ isActive }}'
AND $skip = '{{ $skip }}'
AND $top = '{{ $top }}'
;
```
</TabItem>
<TabItem value="list_by_agent">

Lists all executions in a job agent.

```sql
SELECT
properties
FROM azure.sql.job_executions
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serverName = '{{ serverName }}' -- required
AND jobAgentName = '{{ jobAgentName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND createTimeMin = '{{ createTimeMin }}'
AND createTimeMax = '{{ createTimeMax }}'
AND endTimeMin = '{{ endTimeMin }}'
AND endTimeMax = '{{ endTimeMax }}'
AND isActive = '{{ isActive }}'
AND $skip = '{{ $skip }}'
AND $top = '{{ $top }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_or_update"
    values={[
        { label: 'create_or_update', value: 'create_or_update' },
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_or_update">

Creates or updates a job execution.

```sql
INSERT INTO azure.sql.job_executions (
resourceGroupName,
serverName,
jobAgentName,
jobName,
jobExecutionId,
subscriptionId
)
SELECT 
'{{ resourceGroupName }}',
'{{ serverName }}',
'{{ jobAgentName }}',
'{{ jobName }}',
'{{ jobExecutionId }}',
'{{ subscriptionId }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="create">

Starts an elastic job execution.

```sql
INSERT INTO azure.sql.job_executions (
resourceGroupName,
serverName,
jobAgentName,
jobName,
subscriptionId
)
SELECT 
'{{ resourceGroupName }}',
'{{ serverName }}',
'{{ jobAgentName }}',
'{{ jobName }}',
'{{ subscriptionId }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: job_executions
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the job_executions resource.
    - name: serverName
      value: string
      description: Required parameter for the job_executions resource.
    - name: jobAgentName
      value: string
      description: Required parameter for the job_executions resource.
    - name: jobName
      value: string
      description: Required parameter for the job_executions resource.
    - name: jobExecutionId
      value: string (uuid)
      description: Required parameter for the job_executions resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the job_executions resource.
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

Requests cancellation of a job execution.

```sql
EXEC azure.sql.job_executions.cancel 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@serverName='{{ serverName }}' --required, 
@jobAgentName='{{ jobAgentName }}' --required, 
@jobName='{{ jobName }}' --required, 
@jobExecutionId='{{ jobExecutionId }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
