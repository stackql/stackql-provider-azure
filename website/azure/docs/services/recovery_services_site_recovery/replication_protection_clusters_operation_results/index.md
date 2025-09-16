--- 
title: replication_protection_clusters_operation_results
hide_title: false
hide_table_of_contents: false
keywords:
  - replication_protection_clusters_operation_results
  - recovery_services_site_recovery
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

Creates, updates, deletes, gets or lists a <code>replication_protection_clusters_operation_results</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>replication_protection_clusters_operation_results</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.recovery_services_site_recovery.replication_protection_clusters_operation_results" /></td></tr>
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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>The protection cluster Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the protection cluster.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The custom data.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The Type of the object.</td>
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
    <td><a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-fabricName"><code>fabricName</code></a>, <a href="#parameter-protectionContainerName"><code>protectionContainerName</code></a>, <a href="#parameter-replicationProtectionClusterName"><code>replicationProtectionClusterName</code></a>, <a href="#parameter-jobId"><code>jobId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Track the results of an asynchronous operation on the replication protection cluster.</td>
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
<tr id="parameter-fabricName">
    <td><CopyableCode code="fabricName" /></td>
    <td><code>string</code></td>
    <td>Fabric name.</td>
</tr>
<tr id="parameter-jobId">
    <td><CopyableCode code="jobId" /></td>
    <td><code>string</code></td>
    <td>job id to track.</td>
</tr>
<tr id="parameter-protectionContainerName">
    <td><CopyableCode code="protectionContainerName" /></td>
    <td><code>string</code></td>
    <td>Protection container name.</td>
</tr>
<tr id="parameter-replicationProtectionClusterName">
    <td><CopyableCode code="replicationProtectionClusterName" /></td>
    <td><code>string</code></td>
    <td>Replication protection cluster name.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group where the recovery services vault is present.</td>
</tr>
<tr id="parameter-resourceName">
    <td><CopyableCode code="resourceName" /></td>
    <td><code>string</code></td>
    <td>The name of the recovery services vault.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription Id.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>Client Api Version.</td>
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

Track the results of an asynchronous operation on the replication protection cluster.

```sql
SELECT
id,
name,
properties,
type
FROM azure.recovery_services_site_recovery.replication_protection_clusters_operation_results
WHERE resourceName = '{{ resourceName }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND fabricName = '{{ fabricName }}' -- required
AND protectionContainerName = '{{ protectionContainerName }}' -- required
AND replicationProtectionClusterName = '{{ replicationProtectionClusterName }}' -- required
AND jobId = '{{ jobId }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>
