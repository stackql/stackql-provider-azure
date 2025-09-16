--- 
title: workflow_triggers_callback_urls
hide_title: false
hide_table_of_contents: false
keywords:
  - workflow_triggers_callback_urls
  - app_service
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

Creates, updates, deletes, gets or lists a <code>workflow_triggers_callback_urls</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>workflow_triggers_callback_urls</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.app_service.workflow_triggers_callback_urls" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
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
    <td><CopyableCode code="basePath" /></td>
    <td><code>string</code></td>
    <td>Gets the workflow trigger callback URL base path.</td>
</tr>
<tr>
    <td><CopyableCode code="method" /></td>
    <td><code>string</code></td>
    <td>Gets the workflow trigger callback URL HTTP method.</td>
</tr>
<tr>
    <td><CopyableCode code="queries" /></td>
    <td><code>object</code></td>
    <td>Gets the workflow trigger callback URL query parameters.</td>
</tr>
<tr>
    <td><CopyableCode code="relativePath" /></td>
    <td><code>string</code></td>
    <td>Gets the workflow trigger callback URL relative path.</td>
</tr>
<tr>
    <td><CopyableCode code="relativePathParameters" /></td>
    <td><code>array</code></td>
    <td>Gets the workflow trigger callback URL relative path parameters.</td>
</tr>
<tr>
    <td><CopyableCode code="value" /></td>
    <td><code>string</code></td>
    <td>Gets the workflow trigger callback URL.</td>
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
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-workflowName"><code>workflowName</code></a>, <a href="#parameter-triggerName"><code>triggerName</code></a></td>
    <td></td>
    <td>Get the callback URL for a workflow trigger.</td>
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
<tr id="parameter-name">
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Site name.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group to which the resource belongs.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000).</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

Get the callback URL for a workflow trigger.

```sql
SELECT
basePath,
method,
queries,
relativePath,
relativePathParameters,
value
FROM azure.app_service.workflow_triggers_callback_urls
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND name = '{{ name }}' -- required
AND workflowName = '{{ workflowName }}' -- required
AND triggerName = '{{ triggerName }}' -- required
;
```
</TabItem>
</Tabs>
