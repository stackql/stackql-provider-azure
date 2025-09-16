--- 
title: log_analytics
hide_title: false
hide_table_of_contents: false
keywords:
  - log_analytics
  - compute
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

Creates, updates, deletes, gets or lists a <code>log_analytics</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>log_analytics</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.log_analytics" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#export_request_rate_by_interval"><CopyableCode code="export_request_rate_by_interval" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-location"><code>location</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-intervalLength"><code>intervalLength</code></a></td>
    <td></td>
    <td>Export logs that show Api requests made by this subscription in the given time window to show throttling activities.</td>
</tr>
<tr>
    <td><a href="#export_throttled_requests"><CopyableCode code="export_throttled_requests" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-location"><code>location</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Export logs that show total throttled Api requests for this subscription in the given time window.</td>
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
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The location upon which virtual-machine-sizes is queried.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="export_request_rate_by_interval"
    values={[
        { label: 'export_request_rate_by_interval', value: 'export_request_rate_by_interval' },
        { label: 'export_throttled_requests', value: 'export_throttled_requests' }
    ]}
>
<TabItem value="export_request_rate_by_interval">

Export logs that show Api requests made by this subscription in the given time window to show throttling activities.

```sql
EXEC azure.compute.log_analytics.export_request_rate_by_interval 
@location='{{ location }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"intervalLength": "{{ intervalLength }}", 
"blobContainerSasUri": "{{ blobContainerSasUri }}", 
"fromTime": "{{ fromTime }}", 
"toTime": "{{ toTime }}", 
"groupByThrottlePolicy": {{ groupByThrottlePolicy }}, 
"groupByOperationName": {{ groupByOperationName }}, 
"groupByResourceName": {{ groupByResourceName }}, 
"groupByClientApplicationId": {{ groupByClientApplicationId }}, 
"groupByUserAgent": {{ groupByUserAgent }}
}'
;
```
</TabItem>
<TabItem value="export_throttled_requests">

Export logs that show total throttled Api requests for this subscription in the given time window.

```sql
EXEC azure.compute.log_analytics.export_throttled_requests 
@location='{{ location }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"blobContainerSasUri": "{{ blobContainerSasUri }}", 
"fromTime": "{{ fromTime }}", 
"toTime": "{{ toTime }}", 
"groupByThrottlePolicy": {{ groupByThrottlePolicy }}, 
"groupByOperationName": {{ groupByOperationName }}, 
"groupByResourceName": {{ groupByResourceName }}, 
"groupByClientApplicationId": {{ groupByClientApplicationId }}, 
"groupByUserAgent": {{ groupByUserAgent }}
}'
;
```
</TabItem>
</Tabs>
