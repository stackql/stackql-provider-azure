--- 
title: pending_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - pending_connections
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

Creates, updates, deletes, gets or lists a <code>pending_connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>pending_connections</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_transfer.pending_connections" /></td></tr>
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

Listed all pending connections.

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
    <td><CopyableCode code="approver" /></td>
    <td><code>string</code></td>
    <td>Approver of this connection request</td>
</tr>
<tr>
    <td><CopyableCode code="dateSubmitted" /></td>
    <td><code>string (date-time)</code></td>
    <td>The timestamp that this connection request was submitted at</td>
</tr>
<tr>
    <td><CopyableCode code="direction" /></td>
    <td><code>string</code></td>
    <td>Direction of data movement</td>
</tr>
<tr>
    <td><CopyableCode code="flowTypes" /></td>
    <td><code>array</code></td>
    <td>The flow types being requested for this connection</td>
</tr>
<tr>
    <td><CopyableCode code="justification" /></td>
    <td><code>string</code></td>
    <td>Justification for the connection request</td>
</tr>
<tr>
    <td><CopyableCode code="linkStatus" /></td>
    <td><code>string</code></td>
    <td>Link status of the current connection</td>
</tr>
<tr>
    <td><CopyableCode code="linkedConnectionId" /></td>
    <td><code>string</code></td>
    <td>Resource ID of the linked connection</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="pin" /></td>
    <td><code>string</code></td>
    <td>PIN to link requests together</td>
</tr>
<tr>
    <td><CopyableCode code="pipeline" /></td>
    <td><code>string</code></td>
    <td>Pipeline to use to transfer data</td>
</tr>
<tr>
    <td><CopyableCode code="policies" /></td>
    <td><code>array</code></td>
    <td>The policies for this connection</td>
</tr>
<tr>
    <td><CopyableCode code="primaryContact" /></td>
    <td><code>string</code></td>
    <td>The primary contact for this connection request</td>
</tr>
<tr>
    <td><CopyableCode code="provisioningState" /></td>
    <td><code>string</code></td>
    <td>Provisioning state of the connection</td>
</tr>
<tr>
    <td><CopyableCode code="remoteSubscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription ID to link cloud subscriptions together</td>
</tr>
<tr>
    <td><CopyableCode code="requirementId" /></td>
    <td><code>string</code></td>
    <td>Requirement ID of the connection</td>
</tr>
<tr>
    <td><CopyableCode code="schemas" /></td>
    <td><code>array</code></td>
    <td>The schemas for this connection</td>
</tr>
<tr>
    <td><CopyableCode code="secondaryContacts" /></td>
    <td><code>array</code></td>
    <td>The secondary contacts for this connection request</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of the connection</td>
</tr>
<tr>
    <td><CopyableCode code="statusReason" /></td>
    <td><code>string</code></td>
    <td>Reason for status</td>
</tr>
<tr>
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription ID of the pending connection.</td>
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
    <td>Lists all pending connections for a connection.</td>
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

Lists all pending connections for a connection.

```sql
SELECT
approver,
dateSubmitted,
direction,
flowTypes,
justification,
linkStatus,
linkedConnectionId,
location,
pin,
pipeline,
policies,
primaryContact,
provisioningState,
remoteSubscriptionId,
requirementId,
schemas,
secondaryContacts,
status,
statusReason,
subscriptionId,
tags
FROM azure.data_transfer.pending_connections
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND connectionName = '{{ connectionName }}' -- required
;
```
</TabItem>
</Tabs>
