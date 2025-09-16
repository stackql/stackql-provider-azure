--- 
title: tasks_subscription_level_task_states
hide_title: false
hide_table_of_contents: false
keywords:
  - tasks_subscription_level_task_states
  - security
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

Creates, updates, deletes, gets or lists a <code>tasks_subscription_level_task_states</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>tasks_subscription_level_task_states</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.security.tasks_subscription_level_task_states" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-ascLocation"><code>ascLocation</code></a>, <a href="#parameter-taskName"><code>taskName</code></a>, <a href="#parameter-taskUpdateActionType"><code>taskUpdateActionType</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Recommended tasks that will help improve the security of the subscription proactively</td>
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
<tr id="parameter-ascLocation">
    <td><CopyableCode code="ascLocation" /></td>
    <td><code>string</code></td>
    <td>The location where ASC stores the data of the subscription. can be retrieved from Get locations</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Azure subscription ID</td>
</tr>
<tr id="parameter-taskName">
    <td><CopyableCode code="taskName" /></td>
    <td><code>string</code></td>
    <td>Name of the task object, will be a GUID</td>
</tr>
<tr id="parameter-taskUpdateActionType">
    <td><CopyableCode code="taskUpdateActionType" /></td>
    <td><code>string</code></td>
    <td>Type of the action to do on the task</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>API version for the operation</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="update"
    values={[
        { label: 'update', value: 'update' }
    ]}
>
<TabItem value="update">

Recommended tasks that will help improve the security of the subscription proactively

```sql
EXEC azure.security.tasks_subscription_level_task_states.update 
@subscriptionId='{{ subscriptionId }}' --required, 
@ascLocation='{{ ascLocation }}' --required, 
@taskName='{{ taskName }}' --required, 
@taskUpdateActionType='{{ taskUpdateActionType }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
</Tabs>
