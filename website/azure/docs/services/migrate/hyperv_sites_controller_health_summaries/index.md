--- 
title: hyperv_sites_controller_health_summaries
hide_title: false
hide_table_of_contents: false
keywords:
  - hyperv_sites_controller_health_summaries
  - migrate
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

Creates, updates, deletes, gets or lists a <code>hyperv_sites_controller_health_summaries</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>hyperv_sites_controller_health_summaries</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.migrate.hyperv_sites_controller_health_summaries" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

ARM operation completed successfully.

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
    <td><CopyableCode code="affectedObjectsCount" /></td>
    <td><code>integer (int64)</code></td>
    <td>Gets or sets the count of affected objects.</td>
</tr>
<tr>
    <td><CopyableCode code="affectedResourceType" /></td>
    <td><code>string</code></td>
    <td>Gets the affected resource type.</td>
</tr>
<tr>
    <td><CopyableCode code="affectedResources" /></td>
    <td><code>array</code></td>
    <td>Gets or sets the affected resources.</td>
</tr>
<tr>
    <td><CopyableCode code="applianceName" /></td>
    <td><code>string</code></td>
    <td>Gets the appliance name.</td>
</tr>
<tr>
    <td><CopyableCode code="errorCode" /></td>
    <td><code>string</code></td>
    <td>Gets the error code.</td>
</tr>
<tr>
    <td><CopyableCode code="errorId" /></td>
    <td><code>integer (int64)</code></td>
    <td>Gets the error Id.</td>
</tr>
<tr>
    <td><CopyableCode code="errorMessage" /></td>
    <td><code>string</code></td>
    <td>Gets the error message.</td>
</tr>
<tr>
    <td><CopyableCode code="fabricLayoutUpdateSources" /></td>
    <td><code>array</code></td>
    <td>Gets or sets sources of the exception.</td>
</tr>
<tr>
    <td><CopyableCode code="hitCount" /></td>
    <td><code>integer (int64)</code></td>
    <td>Gets or sets the hit count of the error.</td>
</tr>
<tr>
    <td><CopyableCode code="remediationGuidance" /></td>
    <td><code>string</code></td>
    <td>Gets the remediation guidance.</td>
</tr>
<tr>
    <td><CopyableCode code="severity" /></td>
    <td><code>string</code></td>
    <td>Gets the severity of error.</td>
</tr>
<tr>
    <td><CopyableCode code="summaryMessage" /></td>
    <td><code>string</code></td>
    <td>Gets the summary message.</td>
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
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-siteName"><code>siteName</code></a></td>
    <td></td>
    <td>Method to get site health summary.</td>
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
<tr id="parameter-siteName">
    <td><CopyableCode code="siteName" /></td>
    <td><code>string</code></td>
    <td>Site name</td>
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
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

Method to get site health summary.

```sql
SELECT
affectedObjectsCount,
affectedResourceType,
affectedResources,
applianceName,
errorCode,
errorId,
errorMessage,
fabricLayoutUpdateSources,
hitCount,
remediationGuidance,
severity,
summaryMessage
FROM azure.migrate.hyperv_sites_controller_health_summaries
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND siteName = '{{ siteName }}' -- required
;
```
</TabItem>
</Tabs>
