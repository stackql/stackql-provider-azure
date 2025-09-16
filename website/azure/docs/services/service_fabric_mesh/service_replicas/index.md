--- 
title: service_replicas
hide_title: false
hide_table_of_contents: false
keywords:
  - service_replicas
  - service_fabric_mesh
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

Creates, updates, deletes, gets or lists a <code>service_replicas</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>service_replicas</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.service_fabric_mesh.service_replicas" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
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
    <td><CopyableCode code="codePackages" /></td>
    <td><code>array</code></td>
    <td>Describes the set of code packages that forms the service. A code package describes the container and the properties for running it. All the code packages are started together on the same host and share the same context (network, process etc.).</td>
</tr>
<tr>
    <td><CopyableCode code="diagnostics" /></td>
    <td><code>object</code></td>
    <td>Reference to sinks in DiagnosticsDescription.</td>
</tr>
<tr>
    <td><CopyableCode code="networkRefs" /></td>
    <td><code>array</code></td>
    <td>The names of the private networks that this service needs to be part of.</td>
</tr>
<tr>
    <td><CopyableCode code="osType" /></td>
    <td><code>string</code></td>
    <td>The operation system required by the code in service.</td>
</tr>
<tr>
    <td><CopyableCode code="replicaName" /></td>
    <td><code>string</code></td>
    <td>Name of the replica.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

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
    <td><CopyableCode code="codePackages" /></td>
    <td><code>array</code></td>
    <td>Describes the set of code packages that forms the service. A code package describes the container and the properties for running it. All the code packages are started together on the same host and share the same context (network, process etc.).</td>
</tr>
<tr>
    <td><CopyableCode code="diagnostics" /></td>
    <td><code>object</code></td>
    <td>Reference to sinks in DiagnosticsDescription.</td>
</tr>
<tr>
    <td><CopyableCode code="networkRefs" /></td>
    <td><code>array</code></td>
    <td>The names of the private networks that this service needs to be part of.</td>
</tr>
<tr>
    <td><CopyableCode code="osType" /></td>
    <td><code>string</code></td>
    <td>The operation system required by the code in service.</td>
</tr>
<tr>
    <td><CopyableCode code="replicaName" /></td>
    <td><code>string</code></td>
    <td>Name of the replica.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-applicationResourceName"><code>applicationResourceName</code></a>, <a href="#parameter-serviceResourceName"><code>serviceResourceName</code></a>, <a href="#parameter-replicaName"><code>replicaName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Gets the information about the service replica with the given name. The information include the description and other properties of the service replica.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-applicationResourceName"><code>applicationResourceName</code></a>, <a href="#parameter-serviceResourceName"><code>serviceResourceName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Gets the information about all replicas of a given service of an application. The information includes the runtime properties of the replica instance.</td>
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
<tr id="parameter-applicationResourceName">
    <td><CopyableCode code="applicationResourceName" /></td>
    <td><code>string</code></td>
    <td>The identity of the application.</td>
</tr>
<tr id="parameter-replicaName">
    <td><CopyableCode code="replicaName" /></td>
    <td><code>string</code></td>
    <td>Service Fabric replica name.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Azure resource group name</td>
</tr>
<tr id="parameter-serviceResourceName">
    <td><CopyableCode code="serviceResourceName" /></td>
    <td><code>string</code></td>
    <td>The identity of the service.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The customer subscription identifier</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>The version of the API. This parameter is required and its value must be `2018-09-01-preview`.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Gets the information about the service replica with the given name. The information include the description and other properties of the service replica.

```sql
SELECT
codePackages,
diagnostics,
networkRefs,
osType,
replicaName
FROM azure.service_fabric_mesh.service_replicas
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND applicationResourceName = '{{ applicationResourceName }}' -- required
AND serviceResourceName = '{{ serviceResourceName }}' -- required
AND replicaName = '{{ replicaName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list">

Gets the information about all replicas of a given service of an application. The information includes the runtime properties of the replica instance.

```sql
SELECT
codePackages,
diagnostics,
networkRefs,
osType,
replicaName
FROM azure.service_fabric_mesh.service_replicas
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND applicationResourceName = '{{ applicationResourceName }}' -- required
AND serviceResourceName = '{{ serviceResourceName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>
