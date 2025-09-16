--- 
title: collection_partition_metrics
hide_title: false
hide_table_of_contents: false
keywords:
  - collection_partition_metrics
  - cosmos_db
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

Creates, updates, deletes, gets or lists a <code>collection_partition_metrics</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>collection_partition_metrics</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cosmos_db.collection_partition_metrics" /></td></tr>
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

The partition-level metrics for the collection were retrieved successfully.

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
    <td><CopyableCode code="name" /></td>
    <td><code>object</code></td>
    <td>The name information for the metric.</td>
</tr>
<tr>
    <td><CopyableCode code="endTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The end time for the metric (ISO-8601 format).</td>
</tr>
<tr>
    <td><CopyableCode code="metricValues" /></td>
    <td><code>array</code></td>
    <td>The metric values for the specified time window and timestep.</td>
</tr>
<tr>
    <td><CopyableCode code="partitionId" /></td>
    <td><code>string</code></td>
    <td>The partition id (GUID identifier) of the metric values.</td>
</tr>
<tr>
    <td><CopyableCode code="partitionKeyRangeId" /></td>
    <td><code>string</code></td>
    <td>The partition key range id (integer identifier) of the metric values.</td>
</tr>
<tr>
    <td><CopyableCode code="startTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>The start time for the metric (ISO-8601 format).</td>
</tr>
<tr>
    <td><CopyableCode code="timeGrain" /></td>
    <td><code>string</code></td>
    <td>The time grain to be used to summarize the metric values.</td>
</tr>
<tr>
    <td><CopyableCode code="unit" /></td>
    <td><code>string</code></td>
    <td>The unit of the metric.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-databaseRid"><code>databaseRid</code></a>, <a href="#parameter-collectionRid"><code>collectionRid</code></a>, <a href="#parameter-$filter"><code>$filter</code></a></td>
    <td></td>
    <td>Retrieves the metrics determined by the given filter for the given collection, split by partition.</td>
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
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>An OData filter expression that describes a subset of metrics to return. The parameters that can be filtered are name.value (name of the metric, can have an or of multiple names), startTime, endTime, and timeGrain. The supported operator is eq.</td>
</tr>
<tr id="parameter-accountName">
    <td><CopyableCode code="accountName" /></td>
    <td><code>string</code></td>
    <td>Cosmos DB database account name.</td>
</tr>
<tr id="parameter-collectionRid">
    <td><CopyableCode code="collectionRid" /></td>
    <td><code>string</code></td>
    <td>Cosmos DB collection rid.</td>
</tr>
<tr id="parameter-databaseRid">
    <td><CopyableCode code="databaseRid" /></td>
    <td><code>string</code></td>
    <td>Cosmos DB database rid.</td>
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

Retrieves the metrics determined by the given filter for the given collection, split by partition.

```sql
SELECT
name,
endTime,
metricValues,
partitionId,
partitionKeyRangeId,
startTime,
timeGrain,
unit
FROM azure.cosmos_db.collection_partition_metrics
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND databaseRid = '{{ databaseRid }}' -- required
AND collectionRid = '{{ collectionRid }}' -- required
AND $filter = '{{ $filter }}' -- required
;
```
</TabItem>
</Tabs>
