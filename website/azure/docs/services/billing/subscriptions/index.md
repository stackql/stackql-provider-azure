--- 
title: subscriptions
hide_title: false
hide_table_of_contents: false
keywords:
  - subscriptions
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

Creates, updates, deletes, gets or lists a <code>subscriptions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>subscriptions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.subscriptions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_by_billing_profile"
    values={[
        { label: 'get_by_billing_profile', value: 'get_by_billing_profile' },
        { label: 'list_by_customer', value: 'list_by_customer' },
        { label: 'list_by_billing_profile', value: 'list_by_billing_profile' },
        { label: 'get', value: 'get' },
        { label: 'list_by_customer_at_billing_account', value: 'list_by_customer_at_billing_account' },
        { label: 'list_by_enrollment_account', value: 'list_by_enrollment_account' },
        { label: 'list_by_billing_account', value: 'list_by_billing_account' }
    ]}
>
<TabItem value="get_by_billing_profile">

A billing subscription.

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
    <td>The properties of a(n) BillingSubscription</td>
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

The list of billing subscriptions.

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
    <td>The properties of a(n) BillingSubscription</td>
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

The list of billing subscriptions.

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
    <td>The properties of a(n) BillingSubscription</td>
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

A billing subscription.

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
    <td>The properties of a(n) BillingSubscription</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_customer_at_billing_account">

The list of billing subscriptions.

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
    <td>The properties of a(n) BillingSubscription</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_enrollment_account">

The list of billing subscriptions.

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
    <td>The properties of a(n) BillingSubscription</td>
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

The list of billing subscriptions.

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
    <td>The properties of a(n) BillingSubscription</td>
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
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-billingSubscriptionName"><code>billingSubscriptionName</code></a></td>
    <td><a href="#parameter-expand"><code>expand</code></a></td>
    <td>Gets a subscription by its billing profile and ID. The operation is supported for billing accounts with agreement type Enterprise Agreement.</td>
</tr>
<tr>
    <td><a href="#list_by_customer"><CopyableCode code="list_by_customer" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-customerName"><code>customerName</code></a></td>
    <td><a href="#parameter-includeDeleted"><code>includeDeleted</code></a>, <a href="#parameter-expand"><code>expand</code></a>, <a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-orderBy"><code>orderBy</code></a>, <a href="#parameter-top"><code>top</code></a>, <a href="#parameter-skip"><code>skip</code></a>, <a href="#parameter-count"><code>count</code></a>, <a href="#parameter-search"><code>search</code></a></td>
    <td>Lists the subscriptions for a customer. The operation is supported only for billing accounts with agreement type Microsoft Partner Agreement.</td>
</tr>
<tr>
    <td><a href="#list_by_billing_profile"><CopyableCode code="list_by_billing_profile" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a></td>
    <td><a href="#parameter-includeDeleted"><code>includeDeleted</code></a>, <a href="#parameter-expand"><code>expand</code></a>, <a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-orderBy"><code>orderBy</code></a>, <a href="#parameter-top"><code>top</code></a>, <a href="#parameter-skip"><code>skip</code></a>, <a href="#parameter-count"><code>count</code></a>, <a href="#parameter-search"><code>search</code></a></td>
    <td>Lists the subscriptions that are billed to a billing profile. The operation is supported for billing accounts with agreement type Microsoft Customer Agreement or Microsoft Partner Agreement.</td>
</tr>
<tr>
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingSubscriptionName"><code>billingSubscriptionName</code></a></td>
    <td><a href="#parameter-expand"><code>expand</code></a></td>
    <td>Gets a subscription by its ID. The operation is supported for billing accounts with agreement type Microsoft Customer Agreement,  Microsoft Partner Agreement, and Enterprise Agreement.</td>
</tr>
<tr>
    <td><a href="#list_by_customer_at_billing_account"><CopyableCode code="list_by_customer_at_billing_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-customerName"><code>customerName</code></a></td>
    <td><a href="#parameter-includeDeleted"><code>includeDeleted</code></a>, <a href="#parameter-expand"><code>expand</code></a>, <a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-orderBy"><code>orderBy</code></a>, <a href="#parameter-top"><code>top</code></a>, <a href="#parameter-skip"><code>skip</code></a>, <a href="#parameter-count"><code>count</code></a>, <a href="#parameter-search"><code>search</code></a></td>
    <td>Lists the subscriptions for a customer at billing account level. The operation is supported only for billing accounts with agreement type Microsoft Partner Agreement.</td>
</tr>
<tr>
    <td><a href="#list_by_enrollment_account"><CopyableCode code="list_by_enrollment_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-enrollmentAccountName"><code>enrollmentAccountName</code></a></td>
    <td><a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-orderBy"><code>orderBy</code></a>, <a href="#parameter-top"><code>top</code></a>, <a href="#parameter-skip"><code>skip</code></a>, <a href="#parameter-count"><code>count</code></a>, <a href="#parameter-search"><code>search</code></a></td>
    <td>Lists the subscriptions for an enrollment account. The operation is supported for billing accounts with agreement type Enterprise Agreement.</td>
</tr>
<tr>
    <td><a href="#list_by_billing_account"><CopyableCode code="list_by_billing_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a></td>
    <td><a href="#parameter-includeDeleted"><code>includeDeleted</code></a>, <a href="#parameter-includeTenantSubscriptions"><code>includeTenantSubscriptions</code></a>, <a href="#parameter-includeFailed"><code>includeFailed</code></a>, <a href="#parameter-expand"><code>expand</code></a>, <a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-orderBy"><code>orderBy</code></a>, <a href="#parameter-top"><code>top</code></a>, <a href="#parameter-skip"><code>skip</code></a>, <a href="#parameter-count"><code>count</code></a>, <a href="#parameter-search"><code>search</code></a></td>
    <td>Lists the subscriptions for a billing account.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingSubscriptionName"><code>billingSubscriptionName</code></a></td>
    <td></td>
    <td>Updates the properties of a billing subscription.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingSubscriptionName"><code>billingSubscriptionName</code></a></td>
    <td></td>
    <td>Cancels a billing subscription. This operation is supported only for billing accounts of type Microsoft Partner Agreement or Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#cancel"><CopyableCode code="cancel" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingSubscriptionName"><code>billingSubscriptionName</code></a>, <a href="#parameter-cancellationReason"><code>cancellationReason</code></a></td>
    <td></td>
    <td>Cancels a usage-based subscription. This operation is supported only for billing accounts of type Microsoft Partner Agreement.</td>
</tr>
<tr>
    <td><a href="#merge"><CopyableCode code="merge" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingSubscriptionName"><code>billingSubscriptionName</code></a></td>
    <td></td>
    <td>Merges the billing subscription provided in the request with a target billing subscription.</td>
</tr>
<tr>
    <td><a href="#move"><CopyableCode code="move" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingSubscriptionName"><code>billingSubscriptionName</code></a></td>
    <td></td>
    <td>Moves charges for a subscription to a new invoice section. The new invoice section must belong to the same billing profile as the existing invoice section. This operation is supported for billing accounts with agreement type Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#split"><CopyableCode code="split" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingSubscriptionName"><code>billingSubscriptionName</code></a></td>
    <td></td>
    <td>Splits a subscription into a new subscription with quantity less than current subscription quantity and not equal to 0.</td>
</tr>
<tr>
    <td><a href="#validate_move_eligibility"><CopyableCode code="validate_move_eligibility" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingSubscriptionName"><code>billingSubscriptionName</code></a></td>
    <td></td>
    <td>Validates if charges for a subscription can be moved to a new invoice section. This operation is supported for billing accounts with agreement type Microsoft Customer Agreement.</td>
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
<tr id="parameter-billingSubscriptionName">
    <td><CopyableCode code="billingSubscriptionName" /></td>
    <td><code>string</code></td>
    <td>The ID that uniquely identifies a subscription.</td>
</tr>
<tr id="parameter-customerName">
    <td><CopyableCode code="customerName" /></td>
    <td><code>string</code></td>
    <td>The ID that uniquely identifies a customer.</td>
</tr>
<tr id="parameter-enrollmentAccountName">
    <td><CopyableCode code="enrollmentAccountName" /></td>
    <td><code>string</code></td>
    <td>The name of the enrollment account.</td>
</tr>
<tr id="parameter-count">
    <td><CopyableCode code="count" /></td>
    <td><code>boolean</code></td>
    <td>The count query option allows clients to request a count of the matching resources included with the resources in the response.</td>
</tr>
<tr id="parameter-expand">
    <td><CopyableCode code="expand" /></td>
    <td><code>string</code></td>
    <td>Can be used to expand `Reseller`, `ConsumptionCostCenter`, `LastMonthCharges` and `MonthToDateCharges`</td>
</tr>
<tr id="parameter-filter">
    <td><CopyableCode code="filter" /></td>
    <td><code>string</code></td>
    <td>The filter query option allows clients to filter a collection of resources that are addressed by a request URL.</td>
</tr>
<tr id="parameter-includeDeleted">
    <td><CopyableCode code="includeDeleted" /></td>
    <td><code>boolean</code></td>
    <td>Can be used to get deleted billing subscriptions.</td>
</tr>
<tr id="parameter-includeFailed">
    <td><CopyableCode code="includeFailed" /></td>
    <td><code>boolean</code></td>
    <td>Can be used to get failed billing subscriptions.</td>
</tr>
<tr id="parameter-includeTenantSubscriptions">
    <td><CopyableCode code="includeTenantSubscriptions" /></td>
    <td><code>boolean</code></td>
    <td>Can be used to get tenant-owned billing subscriptions. This field is only applies to Microsoft Online Services Program billing accounts.</td>
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
    defaultValue="get_by_billing_profile"
    values={[
        { label: 'get_by_billing_profile', value: 'get_by_billing_profile' },
        { label: 'list_by_customer', value: 'list_by_customer' },
        { label: 'list_by_billing_profile', value: 'list_by_billing_profile' },
        { label: 'get', value: 'get' },
        { label: 'list_by_customer_at_billing_account', value: 'list_by_customer_at_billing_account' },
        { label: 'list_by_enrollment_account', value: 'list_by_enrollment_account' },
        { label: 'list_by_billing_account', value: 'list_by_billing_account' }
    ]}
>
<TabItem value="get_by_billing_profile">

Gets a subscription by its billing profile and ID. The operation is supported for billing accounts with agreement type Enterprise Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.subscriptions
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND billingProfileName = '{{ billingProfileName }}' -- required
AND billingSubscriptionName = '{{ billingSubscriptionName }}' -- required
AND expand = '{{ expand }}'
;
```
</TabItem>
<TabItem value="list_by_customer">

Lists the subscriptions for a customer. The operation is supported only for billing accounts with agreement type Microsoft Partner Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.subscriptions
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND billingProfileName = '{{ billingProfileName }}' -- required
AND customerName = '{{ customerName }}' -- required
AND includeDeleted = '{{ includeDeleted }}'
AND expand = '{{ expand }}'
AND filter = '{{ filter }}'
AND orderBy = '{{ orderBy }}'
AND top = '{{ top }}'
AND skip = '{{ skip }}'
AND count = '{{ count }}'
AND search = '{{ search }}'
;
```
</TabItem>
<TabItem value="list_by_billing_profile">

Lists the subscriptions that are billed to a billing profile. The operation is supported for billing accounts with agreement type Microsoft Customer Agreement or Microsoft Partner Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.subscriptions
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND billingProfileName = '{{ billingProfileName }}' -- required
AND includeDeleted = '{{ includeDeleted }}'
AND expand = '{{ expand }}'
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

Gets a subscription by its ID. The operation is supported for billing accounts with agreement type Microsoft Customer Agreement,  Microsoft Partner Agreement, and Enterprise Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.subscriptions
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND billingSubscriptionName = '{{ billingSubscriptionName }}' -- required
AND expand = '{{ expand }}'
;
```
</TabItem>
<TabItem value="list_by_customer_at_billing_account">

Lists the subscriptions for a customer at billing account level. The operation is supported only for billing accounts with agreement type Microsoft Partner Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.subscriptions
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND customerName = '{{ customerName }}' -- required
AND includeDeleted = '{{ includeDeleted }}'
AND expand = '{{ expand }}'
AND filter = '{{ filter }}'
AND orderBy = '{{ orderBy }}'
AND top = '{{ top }}'
AND skip = '{{ skip }}'
AND count = '{{ count }}'
AND search = '{{ search }}'
;
```
</TabItem>
<TabItem value="list_by_enrollment_account">

Lists the subscriptions for an enrollment account. The operation is supported for billing accounts with agreement type Enterprise Agreement.

```sql
SELECT
properties,
tags
FROM azure.billing.subscriptions
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND enrollmentAccountName = '{{ enrollmentAccountName }}' -- required
AND filter = '{{ filter }}'
AND orderBy = '{{ orderBy }}'
AND top = '{{ top }}'
AND skip = '{{ skip }}'
AND count = '{{ count }}'
AND search = '{{ search }}'
;
```
</TabItem>
<TabItem value="list_by_billing_account">

Lists the subscriptions for a billing account.

```sql
SELECT
properties,
tags
FROM azure.billing.subscriptions
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND includeDeleted = '{{ includeDeleted }}'
AND includeTenantSubscriptions = '{{ includeTenantSubscriptions }}'
AND includeFailed = '{{ includeFailed }}'
AND expand = '{{ expand }}'
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

Updates the properties of a billing subscription.

```sql
UPDATE azure.billing.subscriptions
SET 
data__tags = '{{ tags }}',
data__properties = '{{ properties }}'
WHERE 
billingAccountName = '{{ billingAccountName }}' --required
AND billingSubscriptionName = '{{ billingSubscriptionName }}' --required
RETURNING
properties,
tags;
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete"
    values={[
        { label: 'delete', value: 'delete' }
    ]}
>
<TabItem value="delete">

Cancels a billing subscription. This operation is supported only for billing accounts of type Microsoft Partner Agreement or Microsoft Customer Agreement.

```sql
DELETE FROM azure.billing.subscriptions
WHERE billingAccountName = '{{ billingAccountName }}' --required
AND billingSubscriptionName = '{{ billingSubscriptionName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="cancel"
    values={[
        { label: 'cancel', value: 'cancel' },
        { label: 'merge', value: 'merge' },
        { label: 'move', value: 'move' },
        { label: 'split', value: 'split' },
        { label: 'validate_move_eligibility', value: 'validate_move_eligibility' }
    ]}
>
<TabItem value="cancel">

Cancels a usage-based subscription. This operation is supported only for billing accounts of type Microsoft Partner Agreement.

```sql
EXEC azure.billing.subscriptions.cancel 
@billingAccountName='{{ billingAccountName }}' --required, 
@billingSubscriptionName='{{ billingSubscriptionName }}' --required 
@@json=
'{
"cancellationReason": "{{ cancellationReason }}", 
"customerId": "{{ customerId }}"
}'
;
```
</TabItem>
<TabItem value="merge">

Merges the billing subscription provided in the request with a target billing subscription.

```sql
EXEC azure.billing.subscriptions.merge 
@billingAccountName='{{ billingAccountName }}' --required, 
@billingSubscriptionName='{{ billingSubscriptionName }}' --required 
@@json=
'{
"targetBillingSubscriptionName": "{{ targetBillingSubscriptionName }}", 
"quantity": {{ quantity }}
}'
;
```
</TabItem>
<TabItem value="move">

Moves charges for a subscription to a new invoice section. The new invoice section must belong to the same billing profile as the existing invoice section. This operation is supported for billing accounts with agreement type Microsoft Customer Agreement.

```sql
EXEC azure.billing.subscriptions.move 
@billingAccountName='{{ billingAccountName }}' --required, 
@billingSubscriptionName='{{ billingSubscriptionName }}' --required 
@@json=
'{
"destinationInvoiceSectionId": "{{ destinationInvoiceSectionId }}", 
"destinationEnrollmentAccountId": "{{ destinationEnrollmentAccountId }}"
}'
;
```
</TabItem>
<TabItem value="split">

Splits a subscription into a new subscription with quantity less than current subscription quantity and not equal to 0.

```sql
EXEC azure.billing.subscriptions.split 
@billingAccountName='{{ billingAccountName }}' --required, 
@billingSubscriptionName='{{ billingSubscriptionName }}' --required 
@@json=
'{
"targetProductTypeId": "{{ targetProductTypeId }}", 
"targetSkuId": "{{ targetSkuId }}", 
"quantity": {{ quantity }}, 
"termDuration": "{{ termDuration }}", 
"billingFrequency": "{{ billingFrequency }}"
}'
;
```
</TabItem>
<TabItem value="validate_move_eligibility">

Validates if charges for a subscription can be moved to a new invoice section. This operation is supported for billing accounts with agreement type Microsoft Customer Agreement.

```sql
EXEC azure.billing.subscriptions.validate_move_eligibility 
@billingAccountName='{{ billingAccountName }}' --required, 
@billingSubscriptionName='{{ billingSubscriptionName }}' --required 
@@json=
'{
"destinationInvoiceSectionId": "{{ destinationInvoiceSectionId }}", 
"destinationEnrollmentAccountId": "{{ destinationEnrollmentAccountId }}"
}'
;
```
</TabItem>
</Tabs>
