--- 
title: alert_rule_incidents
hide_title: false
hide_table_of_contents: false
keywords:
  - alert_rule_incidents
  - monitor
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

Creates, updates, deletes, gets or lists an <code>alert_rule_incidents</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>alert_rule_incidents</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.monitor.alert_rule_incidents" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_alert_rule', value: 'list_by_alert_rule' }
    ]}
>
<TabItem value="get">

Successful request for one alert rule related incident

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
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Incident name.</td>
</tr>
<tr>
    <td><CopyableCode code="activatedTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The time at which the incident was activated in ISO8601 format.</td>
</tr>
<tr>
    <td><CopyableCode code="isActive" /></td>
    <td><code>boolean</code></td>
    <td>A boolean to indicate whether the incident is active or resolved.</td>
</tr>
<tr>
    <td><CopyableCode code="resolvedTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The time at which the incident was resolved in ISO8601 format. If null, it means the incident is still active.</td>
</tr>
<tr>
    <td><CopyableCode code="ruleName" /></td>
    <td><code>string</code></td>
    <td>Rule name that is associated with the incident.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_alert_rule">

Successful request for a list of alert rule related incidents

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
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Incident name.</td>
</tr>
<tr>
    <td><CopyableCode code="activatedTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The time at which the incident was activated in ISO8601 format.</td>
</tr>
<tr>
    <td><CopyableCode code="isActive" /></td>
    <td><code>boolean</code></td>
    <td>A boolean to indicate whether the incident is active or resolved.</td>
</tr>
<tr>
    <td><CopyableCode code="resolvedTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The time at which the incident was resolved in ISO8601 format. If null, it means the incident is still active.</td>
</tr>
<tr>
    <td><CopyableCode code="ruleName" /></td>
    <td><code>string</code></td>
    <td>Rule name that is associated with the incident.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-ruleName"><code>ruleName</code></a>, <a href="#parameter-incidentName"><code>incidentName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets an incident associated to an alert rule</td>
</tr>
<tr>
    <td><a href="#list_by_alert_rule"><CopyableCode code="list_by_alert_rule" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-ruleName"><code>ruleName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets a list of incidents associated to an alert rule</td>
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
<tr id="parameter-incidentName">
    <td><CopyableCode code="incidentName" /></td>
    <td><code>string</code></td>
    <td>The name of the incident to retrieve.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-ruleName">
    <td><CopyableCode code="ruleName" /></td>
    <td><code>string</code></td>
    <td>The name of the rule.</td>
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
        { label: 'list_by_alert_rule', value: 'list_by_alert_rule' }
    ]}
>
<TabItem value="get">

Gets an incident associated to an alert rule

```sql
SELECT
name,
activatedTime,
isActive,
resolvedTime,
ruleName
FROM azure.monitor.alert_rule_incidents
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND ruleName = '{{ ruleName }}' -- required
AND incidentName = '{{ incidentName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_alert_rule">

Gets a list of incidents associated to an alert rule

```sql
SELECT
name,
activatedTime,
isActive,
resolvedTime,
ruleName
FROM azure.monitor.alert_rule_incidents
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND ruleName = '{{ ruleName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>
