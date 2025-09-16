--- 
title: usages_by_instance_pools
hide_title: false
hide_table_of_contents: false
keywords:
  - usages_by_instance_pools
  - sql
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

Creates, updates, deletes, gets or lists a <code>usages_by_instance_pools</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>usages_by_instance_pools</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.usages_by_instance_pools" /></td></tr>
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

Successfully retrieved the instance pool usages.

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
    <td>Resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>object</code></td>
    <td>Resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="currentValue" /></td>
    <td><code>integer (int32)</code></td>
    <td>Usage current value.</td>
</tr>
<tr>
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Usage limit.</td>
</tr>
<tr>
    <td><CopyableCode code="requestedLimit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Usage requested limit.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
<tr>
    <td><CopyableCode code="unit" /></td>
    <td><code>string</code></td>
    <td>Usage unit.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-instancePoolName"><code>instancePoolName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-expandChildren"><code>expandChildren</code></a></td>
    <td>Gets all instance pool usage metrics</td>
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
<tr id="parameter-instancePoolName">
    <td><CopyableCode code="instancePoolName" /></td>
    <td><code>string</code></td>
    <td>The name of the instance pool to be retrieved.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription ID that identifies an Azure subscription.</td>
</tr>
<tr id="parameter-expandChildren">
    <td><CopyableCode code="expandChildren" /></td>
    <td><code>boolean</code></td>
    <td>Optional request parameter to include managed instance usages within the instance pool.</td>
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

Gets all instance pool usage metrics

```sql
SELECT
id,
name,
currentValue,
limit,
requestedLimit,
type,
unit
FROM azure.sql.usages_by_instance_pools
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND instancePoolName = '{{ instancePoolName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND expandChildren = '{{ expandChildren }}'
;
```
</TabItem>
</Tabs>
