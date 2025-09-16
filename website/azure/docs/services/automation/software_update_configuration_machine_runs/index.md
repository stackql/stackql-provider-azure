--- 
title: software_update_configuration_machine_runs
hide_title: false
hide_table_of_contents: false
keywords:
  - software_update_configuration_machine_runs
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

Creates, updates, deletes, gets or lists a <code>software_update_configuration_machine_runs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>software_update_configuration_machine_runs</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.automation.software_update_configuration_machine_runs" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_by_id"
    values={[
        { label: 'get_by_id', value: 'get_by_id' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get_by_id">

A single software update configuration machine run.

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
    <td>Resource Id of the software update configuration machine run</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the software update configuration machine run</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Software update configuration machine run properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Return list of software update configuration machine runs.

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
    <td>Resource Id of the software update configuration machine run</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the software update configuration machine run</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Software update configuration machine run properties.</td>
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
    <td><a href="#get_by_id"><CopyableCode code="get_by_id" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a>, <a href="#parameter-softwareUpdateConfigurationMachineRunId"><code>softwareUpdateConfigurationMachineRunId</code></a></td>
    <td><a href="#parameter-clientRequestId"><code>clientRequestId</code></a></td>
    <td>Get a single software update configuration machine run by Id.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-automationAccountName"><code>automationAccountName</code></a></td>
    <td><a href="#parameter-clientRequestId"><code>clientRequestId</code></a>, <a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$skip"><code>$skip</code></a>, <a href="#parameter-$top"><code>$top</code></a></td>
    <td>Return list of software update configuration machine runs</td>
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
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of an Azure Resource group.</td>
</tr>
<tr id="parameter-softwareUpdateConfigurationMachineRunId">
    <td><CopyableCode code="softwareUpdateConfigurationMachineRunId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The Id of the software update configuration machine run.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The filter to apply on the operation. You can use the following filters: 'properties/osType', 'properties/status', 'properties/startTime', and 'properties/softwareUpdateConfiguration/name'</td>
</tr>
<tr id="parameter-$skip">
    <td><CopyableCode code="$skip" /></td>
    <td><code>string</code></td>
    <td>number of entries you skip before returning results</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>string</code></td>
    <td>Maximum number of entries returned in the results collection</td>
</tr>
<tr id="parameter-clientRequestId">
    <td><CopyableCode code="clientRequestId" /></td>
    <td><code>string</code></td>
    <td>Identifies this specific client request.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_by_id"
    values={[
        { label: 'get_by_id', value: 'get_by_id' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get_by_id">

Get a single software update configuration machine run by Id.

```sql
SELECT
id,
name,
properties
FROM azure.automation.software_update_configuration_machine_runs
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND automationAccountName = '{{ automationAccountName }}' -- required
AND softwareUpdateConfigurationMachineRunId = '{{ softwareUpdateConfigurationMachineRunId }}' -- required
AND clientRequestId = '{{ clientRequestId }}'
;
```
</TabItem>
<TabItem value="list">

Return list of software update configuration machine runs

```sql
SELECT
id,
name,
properties
FROM azure.automation.software_update_configuration_machine_runs
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND automationAccountName = '{{ automationAccountName }}' -- required
AND clientRequestId = '{{ clientRequestId }}'
AND $filter = '{{ $filter }}'
AND $skip = '{{ $skip }}'
AND $top = '{{ $top }}'
;
```
</TabItem>
</Tabs>
