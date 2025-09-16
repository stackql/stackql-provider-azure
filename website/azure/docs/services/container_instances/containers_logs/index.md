--- 
title: containers_logs
hide_title: false
hide_table_of_contents: false
keywords:
  - containers_logs
  - container_instances
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

Creates, updates, deletes, gets or lists a <code>containers_logs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>containers_logs</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.container_instances.containers_logs" /></td></tr>
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
    <td><CopyableCode code="content" /></td>
    <td><code>string</code></td>
    <td>The content of the log.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-containerGroupName"><code>containerGroupName</code></a>, <a href="#parameter-containerName"><code>containerName</code></a></td>
    <td><a href="#parameter-tail"><code>tail</code></a>, <a href="#parameter-timestamps"><code>timestamps</code></a></td>
    <td>Get the logs for a specified container instance in a specified resource group and container group.</td>
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
<tr id="parameter-containerGroupName">
    <td><CopyableCode code="containerGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the container group.</td>
</tr>
<tr id="parameter-containerName">
    <td><CopyableCode code="containerName" /></td>
    <td><code>string</code></td>
    <td>The name of the container instance.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
<tr id="parameter-tail">
    <td><CopyableCode code="tail" /></td>
    <td><code>integer (int32)</code></td>
    <td>The number of lines to show from the tail of the container instance log. If not provided, all available logs are shown up to 4mb.</td>
</tr>
<tr id="parameter-timestamps">
    <td><CopyableCode code="timestamps" /></td>
    <td><code>boolean</code></td>
    <td>If true, adds a timestamp at the beginning of every line of log output. If not provided, defaults to false.</td>
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

Get the logs for a specified container instance in a specified resource group and container group.

```sql
SELECT
content
FROM azure.container_instances.containers_logs
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND containerGroupName = '{{ containerGroupName }}' -- required
AND containerName = '{{ containerName }}' -- required
AND tail = '{{ tail }}'
AND timestamps = '{{ timestamps }}'
;
```
</TabItem>
</Tabs>
