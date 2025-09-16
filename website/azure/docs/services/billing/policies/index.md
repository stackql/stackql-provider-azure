--- 
title: policies
hide_title: false
hide_table_of_contents: false
keywords:
  - policies
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

Creates, updates, deletes, gets or lists a <code>policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>policies</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.policies" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_by_customer"
    values={[
        { label: 'get_by_customer', value: 'get_by_customer' },
        { label: 'get_by_billing_profile', value: 'get_by_billing_profile' },
        { label: 'get_by_customer_at_billing_account', value: 'get_by_customer_at_billing_account' },
        { label: 'get_by_billing_account', value: 'get_by_billing_account' },
        { label: 'get_by_subscription', value: 'get_by_subscription' }
    ]}
>
<TabItem value="get_by_customer">

A policy at customer scope.

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
    <td>A policy at customer scope.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_by_billing_profile">

A policy at billing profile scope.

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
    <td>A policy at billing profile scope.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_by_customer_at_billing_account">

A policy at customer scope.

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
    <td>A policy at customer scope.</td>
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

A policy at billing account scope.

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
    <td>A policy at billing account scope.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_by_subscription">

A policy at subscription scope.

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
    <td>A policy at subscription scope.</td>
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
    <td><a href="#get_by_customer"><CopyableCode code="get_by_customer" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-customerName"><code>customerName</code></a>, <a href="#parameter-policyName"><code>policyName</code></a></td>
    <td></td>
    <td>Lists the policies for a customer. This operation is supported only for billing accounts with agreement type Microsoft Partner Agreement.</td>
</tr>
<tr>
    <td><a href="#get_by_billing_profile"><CopyableCode code="get_by_billing_profile" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a></td>
    <td></td>
    <td>Lists the policies for a billing profile. This operation is supported only for billing accounts with agreement type Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#get_by_customer_at_billing_account"><CopyableCode code="get_by_customer_at_billing_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-customerName"><code>customerName</code></a></td>
    <td></td>
    <td>Lists the policies for a customer at billing account scope. This operation is supported only for billing accounts with agreement type Microsoft Partner Agreement.</td>
</tr>
<tr>
    <td><a href="#get_by_billing_account"><CopyableCode code="get_by_billing_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a></td>
    <td></td>
    <td>Get the policies for a billing account of Enterprise Agreement type.</td>
</tr>
<tr>
    <td><a href="#get_by_subscription"><CopyableCode code="get_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Lists the policies that are managed by the Billing Admin for the defined subscriptions. This is supported for Microsoft Online Services Program, Microsoft Customer Agreement and Microsoft Partner Agreement.</td>
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
<tr id="parameter-policyName">
    <td><CopyableCode code="policyName" /></td>
    <td><code>string</code></td>
    <td>Service-defined resource names such as 'default' which are reserved resource names.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID that uniquely identifies a billing subscription.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_by_customer"
    values={[
        { label: 'get_by_customer', value: 'get_by_customer' },
        { label: 'get_by_billing_profile', value: 'get_by_billing_profile' },
        { label: 'get_by_customer_at_billing_account', value: 'get_by_customer_at_billing_account' },
        { label: 'get_by_billing_account', value: 'get_by_billing_account' },
        { label: 'get_by_subscription', value: 'get_by_subscription' }
    ]}
>
<TabItem value="get_by_customer">

Lists the policies for a customer. This operation is supported only for billing accounts with agreement type Microsoft Partner Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.policies
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND billingProfileName = '{{ billingProfileName }}' -- required
AND customerName = '{{ customerName }}' -- required
AND policyName = '{{ policyName }}' -- required
;
```
</TabItem>
<TabItem value="get_by_billing_profile">

Lists the policies for a billing profile. This operation is supported only for billing accounts with agreement type Microsoft Customer Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.policies
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND billingProfileName = '{{ billingProfileName }}' -- required
;
```
</TabItem>
<TabItem value="get_by_customer_at_billing_account">

Lists the policies for a customer at billing account scope. This operation is supported only for billing accounts with agreement type Microsoft Partner Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.policies
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND customerName = '{{ customerName }}' -- required
;
```
</TabItem>
<TabItem value="get_by_billing_account">

Get the policies for a billing account of Enterprise Agreement type.

```sql
SELECT
properties,
tags
FROM azure.billing.policies
WHERE billingAccountName = '{{ billingAccountName }}' -- required
;
```
</TabItem>
<TabItem value="get_by_subscription">

Lists the policies that are managed by the Billing Admin for the defined subscriptions. This is supported for Microsoft Online Services Program, Microsoft Customer Agreement and Microsoft Partner Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.policies
WHERE subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>
