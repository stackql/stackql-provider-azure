--- 
title: transactions_transaction_summary_by_invoices
hide_title: false
hide_table_of_contents: false
keywords:
  - transactions_transaction_summary_by_invoices
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

Creates, updates, deletes, gets or lists a <code>transactions_transaction_summary_by_invoices</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>transactions_transaction_summary_by_invoices</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.transactions_transaction_summary_by_invoices" /></td></tr>
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

A transaction summary.

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
    <td><CopyableCode code="azureCreditApplied" /></td>
    <td><code>number</code></td>
    <td>The total amount of any Azure credits applied.</td>
</tr>
<tr>
    <td><CopyableCode code="billingCurrency" /></td>
    <td><code>string</code></td>
    <td>The ISO 4217 code for the currency in which the transactions are billed.</td>
</tr>
<tr>
    <td><CopyableCode code="consumptionCommitmentDecremented" /></td>
    <td><code>number</code></td>
    <td>The total Microsoft Azure Consumption Commitment (MACC) decrement through the invoice.</td>
</tr>
<tr>
    <td><CopyableCode code="subTotal" /></td>
    <td><code>number</code></td>
    <td>The total pre-tax charged amount.</td>
</tr>
<tr>
    <td><CopyableCode code="tax" /></td>
    <td><code>number</code></td>
    <td>The total tax amount applied.</td>
</tr>
<tr>
    <td><CopyableCode code="total" /></td>
    <td><code>number</code></td>
    <td>The total charges.</td>
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
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-invoiceName"><code>invoiceName</code></a></td>
    <td><a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-search"><code>search</code></a></td>
    <td>Gets the transaction summary for an invoice. Transactions include purchases, refunds and Azure usage charges.</td>
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
<tr id="parameter-filter">
    <td><CopyableCode code="filter" /></td>
    <td><code>string</code></td>
    <td>The filter query option allows clients to filter the line items that are aggregated to create the line item summary.</td>
</tr>
<tr id="parameter-search">
    <td><CopyableCode code="search" /></td>
    <td><code>string</code></td>
    <td>The search query option allows clients to filter the line items that are aggregated to create the line item summary.</td>
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

Gets the transaction summary for an invoice. Transactions include purchases, refunds and Azure usage charges.

```sql
SELECT
azureCreditApplied,
billingCurrency,
consumptionCommitmentDecremented,
subTotal,
tax,
total
FROM azure.billing.transactions_transaction_summary_by_invoices
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND invoiceName = '{{ invoiceName }}' -- required
AND filter = '{{ filter }}'
AND search = '{{ search }}'
;
```
</TabItem>
</Tabs>
