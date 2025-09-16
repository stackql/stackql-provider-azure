--- 
title: log_analytics_waf_log_analytics_metrics
hide_title: false
hide_table_of_contents: false
keywords:
  - log_analytics_waf_log_analytics_metrics
  - cdn
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

Creates, updates, deletes, gets or lists a <code>log_analytics_waf_log_analytics_metrics</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>log_analytics_waf_log_analytics_metrics</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cdn.log_analytics_waf_log_analytics_metrics" /></td></tr>
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

Describe the result of a successful operation.

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
    <td><CopyableCode code="dateTimeBegin" /></td>
    <td><code>string (date-time)</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="dateTimeEnd" /></td>
    <td><code>string (date-time)</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="granularity" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="series" /></td>
    <td><code>array</code></td>
    <td></td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-metrics"><code>metrics</code></a>, <a href="#parameter-dateTimeBegin"><code>dateTimeBegin</code></a>, <a href="#parameter-dateTimeEnd"><code>dateTimeEnd</code></a>, <a href="#parameter-granularity"><code>granularity</code></a></td>
    <td><a href="#parameter-actions"><code>actions</code></a>, <a href="#parameter-groupBy"><code>groupBy</code></a>, <a href="#parameter-ruleTypes"><code>ruleTypes</code></a></td>
    <td>Get Waf related log analytics report for AFD profile.</td>
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
<tr id="parameter-dateTimeBegin">
    <td><CopyableCode code="dateTimeBegin" /></td>
    <td><code>string (date-time)</code></td>
    <td></td>
</tr>
<tr id="parameter-dateTimeEnd">
    <td><CopyableCode code="dateTimeEnd" /></td>
    <td><code>string (date-time)</code></td>
    <td></td>
</tr>
<tr id="parameter-granularity">
    <td><CopyableCode code="granularity" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr id="parameter-metrics">
    <td><CopyableCode code="metrics" /></td>
    <td><code>array</code></td>
    <td></td>
</tr>
<tr id="parameter-profileName">
    <td><CopyableCode code="profileName" /></td>
    <td><code>string</code></td>
    <td>Name of the Azure Front Door Standard or Azure Front Door Premium profile which is unique within the resource group. which is unique within the resource group.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the Resource group within the Azure subscription.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Azure Subscription ID.</td>
</tr>
<tr id="parameter-actions">
    <td><CopyableCode code="actions" /></td>
    <td><code>array</code></td>
    <td></td>
</tr>
<tr id="parameter-groupBy">
    <td><CopyableCode code="groupBy" /></td>
    <td><code>array</code></td>
    <td></td>
</tr>
<tr id="parameter-ruleTypes">
    <td><CopyableCode code="ruleTypes" /></td>
    <td><code>array</code></td>
    <td></td>
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

Get Waf related log analytics report for AFD profile.

```sql
SELECT
dateTimeBegin,
dateTimeEnd,
granularity,
series
FROM azure.cdn.log_analytics_waf_log_analytics_metrics
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND profileName = '{{ profileName }}' -- required
AND metrics = '{{ metrics }}' -- required
AND dateTimeBegin = '{{ dateTimeBegin }}' -- required
AND dateTimeEnd = '{{ dateTimeEnd }}' -- required
AND granularity = '{{ granularity }}' -- required
AND actions = '{{ actions }}'
AND groupBy = '{{ groupBy }}'
AND ruleTypes = '{{ ruleTypes }}'
;
```
</TabItem>
</Tabs>
