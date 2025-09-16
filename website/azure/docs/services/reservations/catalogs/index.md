--- 
title: catalogs
hide_title: false
hide_table_of_contents: false
keywords:
  - catalogs
  - reservations
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

Creates, updates, deletes, gets or lists a <code>catalogs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>catalogs</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.reservations.catalogs" /></td></tr>
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

OK. The request has succeeded.

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
    <td><code>string</code></td>
    <td>The name of sku</td>
</tr>
<tr>
    <td><CopyableCode code="billingPlans" /></td>
    <td><code>object</code></td>
    <td>The billing plan options available for this sku.</td>
</tr>
<tr>
    <td><CopyableCode code="capabilities" /></td>
    <td><code>array</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="locations" /></td>
    <td><code>array</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="msrp" /></td>
    <td><code>object</code></td>
    <td>Pricing information about the sku</td>
</tr>
<tr>
    <td><CopyableCode code="resourceType" /></td>
    <td><code>string</code></td>
    <td>The type of resource the sku applies to.</td>
</tr>
<tr>
    <td><CopyableCode code="restrictions" /></td>
    <td><code>array</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="size" /></td>
    <td><code>string</code></td>
    <td>The size of this sku</td>
</tr>
<tr>
    <td><CopyableCode code="skuProperties" /></td>
    <td><code>array</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="terms" /></td>
    <td><code>array</code></td>
    <td>Available reservation terms for this resource</td>
</tr>
<tr>
    <td><CopyableCode code="tier" /></td>
    <td><code>string</code></td>
    <td>The tier of this sku</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-reservedResourceType"><code>reservedResourceType</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-publisherId"><code>publisherId</code></a>, <a href="#parameter-offerId"><code>offerId</code></a>, <a href="#parameter-planId"><code>planId</code></a>, <a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$skip"><code>$skip</code></a>, <a href="#parameter-$take"><code>$take</code></a></td>
    <td></td>
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
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Id of the subscription</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>May be used to filter by Catalog properties. The filter supports 'eq', 'or', and 'and'.</td>
</tr>
<tr id="parameter-$skip">
    <td><CopyableCode code="$skip" /></td>
    <td><code>number</code></td>
    <td>The number of reservations to skip from the list before returning results</td>
</tr>
<tr id="parameter-$take">
    <td><CopyableCode code="$take" /></td>
    <td><code>number</code></td>
    <td>To number of reservations to return</td>
</tr>
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Filters the skus based on the location specified in this parameter. This can be an Azure region or global</td>
</tr>
<tr id="parameter-offerId">
    <td><CopyableCode code="offerId" /></td>
    <td><code>string</code></td>
    <td>Offer id used to get the third party products</td>
</tr>
<tr id="parameter-planId">
    <td><CopyableCode code="planId" /></td>
    <td><code>string</code></td>
    <td>Plan id used to get the third party products</td>
</tr>
<tr id="parameter-publisherId">
    <td><CopyableCode code="publisherId" /></td>
    <td><code>string</code></td>
    <td>Publisher id used to get the third party products</td>
</tr>
<tr id="parameter-reservedResourceType">
    <td><CopyableCode code="reservedResourceType" /></td>
    <td><code>string</code></td>
    <td>The type of the resource for which the skus should be provided.</td>
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

OK. The request has succeeded.

```sql
SELECT
name,
billingPlans,
capabilities,
locations,
msrp,
resourceType,
restrictions,
size,
skuProperties,
terms,
tier
FROM azure.reservations.catalogs
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND reservedResourceType = '{{ reservedResourceType }}'
AND location = '{{ location }}'
AND publisherId = '{{ publisherId }}'
AND offerId = '{{ offerId }}'
AND planId = '{{ planId }}'
AND $filter = '{{ $filter }}'
AND $skip = '{{ $skip }}'
AND $take = '{{ $take }}'
;
```
</TabItem>
</Tabs>
