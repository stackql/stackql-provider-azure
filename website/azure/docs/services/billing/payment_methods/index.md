--- 
title: payment_methods
hide_title: false
hide_table_of_contents: false
keywords:
  - payment_methods
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

Creates, updates, deletes, gets or lists a <code>payment_methods</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>payment_methods</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.payment_methods" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_by_billing_profile"
    values={[
        { label: 'get_by_billing_profile', value: 'get_by_billing_profile' },
        { label: 'list_by_billing_profile', value: 'list_by_billing_profile' },
        { label: 'get_by_billing_account', value: 'get_by_billing_account' },
        { label: 'list_by_billing_account', value: 'list_by_billing_account' },
        { label: 'get_by_user', value: 'get_by_user' },
        { label: 'list_by_user', value: 'list_by_user' }
    ]}
>
<TabItem value="get_by_billing_profile">

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Payment method link properties</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_billing_profile">

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Payment method link properties</td>
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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Payment method properties</td>
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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Payment method properties</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_by_user">

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Payment method properties</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_user">

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Payment method properties</td>
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
    <td><a href="#get_by_billing_profile"><CopyableCode code="get_by_billing_profile" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-paymentMethodName"><code>paymentMethodName</code></a></td>
    <td></td>
    <td>Gets a payment method linked with a billing profile. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#list_by_billing_profile"><CopyableCode code="list_by_billing_profile" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a></td>
    <td></td>
    <td>Lists payment methods attached to a billing profile. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#get_by_billing_account"><CopyableCode code="get_by_billing_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-paymentMethodName"><code>paymentMethodName</code></a></td>
    <td></td>
    <td>Gets a payment method available for a billing account. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#list_by_billing_account"><CopyableCode code="list_by_billing_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a></td>
    <td></td>
    <td>Lists the payment methods available for a billing account. Along with the payment methods owned by the caller, these payment methods can be attached to a billing profile to make payments. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#get_by_user"><CopyableCode code="get_by_user" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-paymentMethodName"><code>paymentMethodName</code></a></td>
    <td></td>
    <td>Gets a payment method owned by the caller.</td>
</tr>
<tr>
    <td><a href="#list_by_user"><CopyableCode code="list_by_user" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td></td>
    <td>Lists the payment methods owned by the caller.</td>
</tr>
<tr>
    <td><a href="#delete_by_user"><CopyableCode code="delete_by_user" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-paymentMethodName"><code>paymentMethodName</code></a></td>
    <td></td>
    <td>Deletes a payment method owned by the caller.</td>
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
<tr id="parameter-paymentMethodName">
    <td><CopyableCode code="paymentMethodName" /></td>
    <td><code>string</code></td>
    <td>The ID that uniquely identifies a payment method.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_by_billing_profile"
    values={[
        { label: 'get_by_billing_profile', value: 'get_by_billing_profile' },
        { label: 'list_by_billing_profile', value: 'list_by_billing_profile' },
        { label: 'get_by_billing_account', value: 'get_by_billing_account' },
        { label: 'list_by_billing_account', value: 'list_by_billing_account' },
        { label: 'get_by_user', value: 'get_by_user' },
        { label: 'list_by_user', value: 'list_by_user' }
    ]}
>
<TabItem value="get_by_billing_profile">

Gets a payment method linked with a billing profile. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.payment_methods
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND billingProfileName = '{{ billingProfileName }}' -- required
AND paymentMethodName = '{{ paymentMethodName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_billing_profile">

Lists payment methods attached to a billing profile. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.payment_methods
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND billingProfileName = '{{ billingProfileName }}' -- required
;
```
</TabItem>
<TabItem value="get_by_billing_account">

Gets a payment method available for a billing account. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.payment_methods
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND paymentMethodName = '{{ paymentMethodName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_billing_account">

Lists the payment methods available for a billing account. Along with the payment methods owned by the caller, these payment methods can be attached to a billing profile to make payments. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.payment_methods
WHERE billingAccountName = '{{ billingAccountName }}' -- required
;
```
</TabItem>
<TabItem value="get_by_user">

Gets a payment method owned by the caller.

```sql
SELECT
properties,
tags
FROM azure.billing.payment_methods
WHERE paymentMethodName = '{{ paymentMethodName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_user">

Lists the payment methods owned by the caller.

```sql
SELECT
properties,
tags
FROM azure.billing.payment_methods
;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete_by_user"
    values={[
        { label: 'delete_by_user', value: 'delete_by_user' }
    ]}
>
<TabItem value="delete_by_user">

Deletes a payment method owned by the caller.

```sql
DELETE FROM azure.billing.payment_methods
WHERE paymentMethodName = '{{ paymentMethodName }}' --required
;
```
</TabItem>
</Tabs>
