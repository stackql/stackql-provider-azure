--- 
title: transactions_by_invoices
hide_title: false
hide_table_of_contents: false
keywords:
  - transactions_by_invoices
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

Creates, updates, deletes, gets or lists a <code>transactions_by_invoices</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>transactions_by_invoices</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.transactions_by_invoices" /></td></tr>
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

The list of transactions.

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
    <td>A transaction.</td>
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
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-invoiceName"><code>invoiceName</code></a></td>
    <td><a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-orderBy"><code>orderBy</code></a>, <a href="#parameter-top"><code>top</code></a>, <a href="#parameter-skip"><code>skip</code></a>, <a href="#parameter-count"><code>count</code></a>, <a href="#parameter-search"><code>search</code></a></td>
    <td>Lists the transactions for an invoice. Transactions include purchases, refunds and Azure usage charges.</td>
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
<tr id="parameter-invoiceName">
    <td><CopyableCode code="invoiceName" /></td>
    <td><code>string</code></td>
    <td>The ID that uniquely identifies an invoice.</td>
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
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

Lists the transactions for an invoice. Transactions include purchases, refunds and Azure usage charges.

```sql
SELECT
properties,
tags
FROM azure.billing.transactions_by_invoices
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND invoiceName = '{{ invoiceName }}' -- required
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
