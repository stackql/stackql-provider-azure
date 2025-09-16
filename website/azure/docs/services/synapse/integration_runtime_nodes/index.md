--- 
title: integration_runtime_nodes
hide_title: false
hide_table_of_contents: false
keywords:
  - integration_runtime_nodes
  - synapse
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

Creates, updates, deletes, gets or lists an <code>integration_runtime_nodes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>integration_runtime_nodes</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.synapse.integration_runtime_nodes" /></td></tr>
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

OK.

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
    <td><CopyableCode code="capabilities" /></td>
    <td><code>object</code></td>
    <td>The integration runtime capabilities dictionary</td>
</tr>
<tr>
    <td><CopyableCode code="concurrentJobsLimit" /></td>
    <td><code>integer (int32)</code></td>
    <td>Maximum concurrent jobs on the integration runtime node.</td>
</tr>
<tr>
    <td><CopyableCode code="expiryTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The time at which the integration runtime will expire in ISO8601 format.</td>
</tr>
<tr>
    <td><CopyableCode code="hostServiceUri" /></td>
    <td><code>string</code></td>
    <td>URI for the host machine of the integration runtime.</td>
</tr>
<tr>
    <td><CopyableCode code="isActiveDispatcher" /></td>
    <td><code>boolean</code></td>
    <td>Indicates whether this node is the active dispatcher for integration runtime requests.</td>
</tr>
<tr>
    <td><CopyableCode code="lastConnectTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The most recent time at which the integration runtime was connected in ISO8601 format.</td>
</tr>
<tr>
    <td><CopyableCode code="lastEndUpdateTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The last time for the integration runtime node update end.</td>
</tr>
<tr>
    <td><CopyableCode code="lastStartTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The time the node last started up.</td>
</tr>
<tr>
    <td><CopyableCode code="lastStartUpdateTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The last time for the integration runtime node update start.</td>
</tr>
<tr>
    <td><CopyableCode code="lastStopTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The integration runtime node last stop time.</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdateResult" /></td>
    <td><code>string</code></td>
    <td>The result of the last integration runtime node update.</td>
</tr>
<tr>
    <td><CopyableCode code="machineName" /></td>
    <td><code>string</code></td>
    <td>Machine name of the integration runtime node.</td>
</tr>
<tr>
    <td><CopyableCode code="maxConcurrentJobs" /></td>
    <td><code>integer (int32)</code></td>
    <td>The maximum concurrent jobs in this integration runtime.</td>
</tr>
<tr>
    <td><CopyableCode code="nodeName" /></td>
    <td><code>string</code></td>
    <td>Name of the integration runtime node.</td>
</tr>
<tr>
    <td><CopyableCode code="registerTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The time at which the integration runtime node was registered in ISO8601 format.</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>Status of the integration runtime node.</td>
</tr>
<tr>
    <td><CopyableCode code="version" /></td>
    <td><code>string</code></td>
    <td>Version of the integration runtime node.</td>
</tr>
<tr>
    <td><CopyableCode code="versionStatus" /></td>
    <td><code>string</code></td>
    <td>Status of the integration runtime node version.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-integrationRuntimeName"><code>integrationRuntimeName</code></a>, <a href="#parameter-nodeName"><code>nodeName</code></a></td>
    <td></td>
    <td>Get an integration runtime node</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-integrationRuntimeName"><code>integrationRuntimeName</code></a>, <a href="#parameter-nodeName"><code>nodeName</code></a></td>
    <td></td>
    <td>Create an integration runtime node</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-integrationRuntimeName"><code>integrationRuntimeName</code></a>, <a href="#parameter-nodeName"><code>nodeName</code></a></td>
    <td></td>
    <td>Delete an integration runtime node</td>
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
<tr id="parameter-integrationRuntimeName">
    <td><CopyableCode code="integrationRuntimeName" /></td>
    <td><code>string</code></td>
    <td>Integration runtime name</td>
</tr>
<tr id="parameter-nodeName">
    <td><CopyableCode code="nodeName" /></td>
    <td><code>string</code></td>
    <td>Integration runtime node name</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-workspaceName">
    <td><CopyableCode code="workspaceName" /></td>
    <td><code>string</code></td>
    <td>The name of the workspace.</td>
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

Get an integration runtime node

```sql
SELECT
capabilities,
concurrentJobsLimit,
expiryTime,
hostServiceUri,
isActiveDispatcher,
lastConnectTime,
lastEndUpdateTime,
lastStartTime,
lastStartUpdateTime,
lastStopTime,
lastUpdateResult,
machineName,
maxConcurrentJobs,
nodeName,
registerTime,
status,
version,
versionStatus
FROM azure.synapse.integration_runtime_nodes
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND workspaceName = '{{ workspaceName }}' -- required
AND integrationRuntimeName = '{{ integrationRuntimeName }}' -- required
AND nodeName = '{{ nodeName }}' -- required
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

Create an integration runtime node

```sql
UPDATE azure.synapse.integration_runtime_nodes
SET 
data__concurrentJobsLimit = {{ concurrentJobsLimit }}
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND workspaceName = '{{ workspaceName }}' --required
AND integrationRuntimeName = '{{ integrationRuntimeName }}' --required
AND nodeName = '{{ nodeName }}' --required
RETURNING
capabilities,
concurrentJobsLimit,
expiryTime,
hostServiceUri,
isActiveDispatcher,
lastConnectTime,
lastEndUpdateTime,
lastStartTime,
lastStartUpdateTime,
lastStopTime,
lastUpdateResult,
machineName,
maxConcurrentJobs,
nodeName,
registerTime,
status,
version,
versionStatus;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete"
    values={[
        { label: 'delete', value: 'delete' }
    ]}
>
<TabItem value="delete">

Delete an integration runtime node

```sql
DELETE FROM azure.synapse.integration_runtime_nodes
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND workspaceName = '{{ workspaceName }}' --required
AND integrationRuntimeName = '{{ integrationRuntimeName }}' --required
AND nodeName = '{{ nodeName }}' --required
;
```
</TabItem>
</Tabs>
