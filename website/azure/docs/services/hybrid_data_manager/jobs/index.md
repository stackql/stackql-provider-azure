--- 
title: jobs
hide_title: false
hide_table_of_contents: false
keywords:
  - jobs
  - hybrid_data_manager
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

Creates, updates, deletes, gets or lists a <code>jobs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>jobs</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hybrid_data_manager.jobs" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_job_definition', value: 'list_by_job_definition' },
        { label: 'list_by_data_service', value: 'list_by_data_service' },
        { label: 'list_by_data_manager', value: 'list_by_data_manager' }
    ]}
>
<TabItem value="get">

The job that matches the given criteria.

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
    <td>Id of the object.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the object.</td>
</tr>
<tr>
    <td><CopyableCode code="endTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Time at which the job ended in UTC ISO 8601 format.</td>
</tr>
<tr>
    <td><CopyableCode code="error" /></td>
    <td><code>object</code></td>
    <td>Top level error for the job.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Job properties.</td>
</tr>
<tr>
    <td><CopyableCode code="startTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Time at which the job was started in UTC ISO 8601 format.</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of the job.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of the object.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_job_definition">

The list of jobs.

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
    <td>Id of the object.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the object.</td>
</tr>
<tr>
    <td><CopyableCode code="endTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Time at which the job ended in UTC ISO 8601 format.</td>
</tr>
<tr>
    <td><CopyableCode code="error" /></td>
    <td><code>object</code></td>
    <td>Top level error for the job.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Job properties.</td>
</tr>
<tr>
    <td><CopyableCode code="startTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Time at which the job was started in UTC ISO 8601 format.</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of the job.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of the object.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_data_service">

The list of jobs that match the service and resource.

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
    <td>Id of the object.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the object.</td>
</tr>
<tr>
    <td><CopyableCode code="endTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Time at which the job ended in UTC ISO 8601 format.</td>
</tr>
<tr>
    <td><CopyableCode code="error" /></td>
    <td><code>object</code></td>
    <td>Top level error for the job.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Job properties.</td>
</tr>
<tr>
    <td><CopyableCode code="startTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Time at which the job was started in UTC ISO 8601 format.</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of the job.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of the object.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_data_manager">

The list of jobs in the resource specified.

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
    <td>Id of the object.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the object.</td>
</tr>
<tr>
    <td><CopyableCode code="endTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Time at which the job ended in UTC ISO 8601 format.</td>
</tr>
<tr>
    <td><CopyableCode code="error" /></td>
    <td><code>object</code></td>
    <td>Top level error for the job.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Job properties.</td>
</tr>
<tr>
    <td><CopyableCode code="startTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Time at which the job was started in UTC ISO 8601 format.</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of the job.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of the object.</td>
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
    <td><a href="#parameter-dataServiceName"><code>dataServiceName</code></a>, <a href="#parameter-jobDefinitionName"><code>jobDefinitionName</code></a>, <a href="#parameter-jobId"><code>jobId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataManagerName"><code>dataManagerName</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>This method gets a data manager job given the jobId.</td>
</tr>
<tr>
    <td><a href="#list_by_job_definition"><CopyableCode code="list_by_job_definition" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-dataServiceName"><code>dataServiceName</code></a>, <a href="#parameter-jobDefinitionName"><code>jobDefinitionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataManagerName"><code>dataManagerName</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>This method gets all the jobs of a given job definition.</td>
</tr>
<tr>
    <td><a href="#list_by_data_service"><CopyableCode code="list_by_data_service" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-dataServiceName"><code>dataServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataManagerName"><code>dataManagerName</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>This method gets all the jobs of a data service type in a given resource.</td>
</tr>
<tr>
    <td><a href="#list_by_data_manager"><CopyableCode code="list_by_data_manager" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataManagerName"><code>dataManagerName</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>This method gets all the jobs at the data manager resource level.</td>
</tr>
<tr>
    <td><a href="#cancel"><CopyableCode code="cancel" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-dataServiceName"><code>dataServiceName</code></a>, <a href="#parameter-jobDefinitionName"><code>jobDefinitionName</code></a>, <a href="#parameter-jobId"><code>jobId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataManagerName"><code>dataManagerName</code></a></td>
    <td></td>
    <td>Cancels the given job.</td>
</tr>
<tr>
    <td><a href="#resume"><CopyableCode code="resume" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-dataServiceName"><code>dataServiceName</code></a>, <a href="#parameter-jobDefinitionName"><code>jobDefinitionName</code></a>, <a href="#parameter-jobId"><code>jobId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataManagerName"><code>dataManagerName</code></a></td>
    <td></td>
    <td>Resumes the given job.</td>
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
<tr id="parameter-dataManagerName">
    <td><CopyableCode code="dataManagerName" /></td>
    <td><code>string</code></td>
    <td>The name of the DataManager Resource within the specified resource group. DataManager names must be between 3 and 24 characters in length and use any alphanumeric and underscore only</td>
</tr>
<tr id="parameter-dataServiceName">
    <td><CopyableCode code="dataServiceName" /></td>
    <td><code>string</code></td>
    <td>The name of the data service of the job definition.</td>
</tr>
<tr id="parameter-jobDefinitionName">
    <td><CopyableCode code="jobDefinitionName" /></td>
    <td><code>string</code></td>
    <td>The name of the job definition of the job.</td>
</tr>
<tr id="parameter-jobId">
    <td><CopyableCode code="jobId" /></td>
    <td><code>string</code></td>
    <td>The job id of the job queried.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The Resource Group Name</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The Subscription Id</td>
</tr>
<tr id="parameter-$expand">
    <td><CopyableCode code="$expand" /></td>
    <td><code>string</code></td>
    <td>$expand is supported on details parameter for job, which provides details on the job stages.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>OData Filter options</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_job_definition', value: 'list_by_job_definition' },
        { label: 'list_by_data_service', value: 'list_by_data_service' },
        { label: 'list_by_data_manager', value: 'list_by_data_manager' }
    ]}
>
<TabItem value="get">

This method gets a data manager job given the jobId.

```sql
SELECT
id,
name,
endTime,
error,
properties,
startTime,
status,
type
FROM azure.hybrid_data_manager.jobs
WHERE dataServiceName = '{{ dataServiceName }}' -- required
AND jobDefinitionName = '{{ jobDefinitionName }}' -- required
AND jobId = '{{ jobId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND dataManagerName = '{{ dataManagerName }}' -- required
AND $expand = '{{ $expand }}'
;
```
</TabItem>
<TabItem value="list_by_job_definition">

This method gets all the jobs of a given job definition.

```sql
SELECT
id,
name,
endTime,
error,
properties,
startTime,
status,
type
FROM azure.hybrid_data_manager.jobs
WHERE dataServiceName = '{{ dataServiceName }}' -- required
AND jobDefinitionName = '{{ jobDefinitionName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND dataManagerName = '{{ dataManagerName }}' -- required
AND $filter = '{{ $filter }}'
;
```
</TabItem>
<TabItem value="list_by_data_service">

This method gets all the jobs of a data service type in a given resource.

```sql
SELECT
id,
name,
endTime,
error,
properties,
startTime,
status,
type
FROM azure.hybrid_data_manager.jobs
WHERE dataServiceName = '{{ dataServiceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND dataManagerName = '{{ dataManagerName }}' -- required
AND $filter = '{{ $filter }}'
;
```
</TabItem>
<TabItem value="list_by_data_manager">

This method gets all the jobs at the data manager resource level.

```sql
SELECT
id,
name,
endTime,
error,
properties,
startTime,
status,
type
FROM azure.hybrid_data_manager.jobs
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND dataManagerName = '{{ dataManagerName }}' -- required
AND $filter = '{{ $filter }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="cancel"
    values={[
        { label: 'cancel', value: 'cancel' },
        { label: 'resume', value: 'resume' }
    ]}
>
<TabItem value="cancel">

Cancels the given job.

```sql
EXEC azure.hybrid_data_manager.jobs.cancel 
@dataServiceName='{{ dataServiceName }}' --required, 
@jobDefinitionName='{{ jobDefinitionName }}' --required, 
@jobId='{{ jobId }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@dataManagerName='{{ dataManagerName }}' --required
;
```
</TabItem>
<TabItem value="resume">

Resumes the given job.

```sql
EXEC azure.hybrid_data_manager.jobs.resume 
@dataServiceName='{{ dataServiceName }}' --required, 
@jobDefinitionName='{{ jobDefinitionName }}' --required, 
@jobId='{{ jobId }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@dataManagerName='{{ dataManagerName }}' --required
;
```
</TabItem>
</Tabs>
