--- 
title: dsc_compilation_job_streams
hide_title: false
hide_table_of_contents: false
keywords:
  - dsc_compilation_job_streams
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

Creates, updates, deletes, gets or lists a <code>dsc_compilation_job_streams</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>dsc_compilation_job_streams</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.automation.dsc_compilation_job_streams" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_job', value: 'list_by_job' }
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
    <td>Gets or sets the id of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Gets or sets the id of the job stream.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_job">

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
    <td>Gets or sets the id of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Gets or sets the id of the job stream.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-jobId"><code>jobId</code></a>, <a href="#parameter-jobStreamId"><code>jobStreamId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Retrieve the job stream identified by job stream id.</td>
</tr>
<tr>
    <td><a href="#list_by_job"><CopyableCode code="list_by_job" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-jobId"><code>jobId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Retrieve all the job streams for the compilation Job.</td>
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
<tr id="parameter-jobId">
    <td><CopyableCode code="jobId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The job id.</td>
</tr>
<tr id="parameter-jobStreamId">
    <td><CopyableCode code="jobStreamId" /></td>
    <td><code>string</code></td>
    <td>The job stream id.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_job', value: 'list_by_job' }
    ]}
>
<TabItem value="get">

Retrieve the job stream identified by job stream id.

```sql
SELECT
id,
properties
FROM azure.automation.dsc_compilation_job_streams
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND automationAccountName = '{{ automationAccountName }}' -- required
AND jobId = '{{ jobId }}' -- required
AND jobStreamId = '{{ jobStreamId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_job">

Retrieve all the job streams for the compilation Job.

```sql
SELECT
id,
properties
FROM azure.automation.dsc_compilation_job_streams
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND automationAccountName = '{{ automationAccountName }}' -- required
AND jobId = '{{ jobId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>
