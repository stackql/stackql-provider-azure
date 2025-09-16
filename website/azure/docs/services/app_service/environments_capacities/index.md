--- 
title: environments_capacities
hide_title: false
hide_table_of_contents: false
keywords:
  - environments_capacities
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

Creates, updates, deletes, gets or lists an <code>environments_capacities</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>environments_capacities</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.app_service.environments_capacities" /></td></tr>
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
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the stamp.</td>
</tr>
<tr>
    <td><CopyableCode code="availableCapacity" /></td>
    <td><code>integer (int64)</code></td>
    <td>Available capacity (# of machines, bytes of storage etc...).</td>
</tr>
<tr>
    <td><CopyableCode code="computeMode" /></td>
    <td><code>string</code></td>
    <td>Shared/dedicated workers.</td>
</tr>
<tr>
    <td><CopyableCode code="excludeFromCapacityAllocation" /></td>
    <td><code>boolean</code></td>
    <td>If <code>true</code>, it includes basic apps. Basic apps are not used for capacity allocation.</td>
</tr>
<tr>
    <td><CopyableCode code="isApplicableForAllComputeModes" /></td>
    <td><code>boolean</code></td>
    <td><code>true</code> if capacity is applicable for all apps; otherwise, <code>false</code>.</td>
</tr>
<tr>
    <td><CopyableCode code="isLinux" /></td>
    <td><code>boolean</code></td>
    <td>Is this a linux stamp capacity</td>
</tr>
<tr>
    <td><CopyableCode code="siteMode" /></td>
    <td><code>string</code></td>
    <td>Shared or Dedicated.</td>
</tr>
<tr>
    <td><CopyableCode code="totalCapacity" /></td>
    <td><code>integer (int64)</code></td>
    <td>Total capacity (# of machines, bytes of storage etc...).</td>
</tr>
<tr>
    <td><CopyableCode code="unit" /></td>
    <td><code>string</code></td>
    <td>Name of the unit.</td>
</tr>
<tr>
    <td><CopyableCode code="workerSize" /></td>
    <td><code>string</code></td>
    <td>Size of the machines.</td>
</tr>
<tr>
    <td><CopyableCode code="workerSizeId" /></td>
    <td><code>integer (int32)</code></td>
    <td>Size ID of machines:  0 - Small 1 - Medium 2 - Large</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Get the used, available, and total worker capacity an App Service Environment.</td>
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
    <td>Name of the App Service Environment.</td>
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

Description for Get the used, available, and total worker capacity an App Service Environment.

```sql
SELECT
name,
availableCapacity,
computeMode,
excludeFromCapacityAllocation,
isApplicableForAllComputeModes,
isLinux,
siteMode,
totalCapacity,
unit,
workerSize,
workerSizeId
FROM azure.app_service.environments_capacities
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND name = '{{ name }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>
