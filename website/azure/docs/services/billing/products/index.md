--- 
title: products
hide_title: false
hide_table_of_contents: false
keywords:
  - products
  - billing
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

Creates, updates, deletes, gets or lists a <code>products</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>products</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.products" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_by_billing_profile"
    values={[
        { label: 'list_by_billing_profile', value: 'list_by_billing_profile' },
        { label: 'list_by_customer', value: 'list_by_customer' },
        { label: 'get', value: 'get' },
        { label: 'list_by_billing_account', value: 'list_by_billing_account' }
    ]}
>
<TabItem value="list_by_billing_profile">

The list of products. It contains a list of available product summaries in reverse chronological order by purchase date.

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
    <td>A product.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_customer">

The list of products. It contains a list of available product summaries in reverse chronological order by purchase date.

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
    <td>A product.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get">

A product.

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
    <td>A product.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_billing_account">

The list of products. It contains a list of available product summaries in reverse chronological order by purchase date.

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
    <td>A product.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /</td>
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
    <td><a href="#list_by_billing_profile"><CopyableCode code="list_by_billing_profile" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a></td>
    <td><a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-orderBy"><code>orderBy</code></a>, <a href="#parameter-top"><code>top</code></a>, <a href="#parameter-skip"><code>skip</code></a>, <a href="#parameter-count"><code>count</code></a>, <a href="#parameter-search"><code>search</code></a></td>
    <td>Lists the products for a billing profile. These don't include products billed based on usage. The operation is supported for billing accounts with agreement type Microsoft Customer Agreement or Microsoft Partner Agreement.</td>
</tr>
<tr>
    <td><a href="#list_by_customer"><CopyableCode code="list_by_customer" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-customerName"><code>customerName</code></a></td>
    <td><a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-orderBy"><code>orderBy</code></a>, <a href="#parameter-top"><code>top</code></a>, <a href="#parameter-skip"><code>skip</code></a>, <a href="#parameter-count"><code>count</code></a>, <a href="#parameter-search"><code>search</code></a></td>
    <td>Lists the products for a customer. These don't include products billed based on usage.The operation is supported only for billing accounts with agreement type Microsoft Partner Agreement.</td>
</tr>
<tr>
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-productName"><code>productName</code></a></td>
    <td></td>
    <td>Gets a product by ID. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#list_by_billing_account"><CopyableCode code="list_by_billing_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a></td>
    <td><a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-orderBy"><code>orderBy</code></a>, <a href="#parameter-top"><code>top</code></a>, <a href="#parameter-skip"><code>skip</code></a>, <a href="#parameter-count"><code>count</code></a>, <a href="#parameter-search"><code>search</code></a></td>
    <td>Lists the products for a billing account. These don't include products billed based on usage. The operation is supported for billing accounts with agreement type Microsoft Customer Agreement or Microsoft Partner Agreement.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-productName"><code>productName</code></a></td>
    <td></td>
    <td>Updates the properties of a Product. Currently, auto renew can be updated. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#move"><CopyableCode code="move" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-productName"><code>productName</code></a>, <a href="#parameter-destinationInvoiceSectionId"><code>destinationInvoiceSectionId</code></a></td>
    <td></td>
    <td>Moves a product's charges to a new invoice section. The new invoice section must belong to the same billing profile as the existing invoice section. This operation is supported only for products that are purchased with a recurring charge and for billing accounts with agreement type Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#validate_move_eligibility"><CopyableCode code="validate_move_eligibility" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-productName"><code>productName</code></a>, <a href="#parameter-destinationInvoiceSectionId"><code>destinationInvoiceSectionId</code></a></td>
    <td></td>
    <td>Validates if a product's charges can be moved to a new invoice section. This operation is supported only for products that are purchased with a recurring charge and for billing accounts with agreement type Microsoft Customer Agreement.</td>
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
<tr id="parameter-billingAccountName">
    <td><CopyableCode code="billingAccountName" /></td>
    <td><code>string</code></td>
    <td>The ID that uniquely identifies a billing account.</td>
</tr>
<tr id="parameter-billingProfileName">
    <td><CopyableCode code="billingProfileName" /></td>
    <td><code>string</code></td>
    <td>The ID that uniquely identifies a billing profile.</td>
</tr>
<tr id="parameter-customerName">
    <td><CopyableCode code="customerName" /></td>
    <td><code>string</code></td>
    <td>The ID that uniquely identifies a customer.</td>
</tr>
<tr id="parameter-productName">
    <td><CopyableCode code="productName" /></td>
    <td><code>string</code></td>
    <td>The ID that uniquely identifies a product.</td>
</tr>
<tr id="parameter-count">
    <td><CopyableCode code="count" /></td>
    <td><code>boolean</code></td>
    <td>The count query option allows clients to request a count of the matching resources included with the resources in the response.</td>
</tr>
<tr id="parameter-filter">
    <td><CopyableCode code="filter" /></td>
    <td><code>string</code></td>
    <td>The filter query option allows clients to filter a collection of resources that are addressed by a request URL.</td>
</tr>
<tr id="parameter-orderBy">
    <td><CopyableCode code="orderBy" /></td>
    <td><code>string</code></td>
    <td>The orderby query option allows clients to request resources in a particular order.</td>
</tr>
<tr id="parameter-search">
    <td><CopyableCode code="search" /></td>
    <td><code>string</code></td>
    <td>The search query option allows clients to request items within a collection matching a free-text search expression. search is only supported for string fields.</td>
</tr>
<tr id="parameter-skip">
    <td><CopyableCode code="skip" /></td>
    <td><code>integer (int64)</code></td>
    <td>The skip query option requests the number of items in the queried collection that are to be skipped and not included in the result.</td>
</tr>
<tr id="parameter-top">
    <td><CopyableCode code="top" /></td>
    <td><code>integer (int64)</code></td>
    <td>The top query option requests the number of items in the queried collection to be included in the result. The maximum supported value for top is 50.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_by_billing_profile"
    values={[
        { label: 'list_by_billing_profile', value: 'list_by_billing_profile' },
        { label: 'list_by_customer', value: 'list_by_customer' },
        { label: 'get', value: 'get' },
        { label: 'list_by_billing_account', value: 'list_by_billing_account' }
    ]}
>
<TabItem value="list_by_billing_profile">

Lists the products for a billing profile. These don't include products billed based on usage. The operation is supported for billing accounts with agreement type Microsoft Customer Agreement or Microsoft Partner Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.products
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND billingProfileName = '{{ billingProfileName }}' -- required
AND filter = '{{ filter }}'
AND orderBy = '{{ orderBy }}'
AND top = '{{ top }}'
AND skip = '{{ skip }}'
AND count = '{{ count }}'
AND search = '{{ search }}'
;
```
</TabItem>
<TabItem value="list_by_customer">

Lists the products for a customer. These don't include products billed based on usage.The operation is supported only for billing accounts with agreement type Microsoft Partner Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.products
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND customerName = '{{ customerName }}' -- required
AND filter = '{{ filter }}'
AND orderBy = '{{ orderBy }}'
AND top = '{{ top }}'
AND skip = '{{ skip }}'
AND count = '{{ count }}'
AND search = '{{ search }}'
;
```
</TabItem>
<TabItem value="get">

Gets a product by ID. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.products
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND productName = '{{ productName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_billing_account">

Lists the products for a billing account. These don't include products billed based on usage. The operation is supported for billing accounts with agreement type Microsoft Customer Agreement or Microsoft Partner Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.products
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND filter = '{{ filter }}'
AND orderBy = '{{ orderBy }}'
AND top = '{{ top }}'
AND skip = '{{ skip }}'
AND count = '{{ count }}'
AND search = '{{ search }}'
;
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

Updates the properties of a Product. Currently, auto renew can be updated. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement.

```sql
UPDATE azure.billing.products
SET 
data__tags = '{{ tags }}',
data__properties = '{{ properties }}'
WHERE 
billingAccountName = '{{ billingAccountName }}' --required
AND productName = '{{ productName }}' --required
RETURNING
properties,
tags;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="move"
    values={[
        { label: 'move', value: 'move' },
        { label: 'validate_move_eligibility', value: 'validate_move_eligibility' }
    ]}
>
<TabItem value="move">

Moves a product's charges to a new invoice section. The new invoice section must belong to the same billing profile as the existing invoice section. This operation is supported only for products that are purchased with a recurring charge and for billing accounts with agreement type Microsoft Customer Agreement.

```sql
EXEC azure.billing.products.move 
@billingAccountName='{{ billingAccountName }}' --required, 
@productName='{{ productName }}' --required 
@@json=
'{
"destinationInvoiceSectionId": "{{ destinationInvoiceSectionId }}"
}'
;
```
</TabItem>
<TabItem value="validate_move_eligibility">

Validates if a product's charges can be moved to a new invoice section. This operation is supported only for products that are purchased with a recurring charge and for billing accounts with agreement type Microsoft Customer Agreement.

```sql
EXEC azure.billing.products.validate_move_eligibility 
@billingAccountName='{{ billingAccountName }}' --required, 
@productName='{{ productName }}' --required 
@@json=
'{
"destinationInvoiceSectionId": "{{ destinationInvoiceSectionId }}"
}'
;
```
</TabItem>
</Tabs>
