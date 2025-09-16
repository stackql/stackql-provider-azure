--- 
title: resource_endpoint_health
hide_title: false
hide_table_of_contents: false
keywords:
  - resource_endpoint_health
  - iot_hub
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

Creates, updates, deletes, gets or lists a <code>resource_endpoint_health</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>resource_endpoint_health</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.iot_hub.resource_endpoint_health" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

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
    <td><CopyableCode code="endpointId" /></td>
    <td><code>string</code></td>
    <td>Id of the endpoint</td>
</tr>
<tr>
    <td><CopyableCode code="healthStatus" /></td>
    <td><code>string</code></td>
    <td>Health statuses have following meanings. The 'healthy' status shows that the endpoint is accepting messages as expected. The 'unhealthy' status shows that the endpoint is not accepting messages as expected and IoT Hub is retrying to send data to this endpoint. The status of an unhealthy endpoint will be updated to healthy when IoT Hub has established an eventually consistent state of health. The 'dead' status shows that the endpoint is not accepting messages, after IoT Hub retried sending messages for the retrial period. See IoT Hub metrics to identify errors and monitor issues with endpoints. The 'unknown' status shows that the IoT Hub has not established a connection with the endpoint. No messages have been delivered to or rejected from this endpoint</td>
</tr>
<tr>
    <td><CopyableCode code="lastKnownError" /></td>
    <td><code>string</code></td>
    <td>Last error obtained when a message failed to be delivered to iot hub</td>
</tr>
<tr>
    <td><CopyableCode code="lastKnownErrorTime" /></td>
    <td><code>string (date-time-rfc1123)</code></td>
    <td>Time at which the last known error occurred</td>
</tr>
<tr>
    <td><CopyableCode code="lastSendAttemptTime" /></td>
    <td><code>string (date-time-rfc1123)</code></td>
    <td>Last time iot hub tried to send a message to the endpoint</td>
</tr>
<tr>
    <td><CopyableCode code="lastSuccessfulSendAttemptTime" /></td>
    <td><code>string (date-time-rfc1123)</code></td>
    <td>Last time iot hub successfully sent a message to the endpoint</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-iotHubName"><code>iotHubName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Get the health for routing endpoints.</td>
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
<tr id="parameter-iotHubName">
    <td><CopyableCode code="iotHubName" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription identifier.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>The version of the API.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Get the health for routing endpoints.

```sql
SELECT
endpointId,
healthStatus,
lastKnownError,
lastKnownErrorTime,
lastSendAttemptTime,
lastSuccessfulSendAttemptTime
FROM azure.iot_hub.resource_endpoint_health
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND iotHubName = '{{ iotHubName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>
