--- 
title: services_skus
hide_title: false
hide_table_of_contents: false
keywords:
  - services_skus
  - data_migration
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

Creates, updates, deletes, gets or lists a <code>services_skus</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>services_skus</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_migration.services_skus" /></td></tr>
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

Got SKUs

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
    <td><CopyableCode code="capacity" /></td>
    <td><code>object</code></td>
    <td>A description of the scaling capacities of the SKU</td>
</tr>
<tr>
    <td><CopyableCode code="resourceType" /></td>
    <td><code>string</code></td>
    <td>The resource type, including the provider namespace</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>SKU name, tier, etc.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-groupName"><code>groupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The services resource is the top-level resource that represents the Database Migration Service (classic). The skus action returns the list of SKUs that a service resource can be updated to.</td>
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
<tr id="parameter-groupName">
    <td><CopyableCode code="groupName" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group</td>
</tr>
<tr id="parameter-serviceName">
    <td><CopyableCode code="serviceName" /></td>
    <td><code>string</code></td>
    <td>Name of the service</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription ID that identifies an Azure subscription.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>Version of the API</td>
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

The services resource is the top-level resource that represents the Database Migration Service (classic). The skus action returns the list of SKUs that a service resource can be updated to.

```sql
SELECT
capacity,
resourceType,
sku
FROM azure.data_migration.services_skus
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND groupName = '{{ groupName }}' -- required
AND serviceName = '{{ serviceName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>
