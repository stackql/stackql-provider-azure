--- 
title: metric_alerts_status
hide_title: false
hide_table_of_contents: false
keywords:
  - metric_alerts_status
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

Creates, updates, deletes, gets or lists a <code>metric_alerts_status</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>metric_alerts_status</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.monitor.metric_alerts_status" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_by_name"
    values={[
        { label: 'list_by_name', value: 'list_by_name' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list_by_name">

Successful request for a list of metric alerts

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
    <td>The alert rule arm id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The status name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The alert status properties of the metric alert status.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The extended resource type name.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Successful request for a list of metric alerts

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
    <td>The alert rule arm id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The status name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The alert status properties of the metric alert status.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The extended resource type name.</td>
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
    <td><a href="#list_by_name"><CopyableCode code="list_by_name" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-ruleName"><code>ruleName</code></a>, <a href="#parameter-statusName"><code>statusName</code></a></td>
    <td></td>
    <td>Retrieve an alert rule status.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-ruleName"><code>ruleName</code></a></td>
    <td></td>
    <td>Retrieve an alert rule status.</td>
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
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-ruleName">
    <td><CopyableCode code="ruleName" /></td>
    <td><code>string</code></td>
    <td>The name of the rule.</td>
</tr>
<tr id="parameter-statusName">
    <td><CopyableCode code="statusName" /></td>
    <td><code>string</code></td>
    <td>The name of the status.</td>
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
    defaultValue="list_by_name"
    values={[
        { label: 'list_by_name', value: 'list_by_name' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list_by_name">

Retrieve an alert rule status.

```sql
SELECT
id,
name,
properties,
type
FROM azure.monitor.metric_alerts_status
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND ruleName = '{{ ruleName }}' -- required
AND statusName = '{{ statusName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Retrieve an alert rule status.

```sql
SELECT
id,
name,
properties,
type
FROM azure.monitor.metric_alerts_status
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND ruleName = '{{ ruleName }}' -- required
;
```
</TabItem>
</Tabs>
