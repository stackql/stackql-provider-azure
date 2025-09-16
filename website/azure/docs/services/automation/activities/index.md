--- 
title: activities
hide_title: false
hide_table_of_contents: false
keywords:
  - activities
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

Creates, updates, deletes, gets or lists an <code>activities</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>activities</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.automation.activities" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_module', value: 'list_by_module' }
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
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Gets the name of the activity.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Gets or sets the properties of the activity.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_module">

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
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Gets the name of the activity.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Gets or sets the properties of the activity.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-moduleName"><code>moduleName</code></a>, <a href="#parameter-activityName"><code>activityName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Retrieve the activity in the module identified by module name and activity name.</td>
</tr>
<tr>
    <td><a href="#list_by_module"><CopyableCode code="list_by_module" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-moduleName"><code>moduleName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Retrieve a list of activities in the module identified by module name.</td>
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
<tr id="parameter-activityName">
    <td><CopyableCode code="activityName" /></td>
    <td><code>string</code></td>
    <td>The name of activity.</td>
</tr>
<tr id="parameter-automationAccountName">
    <td><CopyableCode code="automationAccountName" /></td>
    <td><code>string</code></td>
    <td>The name of the automation account.</td>
</tr>
<tr id="parameter-moduleName">
    <td><CopyableCode code="moduleName" /></td>
    <td><code>string</code></td>
    <td>The name of module.</td>
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
        { label: 'list_by_module', value: 'list_by_module' }
    ]}
>
<TabItem value="get">

Retrieve the activity in the module identified by module name and activity name.

```sql
SELECT
id,
name,
properties
FROM azure.automation.activities
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND automationAccountName = '{{ automationAccountName }}' -- required
AND moduleName = '{{ moduleName }}' -- required
AND activityName = '{{ activityName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_module">

Retrieve a list of activities in the module identified by module name.

```sql
SELECT
id,
name,
properties
FROM azure.automation.activities
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND automationAccountName = '{{ automationAccountName }}' -- required
AND moduleName = '{{ moduleName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>
