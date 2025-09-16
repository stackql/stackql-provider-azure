--- 
title: quota_by_period_keys
hide_title: false
hide_table_of_contents: false
keywords:
  - quota_by_period_keys
  - api_management
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

Creates, updates, deletes, gets or lists a <code>quota_by_period_keys</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>quota_by_period_keys</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.quota_by_period_keys" /></td></tr>
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

The response body contains the Quota counter details for the specified period.

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
    <td><CopyableCode code="counterKey" /></td>
    <td><code>string</code></td>
    <td>The Key value of the Counter. Must not be empty.</td>
</tr>
<tr>
    <td><CopyableCode code="periodEndTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date of the end of Counter Period. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard. </td>
</tr>
<tr>
    <td><CopyableCode code="periodKey" /></td>
    <td><code>string</code></td>
    <td>Identifier of the Period for which the counter was collected. Must not be empty.</td>
</tr>
<tr>
    <td><CopyableCode code="periodStartTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date of the start of Counter Period. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard. </td>
</tr>
<tr>
    <td><CopyableCode code="value" /></td>
    <td><code>object</code></td>
    <td>Quota Value Properties</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-quotaCounterKey"><code>quotaCounterKey</code></a>, <a href="#parameter-quotaPeriodKey"><code>quotaPeriodKey</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets the value of the quota counter associated with the counter-key in the policy for the specific period in service instance.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-quotaCounterKey"><code>quotaCounterKey</code></a>, <a href="#parameter-quotaPeriodKey"><code>quotaPeriodKey</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Updates an existing quota counter value in the specified service instance.</td>
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
<tr id="parameter-quotaCounterKey">
    <td><CopyableCode code="quotaCounterKey" /></td>
    <td><code>string</code></td>
    <td>Quota counter key identifier.This is the result of expression defined in counter-key attribute of the quota-by-key policy.For Example, if you specify counter-key="boo" in the policy, then it’s accessible by "boo" counter key. But if it’s defined as counter-key="@("b"+"a")" then it will be accessible by "ba" key</td>
</tr>
<tr id="parameter-quotaPeriodKey">
    <td><CopyableCode code="quotaPeriodKey" /></td>
    <td><code>string</code></td>
    <td>Quota period key identifier.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-serviceName">
    <td><CopyableCode code="serviceName" /></td>
    <td><code>string</code></td>
    <td>The name of the API Management service.</td>
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

Gets the value of the quota counter associated with the counter-key in the policy for the specific period in service instance.

```sql
SELECT
counterKey,
periodEndTime,
periodKey,
periodStartTime,
value
FROM azure.api_management.quota_by_period_keys
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serviceName = '{{ serviceName }}' -- required
AND quotaCounterKey = '{{ quotaCounterKey }}' -- required
AND quotaPeriodKey = '{{ quotaPeriodKey }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update"
    values={[
        { label: 'update', value: 'update' }
    ]}
>
<TabItem value="update">

Updates an existing quota counter value in the specified service instance.

```sql
UPDATE azure.api_management.quota_by_period_keys
SET 
data__properties = '{{ properties }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND serviceName = '{{ serviceName }}' --required
AND quotaCounterKey = '{{ quotaCounterKey }}' --required
AND quotaPeriodKey = '{{ quotaPeriodKey }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
RETURNING
counterKey,
periodEndTime,
periodKey,
periodStartTime,
value;
```
</TabItem>
</Tabs>
