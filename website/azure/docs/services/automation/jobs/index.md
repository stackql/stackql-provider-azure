--- 
title: jobs
hide_title: false
hide_table_of_contents: false
keywords:
  - jobs
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

Creates, updates, deletes, gets or lists a <code>jobs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>jobs</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.automation.jobs" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_automation_account', value: 'list_by_automation_account' }
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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the job.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_automation_account">

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
    <td>Job properties.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-jobName"><code>jobName</code></a></td>
    <td><a href="#parameter-clientRequestId"><code>clientRequestId</code></a></td>
    <td>Retrieve the job identified by job name.</td>
</tr>
<tr>
    <td><a href="#list_by_automation_account"><CopyableCode code="list_by_automation_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-clientRequestId"><code>clientRequestId</code></a></td>
    <td>Retrieve a list of jobs.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-jobName"><code>jobName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td><a href="#parameter-clientRequestId"><code>clientRequestId</code></a></td>
    <td>Create a job of the runbook.</td>
</tr>
<tr>
    <td><a href="#suspend"><CopyableCode code="suspend" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-jobName"><code>jobName</code></a></td>
    <td><a href="#parameter-clientRequestId"><code>clientRequestId</code></a></td>
    <td>Suspend the job identified by job name.</td>
</tr>
<tr>
    <td><a href="#stop"><CopyableCode code="stop" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-jobName"><code>jobName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-clientRequestId"><code>clientRequestId</code></a></td>
    <td>Stop the job identified by jobName.</td>
</tr>
<tr>
    <td><a href="#resume"><CopyableCode code="resume" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-jobName"><code>jobName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-clientRequestId"><code>clientRequestId</code></a></td>
    <td>Resume the job identified by jobName.</td>
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
<tr id="parameter-jobName">
    <td><CopyableCode code="jobName" /></td>
    <td><code>string</code></td>
    <td>The job name.</td>
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
<tr id="parameter-clientRequestId">
    <td><CopyableCode code="clientRequestId" /></td>
    <td><code>string</code></td>
    <td>Identifies this specific client request.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_automation_account', value: 'list_by_automation_account' }
    ]}
>
<TabItem value="get">

Retrieve the job identified by job name.

```sql
SELECT
properties
FROM azure.automation.jobs
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND automationAccountName = '{{ automationAccountName }}' -- required
AND jobName = '{{ jobName }}' -- required
AND clientRequestId = '{{ clientRequestId }}'
;
```
</TabItem>
<TabItem value="list_by_automation_account">

Retrieve a list of jobs.

```sql
SELECT
properties
FROM azure.automation.jobs
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND automationAccountName = '{{ automationAccountName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $filter = '{{ $filter }}'
AND clientRequestId = '{{ clientRequestId }}'
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

Create a job of the runbook.

```sql
INSERT INTO azure.automation.jobs (
data__properties,
subscriptionId,
resourceGroupName,
automationAccountName,
jobName,
clientRequestId
)
SELECT 
'{{ properties }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ automationAccountName }}',
'{{ jobName }}',
'{{ clientRequestId }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: jobs
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the jobs resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the jobs resource.
    - name: automationAccountName
      value: string
      description: Required parameter for the jobs resource.
    - name: jobName
      value: string
      description: Required parameter for the jobs resource.
    - name: properties
      value: object
      description: |
        Gets or sets the list of job properties.
    - name: clientRequestId
      value: string
      description: Identifies this specific client request.
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="suspend"
    values={[
        { label: 'suspend', value: 'suspend' },
        { label: 'stop', value: 'stop' },
        { label: 'resume', value: 'resume' }
    ]}
>
<TabItem value="suspend">

Suspend the job identified by job name.

```sql
EXEC azure.automation.jobs.suspend 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@automationAccountName='{{ automationAccountName }}' --required, 
@jobName='{{ jobName }}' --required, 
@clientRequestId='{{ clientRequestId }}'
;
```
</TabItem>
<TabItem value="stop">

Stop the job identified by jobName.

```sql
EXEC azure.automation.jobs.stop 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@automationAccountName='{{ automationAccountName }}' --required, 
@jobName='{{ jobName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@clientRequestId='{{ clientRequestId }}'
;
```
</TabItem>
<TabItem value="resume">

Resume the job identified by jobName.

```sql
EXEC azure.automation.jobs.resume 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@automationAccountName='{{ automationAccountName }}' --required, 
@jobName='{{ jobName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@clientRequestId='{{ clientRequestId }}'
;
```
</TabItem>
</Tabs>
