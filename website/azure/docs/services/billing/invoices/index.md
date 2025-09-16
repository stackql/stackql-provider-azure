--- 
title: invoices
hide_title: false
hide_table_of_contents: false
keywords:
  - invoices
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

Creates, updates, deletes, gets or lists an <code>invoices</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>invoices</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.invoices" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_by_billing_profile"
    values={[
        { label: 'list_by_billing_profile', value: 'list_by_billing_profile' },
        { label: 'get_by_billing_account', value: 'get_by_billing_account' },
        { label: 'get_by_billing_subscription', value: 'get_by_billing_subscription' },
        { label: 'list_by_billing_account', value: 'list_by_billing_account' },
        { label: 'list_by_billing_subscription', value: 'list_by_billing_subscription' },
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="list_by_billing_profile">

The list of invoices.

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
    <td>An invoice.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_by_billing_account">

The list of invoices.

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
    <td>An invoice.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_by_billing_subscription">

An invoice.

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
    <td>An invoice.</td>
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

The list of invoices.

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
    <td>An invoice.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_billing_subscription">

The list of invoices.

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
    <td>An invoice.</td>
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

An invoice.

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
    <td>An invoice.</td>
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
    <td><a href="#parameter-periodStartDate"><code>periodStartDate</code></a>, <a href="#parameter-periodEndDate"><code>periodEndDate</code></a>, <a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-orderBy"><code>orderBy</code></a>, <a href="#parameter-top"><code>top</code></a>, <a href="#parameter-skip"><code>skip</code></a>, <a href="#parameter-count"><code>count</code></a>, <a href="#parameter-search"><code>search</code></a></td>
    <td>Lists the invoices for a billing profile for a given start date and end date. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#get_by_billing_account"><CopyableCode code="get_by_billing_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-invoiceName"><code>invoiceName</code></a></td>
    <td></td>
    <td>Gets an invoice by billing account name and ID. The operation is supported for all billing account types.</td>
</tr>
<tr>
    <td><a href="#get_by_billing_subscription"><CopyableCode code="get_by_billing_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-invoiceName"><code>invoiceName</code></a></td>
    <td></td>
    <td>Gets an invoice by subscription ID and invoice ID. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#list_by_billing_account"><CopyableCode code="list_by_billing_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a></td>
    <td><a href="#parameter-periodStartDate"><code>periodStartDate</code></a>, <a href="#parameter-periodEndDate"><code>periodEndDate</code></a>, <a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-orderBy"><code>orderBy</code></a>, <a href="#parameter-top"><code>top</code></a>, <a href="#parameter-skip"><code>skip</code></a>, <a href="#parameter-count"><code>count</code></a>, <a href="#parameter-search"><code>search</code></a></td>
    <td>Lists the invoices for a billing account for a given start date and end date. The operation is supported for all billing account types.</td>
</tr>
<tr>
    <td><a href="#list_by_billing_subscription"><CopyableCode code="list_by_billing_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-periodStartDate"><code>periodStartDate</code></a>, <a href="#parameter-periodEndDate"><code>periodEndDate</code></a>, <a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-orderBy"><code>orderBy</code></a>, <a href="#parameter-top"><code>top</code></a>, <a href="#parameter-skip"><code>skip</code></a>, <a href="#parameter-count"><code>count</code></a>, <a href="#parameter-search"><code>search</code></a></td>
    <td>Lists the invoices for a subscription. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-invoiceName"><code>invoiceName</code></a></td>
    <td></td>
    <td>Gets an invoice by ID. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#download_documents_by_billing_account"><CopyableCode code="download_documents_by_billing_account" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a></td>
    <td></td>
    <td>Gets a URL to download multiple invoice documents (invoice pdf, tax receipts, credit notes) as a zip file. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#amend"><CopyableCode code="amend" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-invoiceName"><code>invoiceName</code></a></td>
    <td></td>
    <td>Regenerate an invoice by billing account name and invoice name. The operation is supported for billing accounts with agreement type Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#download_by_billing_account"><CopyableCode code="download_by_billing_account" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-invoiceName"><code>invoiceName</code></a></td>
    <td><a href="#parameter-documentName"><code>documentName</code></a></td>
    <td>Gets a URL to download an invoice document. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement, Microsoft Customer Agreement or Enterprise Agreement.</td>
</tr>
<tr>
    <td><a href="#download_summary_by_billing_account"><CopyableCode code="download_summary_by_billing_account" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-invoiceName"><code>invoiceName</code></a></td>
    <td></td>
    <td>Gets a URL to download the summary document for an invoice. The operation is supported for billing accounts with agreement type Enterprise Agreement.</td>
</tr>
<tr>
    <td><a href="#download_documents_by_billing_subscription"><CopyableCode code="download_documents_by_billing_subscription" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets a URL to download multiple invoice documents (invoice pdf, tax receipts, credit notes) as a zip file. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#download_by_billing_subscription"><CopyableCode code="download_by_billing_subscription" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-invoiceName"><code>invoiceName</code></a></td>
    <td><a href="#parameter-documentName"><code>documentName</code></a></td>
    <td>Gets a URL to download an invoice by billing subscription. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement.</td>
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
<tr id="parameter-invoiceName">
    <td><CopyableCode code="invoiceName" /></td>
    <td><code>string</code></td>
    <td>The ID that uniquely identifies an invoice.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID that uniquely identifies a billing subscription.</td>
</tr>
<tr id="parameter-count">
    <td><CopyableCode code="count" /></td>
    <td><code>boolean</code></td>
    <td>The count query option allows clients to request a count of the matching resources included with the resources in the response.</td>
</tr>
<tr id="parameter-documentName">
    <td><CopyableCode code="documentName" /></td>
    <td><code>string</code></td>
    <td>The ID that uniquely identifies an invoice document. This ID may be an identifier for an invoice PDF, a credit note, or a tax receipt.</td>
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
<tr id="parameter-periodEndDate">
    <td><CopyableCode code="periodEndDate" /></td>
    <td><code>string (date)</code></td>
    <td>The end date of the billing period for which the invoice is generated. The date is in MM-DD-YYYY format.</td>
</tr>
<tr id="parameter-periodStartDate">
    <td><CopyableCode code="periodStartDate" /></td>
    <td><code>string (date)</code></td>
    <td>The start date of the billing period for which the invoice is generated. The date is in MM-DD-YYYY format.</td>
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
        { label: 'get_by_billing_account', value: 'get_by_billing_account' },
        { label: 'get_by_billing_subscription', value: 'get_by_billing_subscription' },
        { label: 'list_by_billing_account', value: 'list_by_billing_account' },
        { label: 'list_by_billing_subscription', value: 'list_by_billing_subscription' },
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="list_by_billing_profile">

Lists the invoices for a billing profile for a given start date and end date. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.invoices
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND billingProfileName = '{{ billingProfileName }}' -- required
AND periodStartDate = '{{ periodStartDate }}'
AND periodEndDate = '{{ periodEndDate }}'
AND filter = '{{ filter }}'
AND orderBy = '{{ orderBy }}'
AND top = '{{ top }}'
AND skip = '{{ skip }}'
AND count = '{{ count }}'
AND search = '{{ search }}'
;
```
</TabItem>
<TabItem value="get_by_billing_account">

Gets an invoice by billing account name and ID. The operation is supported for all billing account types.

```sql
SELECT
properties,
tags
FROM azure.billing.invoices
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND invoiceName = '{{ invoiceName }}' -- required
;
```
</TabItem>
<TabItem value="get_by_billing_subscription">

Gets an invoice by subscription ID and invoice ID. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.invoices
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND invoiceName = '{{ invoiceName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_billing_account">

Lists the invoices for a billing account for a given start date and end date. The operation is supported for all billing account types.

```sql
SELECT
properties,
tags
FROM azure.billing.invoices
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND periodStartDate = '{{ periodStartDate }}'
AND periodEndDate = '{{ periodEndDate }}'
AND filter = '{{ filter }}'
AND orderBy = '{{ orderBy }}'
AND top = '{{ top }}'
AND skip = '{{ skip }}'
AND count = '{{ count }}'
AND search = '{{ search }}'
;
```
</TabItem>
<TabItem value="list_by_billing_subscription">

Lists the invoices for a subscription. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.invoices
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND periodStartDate = '{{ periodStartDate }}'
AND periodEndDate = '{{ periodEndDate }}'
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

Gets an invoice by ID. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.invoices
WHERE invoiceName = '{{ invoiceName }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="download_documents_by_billing_account"
    values={[
        { label: 'download_documents_by_billing_account', value: 'download_documents_by_billing_account' },
        { label: 'amend', value: 'amend' },
        { label: 'download_by_billing_account', value: 'download_by_billing_account' },
        { label: 'download_summary_by_billing_account', value: 'download_summary_by_billing_account' },
        { label: 'download_documents_by_billing_subscription', value: 'download_documents_by_billing_subscription' },
        { label: 'download_by_billing_subscription', value: 'download_by_billing_subscription' }
    ]}
>
<TabItem value="download_documents_by_billing_account">

Gets a URL to download multiple invoice documents (invoice pdf, tax receipts, credit notes) as a zip file. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement.

```sql
EXEC azure.billing.invoices.download_documents_by_billing_account 
@billingAccountName='{{ billingAccountName }}' --required
;
```
</TabItem>
<TabItem value="amend">

Regenerate an invoice by billing account name and invoice name. The operation is supported for billing accounts with agreement type Microsoft Customer Agreement.

```sql
EXEC azure.billing.invoices.amend 
@billingAccountName='{{ billingAccountName }}' --required, 
@invoiceName='{{ invoiceName }}' --required
;
```
</TabItem>
<TabItem value="download_by_billing_account">

Gets a URL to download an invoice document. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement, Microsoft Customer Agreement or Enterprise Agreement.

```sql
EXEC azure.billing.invoices.download_by_billing_account 
@billingAccountName='{{ billingAccountName }}' --required, 
@invoiceName='{{ invoiceName }}' --required, 
@documentName='{{ documentName }}'
;
```
</TabItem>
<TabItem value="download_summary_by_billing_account">

Gets a URL to download the summary document for an invoice. The operation is supported for billing accounts with agreement type Enterprise Agreement.

```sql
EXEC azure.billing.invoices.download_summary_by_billing_account 
@billingAccountName='{{ billingAccountName }}' --required, 
@invoiceName='{{ invoiceName }}' --required
;
```
</TabItem>
<TabItem value="download_documents_by_billing_subscription">

Gets a URL to download multiple invoice documents (invoice pdf, tax receipts, credit notes) as a zip file. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement.

```sql
EXEC azure.billing.invoices.download_documents_by_billing_subscription 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="download_by_billing_subscription">

Gets a URL to download an invoice by billing subscription. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement.

```sql
EXEC azure.billing.invoices.download_by_billing_subscription 
@subscriptionId='{{ subscriptionId }}' --required, 
@invoiceName='{{ invoiceName }}' --required, 
@documentName='{{ documentName }}'
;
```
</TabItem>
</Tabs>
