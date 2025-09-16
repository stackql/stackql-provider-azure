--- 
title: collection_partition_usages
hide_title: false
hide_table_of_contents: false
keywords:
  - collection_partition_usages
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

Creates, updates, deletes, gets or lists a <code>collection_partition_usages</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>collection_partition_usages</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cosmos_db.collection_partition_usages" /></td></tr>
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

The usages for the collection, per partition were retrieved successfully.

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
    <td><CopyableCode code="currentValue" /></td>
    <td><code>integer (int64)</code></td>
    <td>Current value for this metric</td>
</tr>
<tr>
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int64)</code></td>
    <td>Maximum value for this metric</td>
</tr>
<tr>
    <td><CopyableCode code="partitionId" /></td>
    <td><code>string</code></td>
    <td>The partition id (GUID identifier) of the usages.</td>
</tr>
<tr>
    <td><CopyableCode code="partitionKeyRangeId" /></td>
    <td><code>string</code></td>
    <td>The partition key range id (integer identifier) of the usages.</td>
</tr>
<tr>
    <td><CopyableCode code="quotaPeriod" /></td>
    <td><code>string</code></td>
    <td>The quota period used to summarize the usage values.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-databaseRid"><code>databaseRid</code></a>, <a href="#parameter-collectionRid"><code>collectionRid</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Retrieves the usages (most recent storage data) for the given collection, split by partition.</td>
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
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>An OData filter expression that describes a subset of usages to return. The supported parameter is name.value (name of the metric, can have an or of multiple names).</td>
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

Retrieves the usages (most recent storage data) for the given collection, split by partition.

```sql
SELECT
name,
currentValue,
limit,
partitionId,
partitionKeyRangeId,
quotaPeriod,
unit
FROM azure.cosmos_db.collection_partition_usages
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND databaseRid = '{{ databaseRid }}' -- required
AND collectionRid = '{{ collectionRid }}' -- required
AND $filter = '{{ $filter }}'
;
```
</TabItem>
</Tabs>
