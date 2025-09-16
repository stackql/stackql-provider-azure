--- 
title: hcrp_reports
hide_title: false
hide_table_of_contents: false
keywords:
  - hcrp_reports
  - automanage
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

Creates, updates, deletes, gets or lists a <code>hcrp_reports</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>hcrp_reports</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.automanage.hcrp_reports" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_configuration_profile_assignments', value: 'list_by_configuration_profile_assignments' }
    ]}
>
<TabItem value="get">

OK. The report was returned successfully.

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
    <td>The properties for the report. (title: Properties)</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_configuration_profile_assignments">

OK. List of reports.

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
    <td>The properties for the report. (title: Properties)</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-machineName"><code>machineName</code></a>, <a href="#parameter-configurationProfileAssignmentName"><code>configurationProfileAssignmentName</code></a>, <a href="#parameter-reportName"><code>reportName</code></a></td>
    <td></td>
    <td>Get information about a report associated with a configuration profile assignment run</td>
</tr>
<tr>
    <td><a href="#list_by_configuration_profile_assignments"><CopyableCode code="list_by_configuration_profile_assignments" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-machineName"><code>machineName</code></a>, <a href="#parameter-configurationProfileAssignmentName"><code>configurationProfileAssignmentName</code></a></td>
    <td></td>
    <td>Retrieve a list of reports within a given configuration profile assignment</td>
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
<tr id="parameter-configurationProfileAssignmentName">
    <td><CopyableCode code="configurationProfileAssignmentName" /></td>
    <td><code>string</code></td>
    <td>The configuration profile assignment name.</td>
</tr>
<tr id="parameter-machineName">
    <td><CopyableCode code="machineName" /></td>
    <td><code>string</code></td>
    <td>The name of the Arc machine.</td>
</tr>
<tr id="parameter-reportName">
    <td><CopyableCode code="reportName" /></td>
    <td><code>string</code></td>
    <td>The report name.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
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
        { label: 'get', value: 'get' },
        { label: 'list_by_configuration_profile_assignments', value: 'list_by_configuration_profile_assignments' }
    ]}
>
<TabItem value="get">

Get information about a report associated with a configuration profile assignment run

```sql
SELECT
properties,
systemData
FROM azure.automanage.hcrp_reports
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND machineName = '{{ machineName }}' -- required
AND configurationProfileAssignmentName = '{{ configurationProfileAssignmentName }}' -- required
AND reportName = '{{ reportName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_configuration_profile_assignments">

Retrieve a list of reports within a given configuration profile assignment

```sql
SELECT
properties,
systemData
FROM azure.automanage.hcrp_reports
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND machineName = '{{ machineName }}' -- required
AND configurationProfileAssignmentName = '{{ configurationProfileAssignmentName }}' -- required
;
```
</TabItem>
</Tabs>
