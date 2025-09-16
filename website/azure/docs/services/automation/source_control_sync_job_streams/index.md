--- 
title: source_control_sync_job_streams
hide_title: false
hide_table_of_contents: false
keywords:
  - source_control_sync_job_streams
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

Creates, updates, deletes, gets or lists a <code>source_control_sync_job_streams</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>source_control_sync_job_streams</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.automation.source_control_sync_job_streams" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_sync_job', value: 'list_by_sync_job' }
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
    <td>Resource id.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the source control sync job stream.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_sync_job">

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
    <td>Resource id.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the source control sync job stream.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-sourceControlName"><code>sourceControlName</code></a>, <a href="#parameter-sourceControlSyncJobId"><code>sourceControlSyncJobId</code></a>, <a href="#parameter-streamId"><code>streamId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Retrieve a sync job stream identified by stream id.</td>
</tr>
<tr>
    <td><a href="#list_by_sync_job"><CopyableCode code="list_by_sync_job" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-sourceControlName"><code>sourceControlName</code></a>, <a href="#parameter-sourceControlSyncJobId"><code>sourceControlSyncJobId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Retrieve a list of sync job streams identified by sync job id.</td>
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
<tr id="parameter-sourceControlName">
    <td><CopyableCode code="sourceControlName" /></td>
    <td><code>string</code></td>
    <td>The source control name.</td>
</tr>
<tr id="parameter-sourceControlSyncJobId">
    <td><CopyableCode code="sourceControlSyncJobId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The source control sync job id.</td>
</tr>
<tr id="parameter-streamId">
    <td><CopyableCode code="streamId" /></td>
    <td><code>string</code></td>
    <td>The id of the sync job stream.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_sync_job', value: 'list_by_sync_job' }
    ]}
>
<TabItem value="get">

Retrieve a sync job stream identified by stream id.

```sql
SELECT
id,
properties
FROM azure.automation.source_control_sync_job_streams
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND automationAccountName = '{{ automationAccountName }}' -- required
AND sourceControlName = '{{ sourceControlName }}' -- required
AND sourceControlSyncJobId = '{{ sourceControlSyncJobId }}' -- required
AND streamId = '{{ streamId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_sync_job">

Retrieve a list of sync job streams identified by sync job id.

```sql
SELECT
id,
properties
FROM azure.automation.source_control_sync_job_streams
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND automationAccountName = '{{ automationAccountName }}' -- required
AND sourceControlName = '{{ sourceControlName }}' -- required
AND sourceControlSyncJobId = '{{ sourceControlSyncJobId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $filter = '{{ $filter }}'
;
```
</TabItem>
</Tabs>
