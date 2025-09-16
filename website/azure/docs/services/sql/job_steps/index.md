--- 
title: job_steps
hide_title: false
hide_table_of_contents: false
keywords:
  - job_steps
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

Creates, updates, deletes, gets or lists a <code>job_steps</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>job_steps</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.job_steps" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_by_version"
    values={[
        { label: 'get_by_version', value: 'get_by_version' },
        { label: 'list_by_version', value: 'list_by_version' },
        { label: 'get', value: 'get' },
        { label: 'list_by_job', value: 'list_by_job' }
    ]}
>
<TabItem value="get_by_version">

Successfully retrieved the job step.

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
<TabItem value="list_by_version">

Successfully retrieved the list of job steps.

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
<TabItem value="get">

Successfully retrieved the job step.

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

Successfully retrieved the list of job steps.

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
    <td><a href="#get_by_version"><CopyableCode code="get_by_version" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-jobAgentName"><code>jobAgentName</code></a>, <a href="#parameter-jobName"><code>jobName</code></a>, <a href="#parameter-jobVersion"><code>jobVersion</code></a>, <a href="#parameter-stepName"><code>stepName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets the specified version of a job step.</td>
</tr>
<tr>
    <td><a href="#list_by_version"><CopyableCode code="list_by_version" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-jobAgentName"><code>jobAgentName</code></a>, <a href="#parameter-jobName"><code>jobName</code></a>, <a href="#parameter-jobVersion"><code>jobVersion</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets all job steps in the specified job version.</td>
</tr>
<tr>
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-jobAgentName"><code>jobAgentName</code></a>, <a href="#parameter-jobName"><code>jobName</code></a>, <a href="#parameter-stepName"><code>stepName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets a job step in a job's current version.</td>
</tr>
<tr>
    <td><a href="#list_by_job"><CopyableCode code="list_by_job" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-jobAgentName"><code>jobAgentName</code></a>, <a href="#parameter-jobName"><code>jobName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets all job steps for a job's current version.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-jobAgentName"><code>jobAgentName</code></a>, <a href="#parameter-jobName"><code>jobName</code></a>, <a href="#parameter-stepName"><code>stepName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates or updates a job step. This will implicitly create a new job version.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-jobAgentName"><code>jobAgentName</code></a>, <a href="#parameter-jobName"><code>jobName</code></a>, <a href="#parameter-stepName"><code>stepName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes a job step. This will implicitly create a new job version.</td>
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
<tr id="parameter-jobName">
    <td><CopyableCode code="jobName" /></td>
    <td><code>string</code></td>
    <td>The name of the job.</td>
</tr>
<tr id="parameter-jobVersion">
    <td><CopyableCode code="jobVersion" /></td>
    <td><code>integer (int32)</code></td>
    <td>The version of the job to get.</td>
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
    <td>The name of the job step to delete.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription ID that identifies an Azure subscription.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_by_version"
    values={[
        { label: 'get_by_version', value: 'get_by_version' },
        { label: 'list_by_version', value: 'list_by_version' },
        { label: 'get', value: 'get' },
        { label: 'list_by_job', value: 'list_by_job' }
    ]}
>
<TabItem value="get_by_version">

Gets the specified version of a job step.

```sql
SELECT
properties
FROM azure.sql.job_steps
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serverName = '{{ serverName }}' -- required
AND jobAgentName = '{{ jobAgentName }}' -- required
AND jobName = '{{ jobName }}' -- required
AND jobVersion = '{{ jobVersion }}' -- required
AND stepName = '{{ stepName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_version">

Gets all job steps in the specified job version.

```sql
SELECT
properties
FROM azure.sql.job_steps
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serverName = '{{ serverName }}' -- required
AND jobAgentName = '{{ jobAgentName }}' -- required
AND jobName = '{{ jobName }}' -- required
AND jobVersion = '{{ jobVersion }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="get">

Gets a job step in a job's current version.

```sql
SELECT
properties
FROM azure.sql.job_steps
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serverName = '{{ serverName }}' -- required
AND jobAgentName = '{{ jobAgentName }}' -- required
AND jobName = '{{ jobName }}' -- required
AND stepName = '{{ stepName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_job">

Gets all job steps for a job's current version.

```sql
SELECT
properties
FROM azure.sql.job_steps
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serverName = '{{ serverName }}' -- required
AND jobAgentName = '{{ jobAgentName }}' -- required
AND jobName = '{{ jobName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
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

Creates or updates a job step. This will implicitly create a new job version.

```sql
INSERT INTO azure.sql.job_steps (
data__properties,
resourceGroupName,
serverName,
jobAgentName,
jobName,
stepName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ serverName }}',
'{{ jobAgentName }}',
'{{ jobName }}',
'{{ stepName }}',
'{{ subscriptionId }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: job_steps
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the job_steps resource.
    - name: serverName
      value: string
      description: Required parameter for the job_steps resource.
    - name: jobAgentName
      value: string
      description: Required parameter for the job_steps resource.
    - name: jobName
      value: string
      description: Required parameter for the job_steps resource.
    - name: stepName
      value: string
      description: Required parameter for the job_steps resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the job_steps resource.
    - name: properties
      value: object
      description: |
        Resource properties.
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

Deletes a job step. This will implicitly create a new job version.

```sql
DELETE FROM azure.sql.job_steps
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND serverName = '{{ serverName }}' --required
AND jobAgentName = '{{ jobAgentName }}' --required
AND jobName = '{{ jobName }}' --required
AND stepName = '{{ stepName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
