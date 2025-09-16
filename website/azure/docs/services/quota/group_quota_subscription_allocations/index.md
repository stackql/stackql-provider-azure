--- 
title: group_quota_subscription_allocations
hide_title: false
hide_table_of_contents: false
keywords:
  - group_quota_subscription_allocations
  - quota
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

Creates, updates, deletes, gets or lists a <code>group_quota_subscription_allocations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>group_quota_subscription_allocations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.quota.group_quota_subscription_allocations" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Quota properties for the specified resource.</td>
</tr>
</tbody>
</table>
</TabItem>
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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Quota properties for the specified resource.</td>
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
    <td><a href="#parameter-managementGroupId"><code>managementGroupId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-groupQuotaName"><code>groupQuotaName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-$filter"><code>$filter</code></a></td>
    <td></td>
    <td>Gets Quota allocated to a subscription for the specific Resource Provider, Location, ResourceName. This will include the GroupQuota and total quota allocated to the subscription. Only the Group quota allocated to the subscription can be allocated back to the MG Group Quota.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-managementGroupId"><code>managementGroupId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-groupQuotaName"><code>groupQuotaName</code></a>, <a href="#parameter-$filter"><code>$filter</code></a></td>
    <td></td>
    <td>Gets all the quota allocated to a subscription for the specific Resource Provider, Location. This will include the GroupQuota and total quota allocated to the subscription. Only the Group quota allocated to the subscription can be allocated back to the MG Group Quota. Use the $filter parameter to filter out the specific resource based on the ResourceProvider/Location. $filter is a required parameter. </td>
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
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>| Field | Supported operators   |---------------------|------------------------   location eq &#123;location&#125;  Example: $filter=location eq eastus</td>
</tr>
<tr id="parameter-groupQuotaName">
    <td><CopyableCode code="groupQuotaName" /></td>
    <td><code>string</code></td>
    <td>The GroupQuota name. The name should be unique for the provided context tenantId/MgId.</td>
</tr>
<tr id="parameter-managementGroupId">
    <td><CopyableCode code="managementGroupId" /></td>
    <td><code>string</code></td>
    <td>Management Group Id.</td>
</tr>
<tr id="parameter-resourceName">
    <td><CopyableCode code="resourceName" /></td>
    <td><code>string</code></td>
    <td>Resource name.</td>
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
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Gets Quota allocated to a subscription for the specific Resource Provider, Location, ResourceName. This will include the GroupQuota and total quota allocated to the subscription. Only the Group quota allocated to the subscription can be allocated back to the MG Group Quota.

```sql
SELECT
properties
FROM azure.quota.group_quota_subscription_allocations
WHERE managementGroupId = '{{ managementGroupId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND groupQuotaName = '{{ groupQuotaName }}' -- required
AND resourceName = '{{ resourceName }}' -- required
AND $filter = '{{ $filter }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets all the quota allocated to a subscription for the specific Resource Provider, Location. This will include the GroupQuota and total quota allocated to the subscription. Only the Group quota allocated to the subscription can be allocated back to the MG Group Quota. Use the $filter parameter to filter out the specific resource based on the ResourceProvider/Location. $filter is a required parameter. 

```sql
SELECT
properties
FROM azure.quota.group_quota_subscription_allocations
WHERE managementGroupId = '{{ managementGroupId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND groupQuotaName = '{{ groupQuotaName }}' -- required
AND $filter = '{{ $filter }}' -- required
;
```
</TabItem>
</Tabs>
