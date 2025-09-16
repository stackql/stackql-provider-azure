--- 
title: ip_address_aggregate_settings
hide_title: false
hide_table_of_contents: false
keywords:
  - ip_address_aggregate_settings
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

Creates, updates, deletes, gets or lists an <code>ip_address_aggregate_settings</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>ip_address_aggregate_settings</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ad_hybrid_health_service.ip_address_aggregate_settings" /></td></tr>
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

IP address aggregate settings.

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
    <td>Unique ID for the entree</td>
</tr>
<tr>
    <td><CopyableCode code="badPasswordAndExtranetLockoutCombinedDailyThreshold" /></td>
    <td><code>integer</code></td>
    <td>This threshold setting defines the per day trigger for a new event to be generated in the report.</td>
</tr>
<tr>
    <td><CopyableCode code="badPasswordAndExtranetLockoutCombinedHourlyThreshold" /></td>
    <td><code>integer</code></td>
    <td>This threshold setting defines the per hour trigger for a new event to be generated in the report.</td>
</tr>
<tr>
    <td><CopyableCode code="emailNotificationEnabled" /></td>
    <td><code>boolean</code></td>
    <td>A value indicating whether email notification has been enabled.</td>
</tr>
<tr>
    <td><CopyableCode code="extranetLockoutDailyThreshold" /></td>
    <td><code>integer</code></td>
    <td>This threshold setting defines the per hour trigger for a new event to be generated in the report.</td>
</tr>
<tr>
    <td><CopyableCode code="extranetLockoutHourlyThreshold" /></td>
    <td><code>integer</code></td>
    <td>This threshold setting defines the per hour trigger for a new event to be generated in the report.</td>
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
    <td></td>
    <td>Gets the IP address aggregate settings.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-serviceName"><code>serviceName</code></a></td>
    <td></td>
    <td>Updates the IP address aggregate settings alert thresholds.</td>
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

Gets the IP address aggregate settings.

```sql
SELECT
id,
badPasswordAndExtranetLockoutCombinedDailyThreshold,
badPasswordAndExtranetLockoutCombinedHourlyThreshold,
emailNotificationEnabled,
extranetLockoutDailyThreshold,
extranetLockoutHourlyThreshold
FROM azure.ad_hybrid_health_service.ip_address_aggregate_settings
WHERE serviceName = '{{ serviceName }}' -- required
;
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update"
    values={[
        { label: 'update', value: 'update' }
    ]}
>
<TabItem value="update">

Updates the IP address aggregate settings alert thresholds.

```sql
UPDATE azure.ad_hybrid_health_service.ip_address_aggregate_settings
SET 
data__id = '{{ id }}',
data__badPasswordAndExtranetLockoutCombinedDailyThreshold = {{ badPasswordAndExtranetLockoutCombinedDailyThreshold }},
data__badPasswordAndExtranetLockoutCombinedHourlyThreshold = {{ badPasswordAndExtranetLockoutCombinedHourlyThreshold }},
data__extranetLockoutDailyThreshold = {{ extranetLockoutDailyThreshold }},
data__extranetLockoutHourlyThreshold = {{ extranetLockoutHourlyThreshold }},
data__emailNotificationEnabled = {{ emailNotificationEnabled }}
WHERE 
serviceName = '{{ serviceName }}' --required
RETURNING
id,
badPasswordAndExtranetLockoutCombinedDailyThreshold,
badPasswordAndExtranetLockoutCombinedHourlyThreshold,
emailNotificationEnabled,
extranetLockoutDailyThreshold,
extranetLockoutHourlyThreshold;
```
</TabItem>
</Tabs>
