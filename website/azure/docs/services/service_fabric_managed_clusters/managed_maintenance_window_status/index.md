--- 
title: managed_maintenance_window_status
hide_title: false
hide_table_of_contents: false
keywords:
  - managed_maintenance_window_status
  - service_fabric_managed_clusters
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

Creates, updates, deletes, gets or lists a <code>managed_maintenance_window_status</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>managed_maintenance_window_status</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.service_fabric_managed_clusters.managed_maintenance_window_status" /></td></tr>
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

The operation completed successfully.

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
    <td><CopyableCode code="canApplyUpdates" /></td>
    <td><code>boolean</code></td>
    <td>If updates can be applied.</td>
</tr>
<tr>
    <td><CopyableCode code="isRegionReady" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if the region is ready to configure maintenance windows.</td>
</tr>
<tr>
    <td><CopyableCode code="isWindowActive" /></td>
    <td><code>boolean</code></td>
    <td>If maintenance window is active.</td>
</tr>
<tr>
    <td><CopyableCode code="isWindowEnabled" /></td>
    <td><code>boolean</code></td>
    <td>If maintenance window is enabled on this cluster.</td>
</tr>
<tr>
    <td><CopyableCode code="lastWindowEndTimeUTC" /></td>
    <td><code>string (date-time)</code></td>
    <td>Last window end time in UTC.</td>
</tr>
<tr>
    <td><CopyableCode code="lastWindowStartTimeUTC" /></td>
    <td><code>string (date-time)</code></td>
    <td>Last window start time in UTC.</td>
</tr>
<tr>
    <td><CopyableCode code="lastWindowStatusUpdateAtUTC" /></td>
    <td><code>string (date-time)</code></td>
    <td>Last window update time in UTC.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Action to get Maintenance Window Status of the Service Fabric Managed Clusters.</td>
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
<tr id="parameter-clusterName">
    <td><CopyableCode code="clusterName" /></td>
    <td><code>string</code></td>
    <td>The name of the cluster resource.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The customer subscription identifier.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>The version of the Service Fabric resource provider API. This is a required parameter and it's value must be "2024-06-01-preview" for this specification.</td>
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

Action to get Maintenance Window Status of the Service Fabric Managed Clusters.

```sql
SELECT
canApplyUpdates,
isRegionReady,
isWindowActive,
isWindowEnabled,
lastWindowEndTimeUTC,
lastWindowStartTimeUTC,
lastWindowStatusUpdateAtUTC
FROM azure.service_fabric_managed_clusters.managed_maintenance_window_status
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND clusterName = '{{ clusterName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>
