--- 
title: throughput_pool_accounts
hide_title: false
hide_table_of_contents: false
keywords:
  - throughput_pool_accounts
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

Creates, updates, deletes, gets or lists a <code>throughput_pool_accounts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>throughput_pool_accounts</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cosmos_db.throughput_pool_accounts" /></td></tr>
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

The Throughput Pool properties were retrieved successfully.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>An Azure Cosmos DB Global Database Account which is part of a Throughputpool.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>An Azure Cosmos DB Global Database Account which is part of a Throughputpool.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-throughputPoolName"><code>throughputPoolName</code></a>, <a href="#parameter-throughputPoolAccountName"><code>throughputPoolAccountName</code></a></td>
    <td></td>
    <td>Retrieves the properties of an existing Azure Cosmos DB Throughput Pool</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-throughputPoolName"><code>throughputPoolName</code></a></td>
    <td></td>
    <td>Lists all the Azure Cosmos DB accounts available under the subscription.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-throughputPoolName"><code>throughputPoolName</code></a>, <a href="#parameter-throughputPoolAccountName"><code>throughputPoolAccountName</code></a></td>
    <td></td>
    <td>Creates or updates an Azure Cosmos DB ThroughputPool account. The "Update" method is preferred when performing updates on an account.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-throughputPoolName"><code>throughputPoolName</code></a>, <a href="#parameter-throughputPoolAccountName"><code>throughputPoolAccountName</code></a></td>
    <td></td>
    <td>Removes an existing Azure Cosmos DB database account from a throughput pool.</td>
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
<tr id="parameter-throughputPoolAccountName">
    <td><CopyableCode code="throughputPoolAccountName" /></td>
    <td><code>string</code></td>
    <td>Cosmos DB global database account in a Throughput Pool</td>
</tr>
<tr id="parameter-throughputPoolName">
    <td><CopyableCode code="throughputPoolName" /></td>
    <td><code>string</code></td>
    <td>Cosmos DB Throughput Pool name.</td>
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

Retrieves the properties of an existing Azure Cosmos DB Throughput Pool

```sql
SELECT
properties
FROM azure.cosmos_db.throughput_pool_accounts
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND throughputPoolName = '{{ throughputPoolName }}' -- required
AND throughputPoolAccountName = '{{ throughputPoolAccountName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists all the Azure Cosmos DB accounts available under the subscription.

```sql
SELECT
properties
FROM azure.cosmos_db.throughput_pool_accounts
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND throughputPoolName = '{{ throughputPoolName }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

Creates or updates an Azure Cosmos DB ThroughputPool account. The "Update" method is preferred when performing updates on an account.

```sql
INSERT INTO azure.cosmos_db.throughput_pool_accounts (
data__properties,
subscriptionId,
resourceGroupName,
throughputPoolName,
throughputPoolAccountName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ throughputPoolName }}',
'{{ throughputPoolAccountName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: throughput_pool_accounts
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the throughput_pool_accounts resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the throughput_pool_accounts resource.
    - name: throughputPoolName
      value: string
      description: Required parameter for the throughput_pool_accounts resource.
    - name: throughputPoolAccountName
      value: string
      description: Required parameter for the throughput_pool_accounts resource.
    - name: properties
      value: object
      description: |
        An Azure Cosmos DB Global Database Account which is part of a Throughputpool.
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

Removes an existing Azure Cosmos DB database account from a throughput pool.

```sql
DELETE FROM azure.cosmos_db.throughput_pool_accounts
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND throughputPoolName = '{{ throughputPoolName }}' --required
AND throughputPoolAccountName = '{{ throughputPoolAccountName }}' --required
;
```
</TabItem>
</Tabs>
