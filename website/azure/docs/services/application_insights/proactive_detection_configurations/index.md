--- 
title: proactive_detection_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - proactive_detection_configurations
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

Creates, updates, deletes, gets or lists a <code>proactive_detection_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>proactive_detection_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.application_insights.proactive_detection_configurations" /></td></tr>
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

The ProactiveDetection configuration for this configuration id.

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
    <td><CopyableCode code="CustomEmails" /></td>
    <td><code>array</code></td>
    <td>Custom email addresses for this rule notifications</td>
</tr>
<tr>
    <td><CopyableCode code="Enabled" /></td>
    <td><code>boolean</code></td>
    <td>A flag that indicates whether this rule is enabled by the user</td>
</tr>
<tr>
    <td><CopyableCode code="LastUpdatedTime" /></td>
    <td><code>string</code></td>
    <td>The last time this rule was updated</td>
</tr>
<tr>
    <td><CopyableCode code="Name" /></td>
    <td><code>string</code></td>
    <td>The rule name</td>
</tr>
<tr>
    <td><CopyableCode code="RuleDefinitions" /></td>
    <td><code>object</code></td>
    <td>Static definitions of the ProactiveDetection configuration rule (same values for all components).</td>
</tr>
<tr>
    <td><CopyableCode code="SendEmailsToSubscriptionOwners" /></td>
    <td><code>boolean</code></td>
    <td>A flag that indicated whether notifications on this rule should be sent to subscription owners</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

A list containing 0 or more ProactiveDetection configurations of an Application Insights component.

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
    <td><CopyableCode code="CustomEmails" /></td>
    <td><code>array</code></td>
    <td>Custom email addresses for this rule notifications</td>
</tr>
<tr>
    <td><CopyableCode code="Enabled" /></td>
    <td><code>boolean</code></td>
    <td>A flag that indicates whether this rule is enabled by the user</td>
</tr>
<tr>
    <td><CopyableCode code="LastUpdatedTime" /></td>
    <td><code>string</code></td>
    <td>The last time this rule was updated</td>
</tr>
<tr>
    <td><CopyableCode code="Name" /></td>
    <td><code>string</code></td>
    <td>The rule name</td>
</tr>
<tr>
    <td><CopyableCode code="RuleDefinitions" /></td>
    <td><code>object</code></td>
    <td>Static definitions of the ProactiveDetection configuration rule (same values for all components).</td>
</tr>
<tr>
    <td><CopyableCode code="SendEmailsToSubscriptionOwners" /></td>
    <td><code>boolean</code></td>
    <td>A flag that indicated whether notifications on this rule should be sent to subscription owners</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-ConfigurationId"><code>ConfigurationId</code></a></td>
    <td></td>
    <td>Get the ProactiveDetection configuration for this configuration id.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a></td>
    <td></td>
    <td>Gets a list of ProactiveDetection configurations of an Application Insights component.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-ConfigurationId"><code>ConfigurationId</code></a></td>
    <td></td>
    <td>Update the ProactiveDetection configuration for this configuration id.</td>
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
<tr id="parameter-ConfigurationId">
    <td><CopyableCode code="ConfigurationId" /></td>
    <td><code>string</code></td>
    <td>The ProactiveDetection configuration ID. This is unique within a Application Insights component.</td>
</tr>
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
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Get the ProactiveDetection configuration for this configuration id.

```sql
SELECT
CustomEmails,
Enabled,
LastUpdatedTime,
Name,
RuleDefinitions,
SendEmailsToSubscriptionOwners
FROM azure.application_insights.proactive_detection_configurations
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceName = '{{ resourceName }}' -- required
AND ConfigurationId = '{{ ConfigurationId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets a list of ProactiveDetection configurations of an Application Insights component.

```sql
SELECT
CustomEmails,
Enabled,
LastUpdatedTime,
Name,
RuleDefinitions,
SendEmailsToSubscriptionOwners
FROM azure.application_insights.proactive_detection_configurations
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceName = '{{ resourceName }}' -- required
;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="update"
    values={[
        { label: 'update', value: 'update' }
    ]}
>
<TabItem value="update">

Update the ProactiveDetection configuration for this configuration id.

```sql
REPLACE azure.application_insights.proactive_detection_configurations
SET 
data__Name = '{{ Name }}',
data__Enabled = {{ Enabled }},
data__SendEmailsToSubscriptionOwners = {{ SendEmailsToSubscriptionOwners }},
data__CustomEmails = '{{ CustomEmails }}',
data__LastUpdatedTime = '{{ LastUpdatedTime }}',
data__RuleDefinitions = '{{ RuleDefinitions }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND resourceName = '{{ resourceName }}' --required
AND ConfigurationId = '{{ ConfigurationId }}' --required
RETURNING
CustomEmails,
Enabled,
LastUpdatedTime,
Name,
RuleDefinitions,
SendEmailsToSubscriptionOwners;
```
</TabItem>
</Tabs>
