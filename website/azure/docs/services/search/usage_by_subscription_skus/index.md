--- 
title: usage_by_subscription_skus
hide_title: false
hide_table_of_contents: false
keywords:
  - usage_by_subscription_skus
  - search
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

Creates, updates, deletes, gets or lists a <code>usage_by_subscription_skus</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>usage_by_subscription_skus</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.search.usage_by_subscription_skus" /></td></tr>
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

The operation succeeded. The response contains the quota usage of a search service sku for the given subscription.

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
    <td>The resource ID of the quota usage SKU endpoint for Microsoft.Search provider.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>object</code></td>
    <td>The name of the SKU supported by Azure AI Search.</td>
</tr>
<tr>
    <td><CopyableCode code="currentValue" /></td>
    <td><code>integer (int32)</code></td>
    <td>The currently used up value for the particular search SKU.</td>
</tr>
<tr>
    <td><CopyableCode code="limit" /></td>
    <td><code>integer (int32)</code></td>
    <td>The quota limit for the particular search SKU.</td>
</tr>
<tr>
    <td><CopyableCode code="unit" /></td>
    <td><code>string</code></td>
    <td>The unit of measurement for the search SKU.</td>
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
    <td><a href="#parameter-location"><code>location</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-skuName"><code>skuName</code></a></td>
    <td><a href="#parameter-x-ms-client-request-id"><code>x-ms-client-request-id</code></a></td>
    <td>Gets the quota usage for a search sku in the given subscription.</td>
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
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The unique location name for a Microsoft Azure geographic region.</td>
</tr>
<tr id="parameter-skuName">
    <td><CopyableCode code="skuName" /></td>
    <td><code>string</code></td>
    <td>The unique SKU name that identifies a billable tier.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The unique identifier for a Microsoft Azure subscription. You can obtain this value from the Azure Resource Manager API or the portal.</td>
</tr>
<tr id="parameter-x-ms-client-request-id">
    <td><CopyableCode code="x-ms-client-request-id" /></td>
    <td><code>string (uuid)</code></td>
    <td>A client-generated GUID value that identifies this request. If specified, this will be included in response information as a way to track the request.</td>
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

Gets the quota usage for a search sku in the given subscription.

```sql
SELECT
id,
name,
currentValue,
limit,
unit
FROM azure.search.usage_by_subscription_skus
WHERE location = '{{ location }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND skuName = '{{ skuName }}' -- required
AND x-ms-client-request-id = '{{ x-ms-client-request-id }}'
;
```
</TabItem>
</Tabs>
