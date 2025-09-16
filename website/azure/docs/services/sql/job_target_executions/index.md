--- 
title: job_target_executions
hide_title: false
hide_table_of_contents: false
keywords:
  - job_target_executions
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

Creates, updates, deletes, gets or lists a <code>job_target_executions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>job_target_executions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.job_target_executions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_step', value: 'list_by_step' },
        { label: 'list_by_job_execution', value: 'list_by_job_execution' }
    ]}
>
<TabItem value="get">

Successfully retrieved the target execution.

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
<TabItem value="list_by_step">

Successfully retrieved the target executions.

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
<TabItem value="list_by_job_execution">

Successfully retrieved the target executions.

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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-jobAgentName"><code>jobAgentName</code></a>, <a href="#parameter-jobName"><code>jobName</code></a>, <a href="#parameter-jobExecutionId"><code>jobExecutionId</code></a>, <a href="#parameter-stepName"><code>stepName</code></a>, <a href="#parameter-targetId"><code>targetId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets a target execution.</td>
</tr>
<tr>
    <td><a href="#list_by_step"><CopyableCode code="list_by_step" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-jobAgentName"><code>jobAgentName</code></a>, <a href="#parameter-jobName"><code>jobName</code></a>, <a href="#parameter-jobExecutionId"><code>jobExecutionId</code></a>, <a href="#parameter-stepName"><code>stepName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-createTimeMin"><code>createTimeMin</code></a>, <a href="#parameter-createTimeMax"><code>createTimeMax</code></a>, <a href="#parameter-endTimeMin"><code>endTimeMin</code></a>, <a href="#parameter-endTimeMax"><code>endTimeMax</code></a>, <a href="#parameter-isActive"><code>isActive</code></a>, <a href="#parameter-$skip"><code>$skip</code></a>, <a href="#parameter-$top"><code>$top</code></a></td>
    <td>Lists the target executions of a job step execution.</td>
</tr>
<tr>
    <td><a href="#list_by_job_execution"><CopyableCode code="list_by_job_execution" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-jobAgentName"><code>jobAgentName</code></a>, <a href="#parameter-jobName"><code>jobName</code></a>, <a href="#parameter-jobExecutionId"><code>jobExecutionId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-createTimeMin"><code>createTimeMin</code></a>, <a href="#parameter-createTimeMax"><code>createTimeMax</code></a>, <a href="#parameter-endTimeMin"><code>endTimeMin</code></a>, <a href="#parameter-endTimeMax"><code>endTimeMax</code></a>, <a href="#parameter-isActive"><code>isActive</code></a>, <a href="#parameter-$skip"><code>$skip</code></a>, <a href="#parameter-$top"><code>$top</code></a></td>
    <td>Lists target executions for all steps of a job execution.</td>
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
    <td>The id of the job execution</td>
</tr>
<tr id="parameter-jobName">
    <td><CopyableCode code="jobName" /></td>
    <td><code>string</code></td>
    <td>The name of the job to get.</td>
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
<tr id="parameter-stepName">
    <td><CopyableCode code="stepName" /></td>
    <td><code>string</code></td>
    <td>The name of the step.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription ID that identifies an Azure subscription.</td>
</tr>
<tr id="parameter-targetId">
    <td><CopyableCode code="targetId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The target id.</td>
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
        { label: 'list_by_step', value: 'list_by_step' },
        { label: 'list_by_job_execution', value: 'list_by_job_execution' }
    ]}
>
<TabItem value="get">

Gets a target execution.

```sql
SELECT
properties
FROM azure.sql.job_target_executions
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serverName = '{{ serverName }}' -- required
AND jobAgentName = '{{ jobAgentName }}' -- required
AND jobName = '{{ jobName }}' -- required
AND jobExecutionId = '{{ jobExecutionId }}' -- required
AND stepName = '{{ stepName }}' -- required
AND targetId = '{{ targetId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_step">

Lists the target executions of a job step execution.

```sql
SELECT
properties
FROM azure.sql.job_target_executions
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serverName = '{{ serverName }}' -- required
AND jobAgentName = '{{ jobAgentName }}' -- required
AND jobName = '{{ jobName }}' -- required
AND jobExecutionId = '{{ jobExecutionId }}' -- required
AND stepName = '{{ stepName }}' -- required
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
<TabItem value="list_by_job_execution">

Lists target executions for all steps of a job execution.

```sql
SELECT
properties
FROM azure.sql.job_target_executions
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serverName = '{{ serverName }}' -- required
AND jobAgentName = '{{ jobAgentName }}' -- required
AND jobName = '{{ jobName }}' -- required
AND jobExecutionId = '{{ jobExecutionId }}' -- required
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
