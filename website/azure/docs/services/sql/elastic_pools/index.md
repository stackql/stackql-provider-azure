--- 
title: elastic_pools
hide_title: false
hide_table_of_contents: false
keywords:
  - elastic_pools
  - sql
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

Creates, updates, deletes, gets or lists an <code>elastic_pools</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>elastic_pools</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.elastic_pools" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_server', value: 'list_by_server' }
    ]}
>
<TabItem value="get">

Succeeded

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
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of elastic pool. This is metadata used for the Azure portal experience.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Resource properties.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The elastic pool SKU.<br /> <br /> The list of SKUs may vary by region and support offer. To determine the SKUs (including the SKU name, tier/edition, family, and capacity) that are available to your subscription in an Azure region, use the `Capabilities_ListByLocation` REST API or the following command:<br /> <br /> ```azurecli<br /> az sql elastic-pool list-editions -l &lt;location&gt; -o table<br /> ````<br /> </td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_server">

Succeeded

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
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of elastic pool. This is metadata used for the Azure portal experience.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Resource properties.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The elastic pool SKU.
 
 The list of SKUs may vary by region and support offer. To determine the SKUs (including the SKU name, tier/edition, family, and capacity) that are available to your subscription in an Azure region, use the `Capabilities_ListByLocation` REST API or the following command:
 
 ```azurecli
 az sql elastic-pool list-editions -l <location> -o table
 ````
 </td>
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
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-elasticPoolName"><code>elasticPoolName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets an elastic pool.</td>
</tr>
<tr>
    <td><a href="#list_by_server"><CopyableCode code="list_by_server" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$skip"><code>$skip</code></a></td>
    <td>Gets all elastic pools in a server.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-elasticPoolName"><code>elasticPoolName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-data__location"><code>data__location</code></a></td>
    <td></td>
    <td>Creates or updates an elastic pool.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-elasticPoolName"><code>elasticPoolName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Updates an elastic pool.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-elasticPoolName"><code>elasticPoolName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes an elastic pool.</td>
</tr>
<tr>
    <td><a href="#failover"><CopyableCode code="failover" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serverName"><code>serverName</code></a>, <a href="#parameter-elasticPoolName"><code>elasticPoolName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Failovers an elastic pool.</td>
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
<tr id="parameter-elasticPoolName">
    <td><CopyableCode code="elasticPoolName" /></td>
    <td><code>string</code></td>
    <td>The name of the elastic pool to failover.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.</td>
</tr>
<tr id="parameter-serverName">
    <td><CopyableCode code="serverName" /></td>
    <td><code>string</code></td>
    <td>The name of the server.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription ID that identifies an Azure subscription.</td>
</tr>
<tr id="parameter-$skip">
    <td><CopyableCode code="$skip" /></td>
    <td><code>integer (int64)</code></td>
    <td>The number of elements in the collection to skip.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_server', value: 'list_by_server' }
    ]}
>
<TabItem value="get">

Gets an elastic pool.

```sql
SELECT
kind,
location,
properties,
sku,
tags
FROM azure.sql.elastic_pools
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serverName = '{{ serverName }}' -- required
AND elasticPoolName = '{{ elasticPoolName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_server">

Gets all elastic pools in a server.

```sql
SELECT
kind,
location,
properties,
sku,
tags
FROM azure.sql.elastic_pools
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serverName = '{{ serverName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $skip = '{{ $skip }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_or_update"
    values={[
        { label: 'create_or_update', value: 'create_or_update' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_or_update">

Creates or updates an elastic pool.

```sql
INSERT INTO azure.sql.elastic_pools (
data__location,
data__tags,
data__sku,
data__properties,
resourceGroupName,
serverName,
elasticPoolName,
subscriptionId
)
SELECT 
'{{ location }}' /* required */,
'{{ tags }}',
'{{ sku }}',
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ serverName }}',
'{{ elasticPoolName }}',
'{{ subscriptionId }}'
RETURNING
kind,
location,
properties,
sku,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: elastic_pools
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the elastic_pools resource.
    - name: serverName
      value: string
      description: Required parameter for the elastic_pools resource.
    - name: elasticPoolName
      value: string
      description: Required parameter for the elastic_pools resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the elastic_pools resource.
    - name: location
      value: string
      description: |
        Resource location.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: sku
      value: object
      description: |
        The elastic pool SKU.
        The list of SKUs may vary by region and support offer. To determine the SKUs (including the SKU name, tier/edition, family, and capacity) that are available to your subscription in an Azure region, use the `Capabilities_ListByLocation` REST API or the following command:
        ```azurecli
        az sql elastic-pool list-editions -l <location> -o table
        ````
    - name: properties
      value: object
      description: |
        Resource properties.
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

Updates an elastic pool.

```sql
UPDATE azure.sql.elastic_pools
SET 
data__sku = '{{ sku }}',
data__properties = '{{ properties }}',
data__tags = '{{ tags }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND serverName = '{{ serverName }}' --required
AND elasticPoolName = '{{ elasticPoolName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
RETURNING
kind,
location,
properties,
sku,
tags;
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

Deletes an elastic pool.

```sql
DELETE FROM azure.sql.elastic_pools
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND serverName = '{{ serverName }}' --required
AND elasticPoolName = '{{ elasticPoolName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="failover"
    values={[
        { label: 'failover', value: 'failover' }
    ]}
>
<TabItem value="failover">

Failovers an elastic pool.

```sql
EXEC azure.sql.elastic_pools.failover 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@serverName='{{ serverName }}' --required, 
@elasticPoolName='{{ elasticPoolName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
