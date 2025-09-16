--- 
title: diagnostics
hide_title: false
hide_table_of_contents: false
keywords:
  - diagnostics
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

Creates, updates, deletes, gets or lists a <code>diagnostics</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>diagnostics</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.app_service.diagnostics" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#execute_site_analysis"><CopyableCode code="execute_site_analysis" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a>, <a href="#parameter-diagnosticCategory"><code>diagnosticCategory</code></a>, <a href="#parameter-analysisName"><code>analysisName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-startTime"><code>startTime</code></a>, <a href="#parameter-endTime"><code>endTime</code></a>, <a href="#parameter-timeGrain"><code>timeGrain</code></a></td>
    <td>Description for Execute Analysis</td>
</tr>
<tr>
    <td><a href="#execute_site_detector"><CopyableCode code="execute_site_detector" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a>, <a href="#parameter-detectorName"><code>detectorName</code></a>, <a href="#parameter-diagnosticCategory"><code>diagnosticCategory</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-startTime"><code>startTime</code></a>, <a href="#parameter-endTime"><code>endTime</code></a>, <a href="#parameter-timeGrain"><code>timeGrain</code></a></td>
    <td>Description for Execute Detector</td>
</tr>
<tr>
    <td><a href="#execute_site_analysis_slot"><CopyableCode code="execute_site_analysis_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a>, <a href="#parameter-diagnosticCategory"><code>diagnosticCategory</code></a>, <a href="#parameter-analysisName"><code>analysisName</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-startTime"><code>startTime</code></a>, <a href="#parameter-endTime"><code>endTime</code></a>, <a href="#parameter-timeGrain"><code>timeGrain</code></a></td>
    <td>Description for Execute Analysis</td>
</tr>
<tr>
    <td><a href="#execute_site_detector_slot"><CopyableCode code="execute_site_detector_slot" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a>, <a href="#parameter-detectorName"><code>detectorName</code></a>, <a href="#parameter-diagnosticCategory"><code>diagnosticCategory</code></a>, <a href="#parameter-slot"><code>slot</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-startTime"><code>startTime</code></a>, <a href="#parameter-endTime"><code>endTime</code></a>, <a href="#parameter-timeGrain"><code>timeGrain</code></a></td>
    <td>Description for Execute Detector</td>
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
<tr id="parameter-analysisName">
    <td><CopyableCode code="analysisName" /></td>
    <td><code>string</code></td>
    <td>Analysis Resource Name</td>
</tr>
<tr id="parameter-detectorName">
    <td><CopyableCode code="detectorName" /></td>
    <td><code>string</code></td>
    <td>Detector Resource Name</td>
</tr>
<tr id="parameter-diagnosticCategory">
    <td><CopyableCode code="diagnosticCategory" /></td>
    <td><code>string</code></td>
    <td>Category Name</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group to which the resource belongs.</td>
</tr>
<tr id="parameter-siteName">
    <td><CopyableCode code="siteName" /></td>
    <td><code>string</code></td>
    <td>Site Name</td>
</tr>
<tr id="parameter-slot">
    <td><CopyableCode code="slot" /></td>
    <td><code>string</code></td>
    <td>Slot Name</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000).</td>
</tr>
<tr id="parameter-endTime">
    <td><CopyableCode code="endTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>End Time</td>
</tr>
<tr id="parameter-startTime">
    <td><CopyableCode code="startTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Start Time</td>
</tr>
<tr id="parameter-timeGrain">
    <td><CopyableCode code="timeGrain" /></td>
    <td><code>string</code></td>
    <td>Time Grain</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="execute_site_analysis"
    values={[
        { label: 'execute_site_analysis', value: 'execute_site_analysis' },
        { label: 'execute_site_detector', value: 'execute_site_detector' },
        { label: 'execute_site_analysis_slot', value: 'execute_site_analysis_slot' },
        { label: 'execute_site_detector_slot', value: 'execute_site_detector_slot' }
    ]}
>
<TabItem value="execute_site_analysis">

Description for Execute Analysis

```sql
EXEC azure.app_service.diagnostics.execute_site_analysis 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@siteName='{{ siteName }}' --required, 
@diagnosticCategory='{{ diagnosticCategory }}' --required, 
@analysisName='{{ analysisName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@startTime='{{ startTime }}', 
@endTime='{{ endTime }}', 
@timeGrain='{{ timeGrain }}'
;
```
</TabItem>
<TabItem value="execute_site_detector">

Description for Execute Detector

```sql
EXEC azure.app_service.diagnostics.execute_site_detector 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@siteName='{{ siteName }}' --required, 
@detectorName='{{ detectorName }}' --required, 
@diagnosticCategory='{{ diagnosticCategory }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@startTime='{{ startTime }}', 
@endTime='{{ endTime }}', 
@timeGrain='{{ timeGrain }}'
;
```
</TabItem>
<TabItem value="execute_site_analysis_slot">

Description for Execute Analysis

```sql
EXEC azure.app_service.diagnostics.execute_site_analysis_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@siteName='{{ siteName }}' --required, 
@diagnosticCategory='{{ diagnosticCategory }}' --required, 
@analysisName='{{ analysisName }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@startTime='{{ startTime }}', 
@endTime='{{ endTime }}', 
@timeGrain='{{ timeGrain }}'
;
```
</TabItem>
<TabItem value="execute_site_detector_slot">

Description for Execute Detector

```sql
EXEC azure.app_service.diagnostics.execute_site_detector_slot 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@siteName='{{ siteName }}' --required, 
@detectorName='{{ detectorName }}' --required, 
@diagnosticCategory='{{ diagnosticCategory }}' --required, 
@slot='{{ slot }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@startTime='{{ startTime }}', 
@endTime='{{ endTime }}', 
@timeGrain='{{ timeGrain }}'
;
```
</TabItem>
</Tabs>
