--- 
title: action_groups_test_notifications_at_action_group_resource_levels
hide_title: false
hide_table_of_contents: false
keywords:
  - action_groups_test_notifications_at_action_group_resource_levels
  - monitor
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

Creates, updates, deletes, gets or lists an <code>action_groups_test_notifications_at_action_group_resource_levels</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>action_groups_test_notifications_at_action_group_resource_levels</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.monitor.action_groups_test_notifications_at_action_group_resource_levels" /></td></tr>
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

The notification details

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
    <td><CopyableCode code="actionDetails" /></td>
    <td><code>array</code></td>
    <td>The list of action detail</td>
</tr>
<tr>
    <td><CopyableCode code="completedTime" /></td>
    <td><code>string</code></td>
    <td>The completed time</td>
</tr>
<tr>
    <td><CopyableCode code="context" /></td>
    <td><code>object</code></td>
    <td>The context info</td>
</tr>
<tr>
    <td><CopyableCode code="createdTime" /></td>
    <td><code>string</code></td>
    <td>The created time</td>
</tr>
<tr>
    <td><CopyableCode code="state" /></td>
    <td><code>string</code></td>
    <td>The overall state</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-actionGroupName"><code>actionGroupName</code></a>, <a href="#parameter-notificationId"><code>notificationId</code></a></td>
    <td></td>
    <td>Get the test notifications by the notification id</td>
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
<tr id="parameter-actionGroupName">
    <td><CopyableCode code="actionGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the action group.</td>
</tr>
<tr id="parameter-notificationId">
    <td><CopyableCode code="notificationId" /></td>
    <td><code>string</code></td>
    <td>The notification id</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
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

Get the test notifications by the notification id

```sql
SELECT
actionDetails,
completedTime,
context,
createdTime,
state
FROM azure.monitor.action_groups_test_notifications_at_action_group_resource_levels
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND actionGroupName = '{{ actionGroupName }}' -- required
AND notificationId = '{{ notificationId }}' -- required
;
```
</TabItem>
</Tabs>
