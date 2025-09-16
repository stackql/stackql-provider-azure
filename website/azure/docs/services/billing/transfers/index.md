--- 
title: transfers
hide_title: false
hide_table_of_contents: false
keywords:
  - transfers
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

Creates, updates, deletes, gets or lists a <code>transfers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>transfers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.transfers" /></td></tr>
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

Details of transfer.

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
    <td>Details of the transfer.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

List of transfers initiated from this invoice section.

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
    <td>Details of the transfer.</td>
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
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-invoiceSectionName"><code>invoiceSectionName</code></a>, <a href="#parameter-transferName"><code>transferName</code></a></td>
    <td></td>
    <td>Gets a transfer request by ID. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-invoiceSectionName"><code>invoiceSectionName</code></a></td>
    <td></td>
    <td>Lists the transfer requests for an invoice section. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#initiate"><CopyableCode code="initiate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-invoiceSectionName"><code>invoiceSectionName</code></a>, <a href="#parameter-transferName"><code>transferName</code></a></td>
    <td></td>
    <td>Sends a request to a user in another billing account to transfer billing ownership of their subscriptions. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#cancel"><CopyableCode code="cancel" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-invoiceSectionName"><code>invoiceSectionName</code></a>, <a href="#parameter-transferName"><code>transferName</code></a></td>
    <td></td>
    <td>Cancels a transfer request. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement.</td>
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
<tr id="parameter-invoiceSectionName">
    <td><CopyableCode code="invoiceSectionName" /></td>
    <td><code>string</code></td>
    <td>The ID that uniquely identifies an invoice section.</td>
</tr>
<tr id="parameter-transferName">
    <td><CopyableCode code="transferName" /></td>
    <td><code>string</code></td>
    <td>The ID that uniquely identifies a transfer request.</td>
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

Gets a transfer request by ID. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.transfers
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND billingProfileName = '{{ billingProfileName }}' -- required
AND invoiceSectionName = '{{ invoiceSectionName }}' -- required
AND transferName = '{{ transferName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists the transfer requests for an invoice section. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.transfers
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND billingProfileName = '{{ billingProfileName }}' -- required
AND invoiceSectionName = '{{ invoiceSectionName }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="initiate"
    values={[
        { label: 'initiate', value: 'initiate' },
        { label: 'cancel', value: 'cancel' }
    ]}
>
<TabItem value="initiate">

Sends a request to a user in another billing account to transfer billing ownership of their subscriptions. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement.

```sql
EXEC azure.billing.transfers.initiate 
@billingAccountName='{{ billingAccountName }}' --required, 
@billingProfileName='{{ billingProfileName }}' --required, 
@invoiceSectionName='{{ invoiceSectionName }}' --required, 
@transferName='{{ transferName }}' --required 
@@json=
'{
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="cancel">

Cancels a transfer request. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement.

```sql
EXEC azure.billing.transfers.cancel 
@billingAccountName='{{ billingAccountName }}' --required, 
@billingProfileName='{{ billingProfileName }}' --required, 
@invoiceSectionName='{{ invoiceSectionName }}' --required, 
@transferName='{{ transferName }}' --required
;
```
</TabItem>
</Tabs>
