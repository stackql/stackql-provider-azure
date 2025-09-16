--- 
title: ip_address_aggregates_by_services
hide_title: false
hide_table_of_contents: false
keywords:
  - ip_address_aggregates_by_services
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

Creates, updates, deletes, gets or lists an <code>ip_address_aggregates_by_services</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>ip_address_aggregates_by_services</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ad_hybrid_health_service.ip_address_aggregates_by_services" /></td></tr>
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

The list of IP addresses.

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
    <td><CopyableCode code="attemptCountThresholdIsExceeded" /></td>
    <td><code>boolean</code></td>
    <td>A value indicating whether the attempt count threshold been exceeded</td>
</tr>
<tr>
    <td><CopyableCode code="attemptCountThresholdOnTrigger" /></td>
    <td><code>integer</code></td>
    <td>The attempted count threshold on trigger.</td>
</tr>
<tr>
    <td><CopyableCode code="attemptThresholdTypeOnTrigger" /></td>
    <td><code>string</code></td>
    <td>The attempted threshold type on trigger.</td>
</tr>
<tr>
    <td><CopyableCode code="badPasswordErrorCount" /></td>
    <td><code>integer</code></td>
    <td>The bad password error count</td>
</tr>
<tr>
    <td><CopyableCode code="extranetLockoutErrorCount" /></td>
    <td><code>integer</code></td>
    <td>The extranet lockout error count</td>
</tr>
<tr>
    <td><CopyableCode code="firstAuditTimestamp" /></td>
    <td><code>string</code></td>
    <td>The first audit timestamp</td>
</tr>
<tr>
    <td><CopyableCode code="geographicLocation" /></td>
    <td><code>string</code></td>
    <td>The geographic location.</td>
</tr>
<tr>
    <td><CopyableCode code="ipAddress" /></td>
    <td><code>string</code></td>
    <td>The IP address from where the attempted login originated from.</td>
</tr>
<tr>
    <td><CopyableCode code="isWhitelistedIpAddress" /></td>
    <td><code>boolean</code></td>
    <td>A value indicating whether the IP address has been listed as allowed.</td>
</tr>
<tr>
    <td><CopyableCode code="lastAuditTimestamp" /></td>
    <td><code>string</code></td>
    <td>The last audit timestamp</td>
</tr>
<tr>
    <td><CopyableCode code="networkLocation" /></td>
    <td><code>string</code></td>
    <td>The network location</td>
</tr>
<tr>
    <td><CopyableCode code="serviceId" /></td>
    <td><code>string</code></td>
    <td>The service ID</td>
</tr>
<tr>
    <td><CopyableCode code="tenantId" /></td>
    <td><code>string</code></td>
    <td>The tenant ID</td>
</tr>
<tr>
    <td><CopyableCode code="timeSpan" /></td>
    <td><code>string</code></td>
    <td>The duration of the event</td>
</tr>
<tr>
    <td><CopyableCode code="timestamp" /></td>
    <td><code>string</code></td>
    <td>When the event occurred</td>
</tr>
<tr>
    <td><CopyableCode code="uniqueUsernamesAttemptedCount" /></td>
    <td><code>integer</code></td>
    <td>The unique usernames attempted</td>
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
    <td><a href="#parameter-skiptoken"><code>skiptoken</code></a></td>
    <td>Gets the IP address aggregates for a given service.</td>
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
<tr id="parameter-skiptoken">
    <td><CopyableCode code="skiptoken" /></td>
    <td><code>string</code></td>
    <td>A continuationtoken value returned in paginated result to load different pages.</td>
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

Gets the IP address aggregates for a given service.

```sql
SELECT
id,
attemptCountThresholdIsExceeded,
attemptCountThresholdOnTrigger,
attemptThresholdTypeOnTrigger,
badPasswordErrorCount,
extranetLockoutErrorCount,
firstAuditTimestamp,
geographicLocation,
ipAddress,
isWhitelistedIpAddress,
lastAuditTimestamp,
networkLocation,
serviceId,
tenantId,
timeSpan,
timestamp,
uniqueUsernamesAttemptedCount
FROM azure.ad_hybrid_health_service.ip_address_aggregates_by_services
WHERE serviceName = '{{ serviceName }}' -- required
AND skiptoken = '{{ skiptoken }}'
;
```
</TabItem>
</Tabs>
