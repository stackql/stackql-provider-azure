--- 
title: alerts_adds_alerts
hide_title: false
hide_table_of_contents: false
keywords:
  - alerts_adds_alerts
  - ad_hybrid_health_service
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

Creates, updates, deletes, gets or lists an <code>alerts_adds_alerts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>alerts_adds_alerts</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ad_hybrid_health_service.alerts_adds_alerts" /></td></tr>
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

The list of alerts for the given service.

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
    <td><CopyableCode code="activeAlertProperties" /></td>
    <td><code>array</code></td>
    <td>The active alert properties.</td>
</tr>
<tr>
    <td><CopyableCode code="additionalInformation" /></td>
    <td><code>array</code></td>
    <td>Additional information related to the alert.</td>
</tr>
<tr>
    <td><CopyableCode code="alertId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The alert Id.</td>
</tr>
<tr>
    <td><CopyableCode code="createdDate" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date and time,in UTC,when the alert was created.</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>The alert description.</td>
</tr>
<tr>
    <td><CopyableCode code="displayName" /></td>
    <td><code>string</code></td>
    <td>The display name for the alert.</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date and time, in UTC, when the alert was last updated.</td>
</tr>
<tr>
    <td><CopyableCode code="level" /></td>
    <td><code>string</code></td>
    <td>The alert level which indicates the severity of the alert.</td>
</tr>
<tr>
    <td><CopyableCode code="monitorRoleType" /></td>
    <td><code>string</code></td>
    <td>The monitoring role type for which the alert was raised.</td>
</tr>
<tr>
    <td><CopyableCode code="relatedLinks" /></td>
    <td><code>array</code></td>
    <td>The help links to get more information related to the alert.</td>
</tr>
<tr>
    <td><CopyableCode code="remediation" /></td>
    <td><code>string</code></td>
    <td>The alert remediation.</td>
</tr>
<tr>
    <td><CopyableCode code="resolvedAlertProperties" /></td>
    <td><code>array</code></td>
    <td>The resolved alert properties.</td>
</tr>
<tr>
    <td><CopyableCode code="resolvedDate" /></td>
    <td><code>string (date-time)</code></td>
    <td>The date and time, in UTC, when the alert was resolved.</td>
</tr>
<tr>
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>The scope of the alert. Indicates if it is a service or a server related alert.</td>
</tr>
<tr>
    <td><CopyableCode code="serviceId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The service Id.</td>
</tr>
<tr>
    <td><CopyableCode code="serviceMemberId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The server Id.</td>
</tr>
<tr>
    <td><CopyableCode code="shortName" /></td>
    <td><code>string</code></td>
    <td>The alert short name.</td>
</tr>
<tr>
    <td><CopyableCode code="state" /></td>
    <td><code>string</code></td>
    <td>The alert state which can be either active or resolved with multiple resolution types.</td>
</tr>
<tr>
    <td><CopyableCode code="tenantId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The tenant Id.</td>
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
    <td><a href="#parameter-serviceName"><code>serviceName</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-state"><code>state</code></a>, <a href="#parameter-from"><code>from</code></a>, <a href="#parameter-to"><code>to</code></a></td>
    <td>Gets the alerts for a given Active Directory Domain Service.</td>
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
<tr id="parameter-serviceName">
    <td><CopyableCode code="serviceName" /></td>
    <td><code>string</code></td>
    <td>The name of the service.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The alert property filter to apply.</td>
</tr>
<tr id="parameter-from">
    <td><CopyableCode code="from" /></td>
    <td><code>string (date-time)</code></td>
    <td>The start date to query for.</td>
</tr>
<tr id="parameter-state">
    <td><CopyableCode code="state" /></td>
    <td><code>string</code></td>
    <td>The alert state to query for.</td>
</tr>
<tr id="parameter-to">
    <td><CopyableCode code="to" /></td>
    <td><code>string (date-time)</code></td>
    <td>The end date till when to query for.</td>
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

Gets the alerts for a given Active Directory Domain Service.

```sql
SELECT
activeAlertProperties,
additionalInformation,
alertId,
createdDate,
description,
displayName,
lastUpdated,
level,
monitorRoleType,
relatedLinks,
remediation,
resolvedAlertProperties,
resolvedDate,
scope,
serviceId,
serviceMemberId,
shortName,
state,
tenantId
FROM azure.ad_hybrid_health_service.alerts_adds_alerts
WHERE serviceName = '{{ serviceName }}' -- required
AND $filter = '{{ $filter }}'
AND state = '{{ state }}'
AND from = '{{ from }}'
AND to = '{{ to }}'
;
```
</TabItem>
</Tabs>
