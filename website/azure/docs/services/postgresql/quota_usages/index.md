--- 
title: quota_usages
hide_title: false
hide_table_of_contents: false
keywords:
  - quota_usages
  - postgresql
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

Creates, updates, deletes, gets or lists a <code>quota_usages</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>quota_usages</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.postgresql.quota_usages" /></td></tr>
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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Fully qualified ARM resource Id</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>object</code></td>
    <td>Name of quota usage for flexible servers</td>
</tr>
<tr>
    <td><CopyableCode code="currentValue" /></td>
    <td><code>integer (int64)</code></td>
    <td>Current Quota usage value</td>
</tr>
<tr>
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int64)</code></td>
    <td>Quota limit</td>
</tr>
<tr>
    <td><CopyableCode code="unit" /></td>
    <td><code>string</code></td>
    <td>Quota unit (default: Count)</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-locationName"><code>locationName</code></a></td>
    <td></td>
    <td>Get quota usages at specified location in a given subscription.</td>
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
<tr id="parameter-locationName">
    <td><CopyableCode code="locationName" /></td>
    <td><code>string</code></td>
    <td>The name of the location.</td>
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
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

Get quota usages at specified location in a given subscription.

```sql
SELECT
id,
name,
currentValue,
limit,
unit
FROM azure.postgresql.quota_usages
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND locationName = '{{ locationName }}' -- required
;
```
</TabItem>
</Tabs>
