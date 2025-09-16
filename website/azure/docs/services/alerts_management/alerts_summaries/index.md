--- 
title: alerts_summaries
hide_title: false
hide_table_of_contents: false
keywords:
  - alerts_summaries
  - alerts_management
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

Creates, updates, deletes, gets or lists an <code>alerts_summaries</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>alerts_summaries</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.alerts_management.alerts_summaries" /></td></tr>
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

OK. Alert summary returned.

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
    <td>Azure resource Id</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Azure resource name</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Group the result set.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Azure resource type</td>
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
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-groupby"><code>groupby</code></a></td>
    <td><a href="#parameter-includeSmartGroupsCount"><code>includeSmartGroupsCount</code></a>, <a href="#parameter-targetResource"><code>targetResource</code></a>, <a href="#parameter-targetResourceType"><code>targetResourceType</code></a>, <a href="#parameter-targetResourceGroup"><code>targetResourceGroup</code></a>, <a href="#parameter-monitorService"><code>monitorService</code></a>, <a href="#parameter-monitorCondition"><code>monitorCondition</code></a>, <a href="#parameter-severity"><code>severity</code></a>, <a href="#parameter-alertState"><code>alertState</code></a>, <a href="#parameter-alertRule"><code>alertRule</code></a>, <a href="#parameter-timeRange"><code>timeRange</code></a>, <a href="#parameter-customTimeRange"><code>customTimeRange</code></a></td>
    <td>Get a summarized count of your alerts grouped by various parameters (e.g. grouping by 'Severity' returns the count of alerts for each severity).</td>
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
<tr id="parameter-groupby">
    <td><CopyableCode code="groupby" /></td>
    <td><code>string</code></td>
    <td>This parameter allows the result set to be grouped by input fields (Maximum 2 comma separated fields supported). For example, groupby=severity or groupby=severity,alertstate.</td>
</tr>
<tr id="parameter-scope">
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>scope here is resourceId for which alert is created.</td>
</tr>
<tr id="parameter-alertRule">
    <td><CopyableCode code="alertRule" /></td>
    <td><code>string</code></td>
    <td>Filter by specific alert rule.  Default value is to select all.</td>
</tr>
<tr id="parameter-alertState">
    <td><CopyableCode code="alertState" /></td>
    <td><code>string</code></td>
    <td>Filter by state of the alert instance. Default value is to select all.</td>
</tr>
<tr id="parameter-customTimeRange">
    <td><CopyableCode code="customTimeRange" /></td>
    <td><code>string</code></td>
    <td>Filter by custom time range in the format &lt;start-time&gt;/&lt;end-time&gt;  where time is in (ISO-8601 format)'. Permissible values is within 30 days from  query time. Either timeRange or customTimeRange could be used but not both. Default is none.</td>
</tr>
<tr id="parameter-includeSmartGroupsCount">
    <td><CopyableCode code="includeSmartGroupsCount" /></td>
    <td><code>boolean</code></td>
    <td>Include count of the SmartGroups as part of the summary. Default value is 'false'.</td>
</tr>
<tr id="parameter-monitorCondition">
    <td><CopyableCode code="monitorCondition" /></td>
    <td><code>string</code></td>
    <td>Filter by monitor condition which is either 'Fired' or 'Resolved'. Default value is to select all.</td>
</tr>
<tr id="parameter-monitorService">
    <td><CopyableCode code="monitorService" /></td>
    <td><code>string</code></td>
    <td>Filter by monitor service which generates the alert instance. Default value is select all.</td>
</tr>
<tr id="parameter-severity">
    <td><CopyableCode code="severity" /></td>
    <td><code>string</code></td>
    <td>Filter by severity.  Default value is select all.</td>
</tr>
<tr id="parameter-targetResource">
    <td><CopyableCode code="targetResource" /></td>
    <td><code>string</code></td>
    <td>Filter by target resource( which is full ARM ID) Default value is select all.</td>
</tr>
<tr id="parameter-targetResourceGroup">
    <td><CopyableCode code="targetResourceGroup" /></td>
    <td><code>string</code></td>
    <td>Filter by target resource group name. Default value is select all.</td>
</tr>
<tr id="parameter-targetResourceType">
    <td><CopyableCode code="targetResourceType" /></td>
    <td><code>string</code></td>
    <td>Filter by target resource type. Default value is select all.</td>
</tr>
<tr id="parameter-timeRange">
    <td><CopyableCode code="timeRange" /></td>
    <td><code>string</code></td>
    <td>Filter by time range by below listed values. Default value is 1 day.</td>
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

Get a summarized count of your alerts grouped by various parameters (e.g. grouping by 'Severity' returns the count of alerts for each severity).

```sql
SELECT
id,
name,
properties,
type
FROM azure.alerts_management.alerts_summaries
WHERE scope = '{{ scope }}' -- required
AND groupby = '{{ groupby }}' -- required
AND includeSmartGroupsCount = '{{ includeSmartGroupsCount }}'
AND targetResource = '{{ targetResource }}'
AND targetResourceType = '{{ targetResourceType }}'
AND targetResourceGroup = '{{ targetResourceGroup }}'
AND monitorService = '{{ monitorService }}'
AND monitorCondition = '{{ monitorCondition }}'
AND severity = '{{ severity }}'
AND alertState = '{{ alertState }}'
AND alertRule = '{{ alertRule }}'
AND timeRange = '{{ timeRange }}'
AND customTimeRange = '{{ customTimeRange }}'
;
```
</TabItem>
</Tabs>
