--- 
title: active_sessions
hide_title: false
hide_table_of_contents: false
keywords:
  - active_sessions
  - network
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

Creates, updates, deletes, gets or lists an <code>active_sessions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>active_sessions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.active_sessions" /></td></tr>
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

Success. The operation returns a list of active sessions on the Bastion.

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
    <td><CopyableCode code="protocol" /></td>
    <td><code>string</code></td>
    <td>The protocol used to connect to the target.</td>
</tr>
<tr>
    <td><CopyableCode code="resourceType" /></td>
    <td><code>string</code></td>
    <td>The type of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="sessionDurationInMins" /></td>
    <td><code>number</code></td>
    <td>Duration in mins the session has been active.</td>
</tr>
<tr>
    <td><CopyableCode code="sessionId" /></td>
    <td><code>string</code></td>
    <td>A unique id for the session.</td>
</tr>
<tr>
    <td><CopyableCode code="startTime" /></td>
    <td><code>object</code></td>
    <td>The time when the session started.</td>
</tr>
<tr>
    <td><CopyableCode code="targetHostName" /></td>
    <td><code>string</code></td>
    <td>The host name of the target.</td>
</tr>
<tr>
    <td><CopyableCode code="targetIpAddress" /></td>
    <td><code>string</code></td>
    <td>The IP Address of the target.</td>
</tr>
<tr>
    <td><CopyableCode code="targetResourceGroup" /></td>
    <td><code>string</code></td>
    <td>The resource group of the target.</td>
</tr>
<tr>
    <td><CopyableCode code="targetResourceId" /></td>
    <td><code>string</code></td>
    <td>The resource id of the target.</td>
</tr>
<tr>
    <td><CopyableCode code="targetSubscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription id for the target virtual machine.</td>
</tr>
<tr>
    <td><CopyableCode code="userName" /></td>
    <td><code>string</code></td>
    <td>The user name who is active on this session.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-bastionHostName"><code>bastionHostName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Returns the list of currently active sessions on the Bastion.</td>
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
<tr id="parameter-bastionHostName">
    <td><CopyableCode code="bastionHostName" /></td>
    <td><code>string</code></td>
    <td>The name of the Bastion Host.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
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

Returns the list of currently active sessions on the Bastion.

```sql
SELECT
protocol,
resourceType,
sessionDurationInMins,
sessionId,
startTime,
targetHostName,
targetIpAddress,
targetResourceGroup,
targetResourceId,
targetSubscriptionId,
userName
FROM azure.network.active_sessions
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND bastionHostName = '{{ bastionHostName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>
