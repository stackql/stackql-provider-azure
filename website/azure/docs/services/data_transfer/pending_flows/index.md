--- 
title: pending_flows
hide_title: false
hide_table_of_contents: false
keywords:
  - pending_flows
  - data_transfer
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

Creates, updates, deletes, gets or lists a <code>pending_flows</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>pending_flows</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_transfer.pending_flows" /></td></tr>
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

Listed all connections under the resource group.

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
    <td><CopyableCode code="connection" /></td>
    <td><code>object</code></td>
    <td>The connection associated with this flow</td>
</tr>
<tr>
    <td><CopyableCode code="connectionId" /></td>
    <td><code>string</code></td>
    <td>Connection ID of the pending flow.</td>
</tr>
<tr>
    <td><CopyableCode code="dataType" /></td>
    <td><code>string</code></td>
    <td>Transfer Storage Blobs or Tables</td>
</tr>
<tr>
    <td><CopyableCode code="flowId" /></td>
    <td><code>string</code></td>
    <td>Dataflow GUID associated with this flow</td>
</tr>
<tr>
    <td><CopyableCode code="flowType" /></td>
    <td><code>string</code></td>
    <td>The flow type for this flow</td>
</tr>
<tr>
    <td><CopyableCode code="keyVaultUri" /></td>
    <td><code>string</code></td>
    <td>AME, PME, or TORUS only! AKV Chain Containing SAS Token</td>
</tr>
<tr>
    <td><CopyableCode code="linkStatus" /></td>
    <td><code>string</code></td>
    <td>Link status of the current flow</td>
</tr>
<tr>
    <td><CopyableCode code="linkedFlowId" /></td>
    <td><code>string</code></td>
    <td>Resource ID of the linked flow</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="messagingOptions" /></td>
    <td><code>object</code></td>
    <td>The messaging options for this flow</td>
</tr>
<tr>
    <td><CopyableCode code="policies" /></td>
    <td><code>array</code></td>
    <td>The policies for this flow</td>
</tr>
<tr>
    <td><CopyableCode code="provisioningState" /></td>
    <td><code>string</code></td>
    <td>Provisioning state of the flow</td>
</tr>
<tr>
    <td><CopyableCode code="schema" /></td>
    <td><code>object</code></td>
    <td>The selected schema for this flow</td>
</tr>
<tr>
    <td><CopyableCode code="serviceBusQueueId" /></td>
    <td><code>string (arm-id)</code></td>
    <td>Service Bus Queue ID</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of the current flow</td>
</tr>
<tr>
    <td><CopyableCode code="storageAccountId" /></td>
    <td><code>string (arm-id)</code></td>
    <td>Storage Account ID</td>
</tr>
<tr>
    <td><CopyableCode code="storageAccountName" /></td>
    <td><code>string</code></td>
    <td>Storage Account</td>
</tr>
<tr>
    <td><CopyableCode code="storageContainerName" /></td>
    <td><code>string</code></td>
    <td>Storage Container Name</td>
</tr>
<tr>
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription ID of the pending flow.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-connectionName"><code>connectionName</code></a></td>
    <td></td>
    <td>Lists all pending flows for a connection.</td>
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
<tr id="parameter-connectionName">
    <td><CopyableCode code="connectionName" /></td>
    <td><code>string</code></td>
    <td>The name for the connection that is to be requested.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
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
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

Lists all pending flows for a connection.

```sql
SELECT
connection,
connectionId,
dataType,
flowId,
flowType,
keyVaultUri,
linkStatus,
linkedFlowId,
location,
messagingOptions,
policies,
provisioningState,
schema,
serviceBusQueueId,
status,
storageAccountId,
storageAccountName,
storageContainerName,
subscriptionId,
tags
FROM azure.data_transfer.pending_flows
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND connectionName = '{{ connectionName }}' -- required
;
```
</TabItem>
</Tabs>
