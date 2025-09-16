--- 
title: assignment_reports
hide_title: false
hide_table_of_contents: false
keywords:
  - assignment_reports
  - guest_configuration
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

Creates, updates, deletes, gets or lists an <code>assignment_reports</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>assignment_reports</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.guest_configuration.assignment_reports" /></td></tr>
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

OK. This response is due one of these two reasons: 1. Report was returned successfully 2. Guest configuration assignment was found, but VM is not registered yet, hence no report was returned.

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
    <td>ARM resource id of the report for the guest configuration assignment.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>GUID that identifies the guest configuration assignment report under a subscription, resource group.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the guest configuration report.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

OK. This response is due one of these two reasons: 1. Reports were returned successfully 2. Guest configuration assignment was found, but VM is not registered yet, hence no reports returned.

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
    <td>ARM resource id of the report for the guest configuration assignment.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>GUID that identifies the guest configuration assignment report under a subscription, resource group.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the guest configuration report.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-guestConfigurationAssignmentName"><code>guestConfigurationAssignmentName</code></a>, <a href="#parameter-reportId"><code>reportId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-vmName"><code>vmName</code></a></td>
    <td></td>
    <td>Get a report for the guest configuration assignment, by reportId.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-guestConfigurationAssignmentName"><code>guestConfigurationAssignmentName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-vmName"><code>vmName</code></a></td>
    <td></td>
    <td>List all reports for the guest configuration assignment, latest report first.</td>
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
<tr id="parameter-guestConfigurationAssignmentName">
    <td><CopyableCode code="guestConfigurationAssignmentName" /></td>
    <td><code>string</code></td>
    <td>The guest configuration assignment name.</td>
</tr>
<tr id="parameter-reportId">
    <td><CopyableCode code="reportId" /></td>
    <td><code>string</code></td>
    <td>The GUID for the guest configuration assignment report.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The resource group name.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription ID which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
<tr id="parameter-vmName">
    <td><CopyableCode code="vmName" /></td>
    <td><code>string</code></td>
    <td>The name of the virtual machine.</td>
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

Get a report for the guest configuration assignment, by reportId.

```sql
SELECT
id,
name,
properties
FROM azure.guest_configuration.assignment_reports
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND guestConfigurationAssignmentName = '{{ guestConfigurationAssignmentName }}' -- required
AND reportId = '{{ reportId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND vmName = '{{ vmName }}' -- required
;
```
</TabItem>
<TabItem value="list">

List all reports for the guest configuration assignment, latest report first.

```sql
SELECT
id,
name,
properties
FROM azure.guest_configuration.assignment_reports
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND guestConfigurationAssignmentName = '{{ guestConfigurationAssignmentName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND vmName = '{{ vmName }}' -- required
;
```
</TabItem>
</Tabs>
