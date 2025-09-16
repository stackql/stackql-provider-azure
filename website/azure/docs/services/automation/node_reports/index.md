--- 
title: node_reports
hide_title: false
hide_table_of_contents: false
keywords:
  - node_reports
  - automation
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

Creates, updates, deletes, gets or lists a <code>node_reports</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>node_reports</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.automation.node_reports" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_node', value: 'list_by_node' }
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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Gets or sets the id.</td>
</tr>
<tr>
    <td><CopyableCode code="configurationVersion" /></td>
    <td><code>string</code></td>
    <td>Gets or sets the configurationVersion of the node report.</td>
</tr>
<tr>
    <td><CopyableCode code="endTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Gets or sets the end time of the node report.</td>
</tr>
<tr>
    <td><CopyableCode code="errors" /></td>
    <td><code>array</code></td>
    <td>Gets or sets the errors for the node report.</td>
</tr>
<tr>
    <td><CopyableCode code="hostName" /></td>
    <td><code>string</code></td>
    <td>Gets or sets the hostname of the node that sent the report.</td>
</tr>
<tr>
    <td><CopyableCode code="iPV4Addresses" /></td>
    <td><code>array</code></td>
    <td>Gets or sets the IPv4 address of the node that sent the report.</td>
</tr>
<tr>
    <td><CopyableCode code="iPV6Addresses" /></td>
    <td><code>array</code></td>
    <td>Gets or sets the IPv6 address of the node that sent the report.</td>
</tr>
<tr>
    <td><CopyableCode code="lastModifiedTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Gets or sets the lastModifiedTime of the node report.</td>
</tr>
<tr>
    <td><CopyableCode code="metaConfiguration" /></td>
    <td><code>object</code></td>
    <td>Gets or sets the metaConfiguration of the node at the time of the report.</td>
</tr>
<tr>
    <td><CopyableCode code="numberOfResources" /></td>
    <td><code>integer (int32)</code></td>
    <td>Gets or sets the number of resource in the node report.</td>
</tr>
<tr>
    <td><CopyableCode code="rawErrors" /></td>
    <td><code>string</code></td>
    <td>Gets or sets the unparsed errors for the node report.</td>
</tr>
<tr>
    <td><CopyableCode code="rebootRequested" /></td>
    <td><code>string</code></td>
    <td>Gets or sets the rebootRequested of the node report.</td>
</tr>
<tr>
    <td><CopyableCode code="refreshMode" /></td>
    <td><code>string</code></td>
    <td>Gets or sets the refreshMode of the node report.</td>
</tr>
<tr>
    <td><CopyableCode code="reportFormatVersion" /></td>
    <td><code>string</code></td>
    <td>Gets or sets the reportFormatVersion of the node report.</td>
</tr>
<tr>
    <td><CopyableCode code="reportId" /></td>
    <td><code>string</code></td>
    <td>Gets or sets the id of the node report.</td>
</tr>
<tr>
    <td><CopyableCode code="resources" /></td>
    <td><code>array</code></td>
    <td>Gets or sets the resource for the node report.</td>
</tr>
<tr>
    <td><CopyableCode code="startTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Gets or sets the start time of the node report.</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Gets or sets the status of the node report.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Gets or sets the type of the node report.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_node">

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
    <td>Gets or sets the id.</td>
</tr>
<tr>
    <td><CopyableCode code="configurationVersion" /></td>
    <td><code>string</code></td>
    <td>Gets or sets the configurationVersion of the node report.</td>
</tr>
<tr>
    <td><CopyableCode code="endTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Gets or sets the end time of the node report.</td>
</tr>
<tr>
    <td><CopyableCode code="errors" /></td>
    <td><code>array</code></td>
    <td>Gets or sets the errors for the node report.</td>
</tr>
<tr>
    <td><CopyableCode code="hostName" /></td>
    <td><code>string</code></td>
    <td>Gets or sets the hostname of the node that sent the report.</td>
</tr>
<tr>
    <td><CopyableCode code="iPV4Addresses" /></td>
    <td><code>array</code></td>
    <td>Gets or sets the IPv4 address of the node that sent the report.</td>
</tr>
<tr>
    <td><CopyableCode code="iPV6Addresses" /></td>
    <td><code>array</code></td>
    <td>Gets or sets the IPv6 address of the node that sent the report.</td>
</tr>
<tr>
    <td><CopyableCode code="lastModifiedTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Gets or sets the lastModifiedTime of the node report.</td>
</tr>
<tr>
    <td><CopyableCode code="metaConfiguration" /></td>
    <td><code>object</code></td>
    <td>Gets or sets the metaConfiguration of the node at the time of the report.</td>
</tr>
<tr>
    <td><CopyableCode code="numberOfResources" /></td>
    <td><code>integer (int32)</code></td>
    <td>Gets or sets the number of resource in the node report.</td>
</tr>
<tr>
    <td><CopyableCode code="rawErrors" /></td>
    <td><code>string</code></td>
    <td>Gets or sets the unparsed errors for the node report.</td>
</tr>
<tr>
    <td><CopyableCode code="rebootRequested" /></td>
    <td><code>string</code></td>
    <td>Gets or sets the rebootRequested of the node report.</td>
</tr>
<tr>
    <td><CopyableCode code="refreshMode" /></td>
    <td><code>string</code></td>
    <td>Gets or sets the refreshMode of the node report.</td>
</tr>
<tr>
    <td><CopyableCode code="reportFormatVersion" /></td>
    <td><code>string</code></td>
    <td>Gets or sets the reportFormatVersion of the node report.</td>
</tr>
<tr>
    <td><CopyableCode code="reportId" /></td>
    <td><code>string</code></td>
    <td>Gets or sets the id of the node report.</td>
</tr>
<tr>
    <td><CopyableCode code="resources" /></td>
    <td><code>array</code></td>
    <td>Gets or sets the resource for the node report.</td>
</tr>
<tr>
    <td><CopyableCode code="startTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Gets or sets the start time of the node report.</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Gets or sets the status of the node report.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Gets or sets the type of the node report.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-nodeId"><code>nodeId</code></a>, <a href="#parameter-reportId"><code>reportId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Retrieve the Dsc node report data by node id and report id.</td>
</tr>
<tr>
    <td><a href="#list_by_node"><CopyableCode code="list_by_node" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-nodeId"><code>nodeId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Retrieve the Dsc node report list by node id.</td>
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
<tr id="parameter-automationAccountName">
    <td><CopyableCode code="automationAccountName" /></td>
    <td><code>string</code></td>
    <td>The name of the automation account.</td>
</tr>
<tr id="parameter-nodeId">
    <td><CopyableCode code="nodeId" /></td>
    <td><code>string</code></td>
    <td>The parameters supplied to the list operation.</td>
</tr>
<tr id="parameter-reportId">
    <td><CopyableCode code="reportId" /></td>
    <td><code>string</code></td>
    <td>The report id.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of an Azure Resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The filter to apply on the operation.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_node', value: 'list_by_node' }
    ]}
>
<TabItem value="get">

Retrieve the Dsc node report data by node id and report id.

```sql
SELECT
id,
configurationVersion,
endTime,
errors,
hostName,
iPV4Addresses,
iPV6Addresses,
lastModifiedTime,
metaConfiguration,
numberOfResources,
rawErrors,
rebootRequested,
refreshMode,
reportFormatVersion,
reportId,
resources,
startTime,
status,
type
FROM azure.automation.node_reports
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND automationAccountName = '{{ automationAccountName }}' -- required
AND nodeId = '{{ nodeId }}' -- required
AND reportId = '{{ reportId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_node">

Retrieve the Dsc node report list by node id.

```sql
SELECT
id,
configurationVersion,
endTime,
errors,
hostName,
iPV4Addresses,
iPV6Addresses,
lastModifiedTime,
metaConfiguration,
numberOfResources,
rawErrors,
rebootRequested,
refreshMode,
reportFormatVersion,
reportId,
resources,
startTime,
status,
type
FROM azure.automation.node_reports
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND automationAccountName = '{{ automationAccountName }}' -- required
AND nodeId = '{{ nodeId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $filter = '{{ $filter }}'
;
```
</TabItem>
</Tabs>
