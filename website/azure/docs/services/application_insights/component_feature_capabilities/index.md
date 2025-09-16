--- 
title: component_feature_capabilities
hide_title: false
hide_table_of_contents: false
keywords:
  - component_feature_capabilities
  - application_insights
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

Creates, updates, deletes, gets or lists a <code>component_feature_capabilities</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>component_feature_capabilities</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.application_insights.component_feature_capabilities" /></td></tr>
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

An Application Insights component feature capabilities definition.

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
    <td><CopyableCode code="AnalyticsIntegration" /></td>
    <td><code>boolean</code></td>
    <td>Reserved, not used now.</td>
</tr>
<tr>
    <td><CopyableCode code="ApiAccessLevel" /></td>
    <td><code>string</code></td>
    <td>Reserved, not used now.</td>
</tr>
<tr>
    <td><CopyableCode code="ApplicationMap" /></td>
    <td><code>boolean</code></td>
    <td>Reserved, not used now.</td>
</tr>
<tr>
    <td><CopyableCode code="BurstThrottlePolicy" /></td>
    <td><code>string</code></td>
    <td>Reserved, not used now.</td>
</tr>
<tr>
    <td><CopyableCode code="DailyCap" /></td>
    <td><code>number</code></td>
    <td>Daily data volume cap in GB.</td>
</tr>
<tr>
    <td><CopyableCode code="DailyCapResetTime" /></td>
    <td><code>number</code></td>
    <td>Daily data volume cap UTC reset hour.</td>
</tr>
<tr>
    <td><CopyableCode code="LiveStreamMetrics" /></td>
    <td><code>boolean</code></td>
    <td>Reserved, not used now.</td>
</tr>
<tr>
    <td><CopyableCode code="MetadataClass" /></td>
    <td><code>string</code></td>
    <td>Reserved, not used now.</td>
</tr>
<tr>
    <td><CopyableCode code="MultipleStepWebTest" /></td>
    <td><code>boolean</code></td>
    <td>Whether allow to use multiple steps web test feature.</td>
</tr>
<tr>
    <td><CopyableCode code="OpenSchema" /></td>
    <td><code>boolean</code></td>
    <td>Reserved, not used now.</td>
</tr>
<tr>
    <td><CopyableCode code="PowerBIIntegration" /></td>
    <td><code>boolean</code></td>
    <td>Reserved, not used now.</td>
</tr>
<tr>
    <td><CopyableCode code="ProactiveDetection" /></td>
    <td><code>boolean</code></td>
    <td>Reserved, not used now.</td>
</tr>
<tr>
    <td><CopyableCode code="SupportExportData" /></td>
    <td><code>boolean</code></td>
    <td>Whether allow to use continuous export feature.</td>
</tr>
<tr>
    <td><CopyableCode code="ThrottleRate" /></td>
    <td><code>number</code></td>
    <td>Reserved, not used now.</td>
</tr>
<tr>
    <td><CopyableCode code="TrackingType" /></td>
    <td><code>string</code></td>
    <td>The application insights component used tracking type.</td>
</tr>
<tr>
    <td><CopyableCode code="WorkItemIntegration" /></td>
    <td><code>boolean</code></td>
    <td>Whether allow to use work item integration feature.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a></td>
    <td></td>
    <td>Returns feature capabilities of the application insights component.</td>
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
<tr id="parameter-resourceName">
    <td><CopyableCode code="resourceName" /></td>
    <td><code>string</code></td>
    <td>The name of the Application Insights component resource.</td>
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
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Returns feature capabilities of the application insights component.

```sql
SELECT
AnalyticsIntegration,
ApiAccessLevel,
ApplicationMap,
BurstThrottlePolicy,
DailyCap,
DailyCapResetTime,
LiveStreamMetrics,
MetadataClass,
MultipleStepWebTest,
OpenSchema,
PowerBIIntegration,
ProactiveDetection,
SupportExportData,
ThrottleRate,
TrackingType,
WorkItemIntegration
FROM azure.application_insights.component_feature_capabilities
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceName = '{{ resourceName }}' -- required
;
```
</TabItem>
</Tabs>
