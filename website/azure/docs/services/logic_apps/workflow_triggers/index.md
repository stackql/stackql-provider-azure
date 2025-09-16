--- 
title: workflow_triggers
hide_title: false
hide_table_of_contents: false
keywords:
  - workflow_triggers
  - logic_apps
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

Creates, updates, deletes, gets or lists a <code>workflow_triggers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>workflow_triggers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.logic_apps.workflow_triggers" /></td></tr>
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
    <td>The resource id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Gets the workflow trigger name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The workflow trigger properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Gets the workflow trigger type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

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
    <td>The resource id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Gets the workflow trigger name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The workflow trigger properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Gets the workflow trigger type.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workflowName"><code>workflowName</code></a>, <a href="#parameter-triggerName"><code>triggerName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Gets a workflow trigger.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workflowName"><code>workflowName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-$top"><code>$top</code></a>, <a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Gets a list of workflow triggers.</td>
</tr>
<tr>
    <td><a href="#reset"><CopyableCode code="reset" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workflowName"><code>workflowName</code></a>, <a href="#parameter-triggerName"><code>triggerName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Resets a workflow trigger.</td>
</tr>
<tr>
    <td><a href="#run"><CopyableCode code="run" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workflowName"><code>workflowName</code></a>, <a href="#parameter-triggerName"><code>triggerName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Runs a workflow trigger.</td>
</tr>
<tr>
    <td><a href="#set_state"><CopyableCode code="set_state" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workflowName"><code>workflowName</code></a>, <a href="#parameter-triggerName"><code>triggerName</code></a>, <a href="#parameter-source"><code>source</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Sets the state of a workflow trigger.</td>
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
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The resource group name.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription id.</td>
</tr>
<tr id="parameter-triggerName">
    <td><CopyableCode code="triggerName" /></td>
    <td><code>string</code></td>
    <td>The workflow trigger name.</td>
</tr>
<tr id="parameter-workflowName">
    <td><CopyableCode code="workflowName" /></td>
    <td><code>string</code></td>
    <td>The workflow name.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The filter to apply on the operation.</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int32)</code></td>
    <td>The number of items to be included in the result.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>The API version.</td>
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

Gets a workflow trigger.

```sql
SELECT
id,
name,
properties,
type
FROM azure.logic_apps.workflow_triggers
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND workflowName = '{{ workflowName }}' -- required
AND triggerName = '{{ triggerName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list">

Gets a list of workflow triggers.

```sql
SELECT
id,
name,
properties,
type
FROM azure.logic_apps.workflow_triggers
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND workflowName = '{{ workflowName }}' -- required
AND api-version = '{{ api-version }}'
AND $top = '{{ $top }}'
AND $filter = '{{ $filter }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="reset"
    values={[
        { label: 'reset', value: 'reset' },
        { label: 'run', value: 'run' },
        { label: 'set_state', value: 'set_state' }
    ]}
>
<TabItem value="reset">

Resets a workflow trigger.

```sql
EXEC azure.logic_apps.workflow_triggers.reset 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@workflowName='{{ workflowName }}' --required, 
@triggerName='{{ triggerName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="run">

Runs a workflow trigger.

```sql
EXEC azure.logic_apps.workflow_triggers.run 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@workflowName='{{ workflowName }}' --required, 
@triggerName='{{ triggerName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="set_state">

Sets the state of a workflow trigger.

```sql
EXEC azure.logic_apps.workflow_triggers.set_state 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@workflowName='{{ workflowName }}' --required, 
@triggerName='{{ triggerName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"source": "{{ source }}"
}'
;
```
</TabItem>
</Tabs>
