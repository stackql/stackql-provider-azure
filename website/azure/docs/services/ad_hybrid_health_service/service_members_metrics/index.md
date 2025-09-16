--- 
title: service_members_metrics
hide_title: false
hide_table_of_contents: false
keywords:
  - service_members_metrics
  - ad_hybrid_health_service
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

Creates, updates, deletes, gets or lists a <code>service_members_metrics</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>service_members_metrics</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ad_hybrid_health_service.service_members_metrics" /></td></tr>
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

The list of metric sets for a given metric.

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
    <td><CopyableCode code="sets" /></td>
    <td><code>array</code></td>
    <td>The list of metric set.</td>
</tr>
<tr>
    <td><CopyableCode code="timeStamps" /></td>
    <td><code>array</code></td>
    <td>The list of timestamps for each metric in the metric set.</td>
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
    <td><a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-metricName"><code>metricName</code></a>, <a href="#parameter-groupName"><code>groupName</code></a>, <a href="#parameter-serviceMemberId"><code>serviceMemberId</code></a></td>
    <td><a href="#parameter-groupKey"><code>groupKey</code></a>, <a href="#parameter-fromDate"><code>fromDate</code></a>, <a href="#parameter-toDate"><code>toDate</code></a></td>
    <td>Gets the server related metrics for a given metric and group combination.</td>
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
<tr id="parameter-groupName">
    <td><CopyableCode code="groupName" /></td>
    <td><code>string</code></td>
    <td>The group name</td>
</tr>
<tr id="parameter-metricName">
    <td><CopyableCode code="metricName" /></td>
    <td><code>string</code></td>
    <td>The metric name</td>
</tr>
<tr id="parameter-serviceMemberId">
    <td><CopyableCode code="serviceMemberId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The server id.</td>
</tr>
<tr id="parameter-serviceName">
    <td><CopyableCode code="serviceName" /></td>
    <td><code>string</code></td>
    <td>The name of the service.</td>
</tr>
<tr id="parameter-fromDate">
    <td><CopyableCode code="fromDate" /></td>
    <td><code>string (date-time)</code></td>
    <td>The start date.</td>
</tr>
<tr id="parameter-groupKey">
    <td><CopyableCode code="groupKey" /></td>
    <td><code>string</code></td>
    <td>The group key</td>
</tr>
<tr id="parameter-toDate">
    <td><CopyableCode code="toDate" /></td>
    <td><code>string (date-time)</code></td>
    <td>The end date.</td>
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

Gets the server related metrics for a given metric and group combination.

```sql
SELECT
sets,
timeStamps
FROM azure.ad_hybrid_health_service.service_members_metrics
WHERE serviceName = '{{ serviceName }}' -- required
AND metricName = '{{ metricName }}' -- required
AND groupName = '{{ groupName }}' -- required
AND serviceMemberId = '{{ serviceMemberId }}' -- required
AND groupKey = '{{ groupKey }}'
AND fromDate = '{{ fromDate }}'
AND toDate = '{{ toDate }}'
;
```
</TabItem>
</Tabs>
