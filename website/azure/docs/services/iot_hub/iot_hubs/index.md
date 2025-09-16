--- 
title: iot_hubs
hide_title: false
hide_table_of_contents: false
keywords:
  - iot_hubs
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

Creates, updates, deletes, gets or lists an <code>iot_hubs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>iot_hubs</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.iot_hub.iot_hubs" /></td></tr>
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
    <td><a href="#manual_failover"><CopyableCode code="manual_failover" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-iotHubName"><code>iotHubName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-failoverRegion"><code>failoverRegion</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Manually initiate a failover for the IoT Hub to its secondary region. To learn more, see https://aka.ms/manualfailover</td>
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
    <td>Name of the IoT hub to failover</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group containing the IoT hub resource</td>
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

## Lifecycle Methods

<Tabs
    defaultValue="manual_failover"
    values={[
        { label: 'manual_failover', value: 'manual_failover' }
    ]}
>
<TabItem value="manual_failover">

Manually initiate a failover for the IoT Hub to its secondary region. To learn more, see https://aka.ms/manualfailover

```sql
EXEC azure.iot_hub.iot_hubs.manual_failover 
@iotHubName='{{ iotHubName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"failoverRegion": "{{ failoverRegion }}"
}'
;
```
</TabItem>
</Tabs>
