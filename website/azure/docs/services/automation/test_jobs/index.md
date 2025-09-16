--- 
title: test_jobs
hide_title: false
hide_table_of_contents: false
keywords:
  - test_jobs
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

Creates, updates, deletes, gets or lists a <code>test_jobs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>test_jobs</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.automation.test_jobs" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
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
    <td><CopyableCode code="creationTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Gets or sets the creation time of the test job.</td>
</tr>
<tr>
    <td><CopyableCode code="endTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Gets or sets the end time of the test job.</td>
</tr>
<tr>
    <td><CopyableCode code="exception" /></td>
    <td><code>string</code></td>
    <td>Gets or sets the exception of the test job.</td>
</tr>
<tr>
    <td><CopyableCode code="lastModifiedTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Gets or sets the last modified time of the test job.</td>
</tr>
<tr>
    <td><CopyableCode code="lastStatusModifiedTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Gets or sets the last status modified time of the test job.</td>
</tr>
<tr>
    <td><CopyableCode code="logActivityTrace" /></td>
    <td><code>integer (int32)</code></td>
    <td>The activity-level tracing options of the runbook.</td>
</tr>
<tr>
    <td><CopyableCode code="parameters" /></td>
    <td><code>object</code></td>
    <td>Gets or sets the parameters of the test job.</td>
</tr>
<tr>
    <td><CopyableCode code="runOn" /></td>
    <td><code>string</code></td>
    <td>Gets or sets the runOn which specifies the group name where the job is to be executed.</td>
</tr>
<tr>
    <td><CopyableCode code="startTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Gets or sets the start time of the test job.</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Gets or sets the status of the test job.</td>
</tr>
<tr>
    <td><CopyableCode code="statusDetails" /></td>
    <td><code>string</code></td>
    <td>Gets or sets the status details of the test job.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-runbookName"><code>runbookName</code></a></td>
    <td></td>
    <td>Retrieve the test job for the specified runbook.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-runbookName"><code>runbookName</code></a></td>
    <td></td>
    <td>Create a test job of the runbook.</td>
</tr>
<tr>
    <td><a href="#resume"><CopyableCode code="resume" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-runbookName"><code>runbookName</code></a></td>
    <td></td>
    <td>Resume the test job.</td>
</tr>
<tr>
    <td><a href="#stop"><CopyableCode code="stop" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-runbookName"><code>runbookName</code></a></td>
    <td></td>
    <td>Stop the test job.</td>
</tr>
<tr>
    <td><a href="#suspend"><CopyableCode code="suspend" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-runbookName"><code>runbookName</code></a></td>
    <td></td>
    <td>Suspend the test job.</td>
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
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of an Azure Resource group.</td>
</tr>
<tr id="parameter-runbookName">
    <td><CopyableCode code="runbookName" /></td>
    <td><code>string</code></td>
    <td>The runbook name.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Retrieve the test job for the specified runbook.

```sql
SELECT
creationTime,
endTime,
exception,
lastModifiedTime,
lastStatusModifiedTime,
logActivityTrace,
parameters,
runOn,
startTime,
status,
statusDetails
FROM azure.automation.test_jobs
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND automationAccountName = '{{ automationAccountName }}' -- required
AND runbookName = '{{ runbookName }}' -- required
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

Create a test job of the runbook.

```sql
INSERT INTO azure.automation.test_jobs (
data__parameters,
data__runOn,
subscriptionId,
resourceGroupName,
automationAccountName,
runbookName
)
SELECT 
'{{ parameters }}',
'{{ runOn }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ automationAccountName }}',
'{{ runbookName }}'
RETURNING
creationTime,
endTime,
exception,
lastModifiedTime,
lastStatusModifiedTime,
logActivityTrace,
parameters,
runOn,
startTime,
status,
statusDetails
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: test_jobs
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the test_jobs resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the test_jobs resource.
    - name: automationAccountName
      value: string
      description: Required parameter for the test_jobs resource.
    - name: runbookName
      value: string
      description: Required parameter for the test_jobs resource.
    - name: parameters
      value: object
      description: |
        Gets or sets the parameters of the test job.
    - name: runOn
      value: string
      description: |
        Gets or sets the runOn which specifies the group name where the job is to be executed.
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="resume"
    values={[
        { label: 'resume', value: 'resume' },
        { label: 'stop', value: 'stop' },
        { label: 'suspend', value: 'suspend' }
    ]}
>
<TabItem value="resume">

Resume the test job.

```sql
EXEC azure.automation.test_jobs.resume 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@automationAccountName='{{ automationAccountName }}' --required, 
@runbookName='{{ runbookName }}' --required
;
```
</TabItem>
<TabItem value="stop">

Stop the test job.

```sql
EXEC azure.automation.test_jobs.stop 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@automationAccountName='{{ automationAccountName }}' --required, 
@runbookName='{{ runbookName }}' --required
;
```
</TabItem>
<TabItem value="suspend">

Suspend the test job.

```sql
EXEC azure.automation.test_jobs.suspend 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@automationAccountName='{{ automationAccountName }}' --required, 
@runbookName='{{ runbookName }}' --required
;
```
</TabItem>
</Tabs>
