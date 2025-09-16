--- 
title: script_actions_execution_details
hide_title: false
hide_table_of_contents: false
keywords:
  - script_actions_execution_details
  - hdinsight
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

Creates, updates, deletes, gets or lists a <code>script_actions_execution_details</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>script_actions_execution_details</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hdinsight.script_actions_execution_details" /></td></tr>
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

OK response definition.

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
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the script action.</td>
</tr>
<tr>
    <td><CopyableCode code="applicationName" /></td>
    <td><code>string</code></td>
    <td>The application name of the script action, if any.</td>
</tr>
<tr>
    <td><CopyableCode code="debugInformation" /></td>
    <td><code>string</code></td>
    <td>The script action execution debug information.</td>
</tr>
<tr>
    <td><CopyableCode code="endTime" /></td>
    <td><code>string</code></td>
    <td>The end time of script action execution.</td>
</tr>
<tr>
    <td><CopyableCode code="executionSummary" /></td>
    <td><code>array</code></td>
    <td>The summary of script action execution result.</td>
</tr>
<tr>
    <td><CopyableCode code="operation" /></td>
    <td><code>string</code></td>
    <td>The reason why the script action was executed.</td>
</tr>
<tr>
    <td><CopyableCode code="parameters" /></td>
    <td><code>string</code></td>
    <td>The parameters for the script</td>
</tr>
<tr>
    <td><CopyableCode code="roles" /></td>
    <td><code>array</code></td>
    <td>The list of roles where script will be executed.</td>
</tr>
<tr>
    <td><CopyableCode code="scriptExecutionId" /></td>
    <td><code>integer (int64)</code></td>
    <td>The execution id of the script action.</td>
</tr>
<tr>
    <td><CopyableCode code="startTime" /></td>
    <td><code>string</code></td>
    <td>The start time of script action execution.</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>The current execution status of the script action.</td>
</tr>
<tr>
    <td><CopyableCode code="uri" /></td>
    <td><code>string</code></td>
    <td>The URI to the script.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-scriptExecutionId"><code>scriptExecutionId</code></a></td>
    <td></td>
    <td>Gets the script execution detail for the given script execution ID.</td>
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
<tr id="parameter-clusterName">
    <td><CopyableCode code="clusterName" /></td>
    <td><code>string</code></td>
    <td>The name of the cluster.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group.</td>
</tr>
<tr id="parameter-scriptExecutionId">
    <td><CopyableCode code="scriptExecutionId" /></td>
    <td><code>string</code></td>
    <td>The script execution Id</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
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

Gets the script execution detail for the given script execution ID.

```sql
SELECT
name,
applicationName,
debugInformation,
endTime,
executionSummary,
operation,
parameters,
roles,
scriptExecutionId,
startTime,
status,
uri
FROM azure.hdinsight.script_actions_execution_details
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND clusterName = '{{ clusterName }}' -- required
AND scriptExecutionId = '{{ scriptExecutionId }}' -- required
;
```
</TabItem>
</Tabs>
