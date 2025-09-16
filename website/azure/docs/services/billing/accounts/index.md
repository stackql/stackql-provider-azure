--- 
title: accounts
hide_title: false
hide_table_of_contents: false
keywords:
  - accounts
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

Creates, updates, deletes, gets or lists an <code>accounts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>accounts</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.accounts" /></td></tr>
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

A billing account.

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
    <td>A billing account.</td>
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

The list of billing accounts.

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
    <td>A billing account.</td>
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
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a></td>
    <td></td>
    <td>Gets a billing account by its ID.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td><a href="#parameter-includeAll"><code>includeAll</code></a>, <a href="#parameter-includeAllWithoutBillingProfiles"><code>includeAllWithoutBillingProfiles</code></a>, <a href="#parameter-includeDeleted"><code>includeDeleted</code></a>, <a href="#parameter-includePendingAgreement"><code>includePendingAgreement</code></a>, <a href="#parameter-includeResellee"><code>includeResellee</code></a>, <a href="#parameter-legalOwnerTID"><code>legalOwnerTID</code></a>, <a href="#parameter-legalOwnerOID"><code>legalOwnerOID</code></a>, <a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-expand"><code>expand</code></a>, <a href="#parameter-top"><code>top</code></a>, <a href="#parameter-skip"><code>skip</code></a>, <a href="#parameter-search"><code>search</code></a></td>
    <td>Lists the billing accounts that a user has access to.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a></td>
    <td></td>
    <td>Updates the properties of a billing account. Currently, displayName and address can be updated for billing accounts with agreement type Microsoft Customer Agreement. Currently address and notification email address can be updated for billing accounts with agreement type Microsoft Online Services Agreement. Currently, purchase order number can be edited for billing accounts with agreement type Enterprise Agreement.</td>
</tr>
<tr>
    <td><a href="#add_payment_terms"><CopyableCode code="add_payment_terms" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a></td>
    <td></td>
    <td>Adds payment terms to all the billing profiles under the billing account. Currently, payment terms can be added only on billing accounts that have Agreement Type as 'Microsoft Customer Agreement' and AccountType as 'Enterprise'. This action needs pre-authorization and only Field Sellers are authorized to add the payment terms and is not a self-serve action.</td>
</tr>
<tr>
    <td><a href="#cancel_payment_terms"><CopyableCode code="cancel_payment_terms" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a></td>
    <td></td>
    <td>Cancels all the payment terms on billing account that falls after the cancellation date in the request. Currently, cancel payment terms is only served by admin actions and is not a self-serve action.</td>
</tr>
<tr>
    <td><a href="#confirm_transition"><CopyableCode code="confirm_transition" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a></td>
    <td></td>
    <td>Gets the transition details for a billing account that has transitioned from agreement type Microsoft Online Services Program to agreement type Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#validate_payment_terms"><CopyableCode code="validate_payment_terms" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a></td>
    <td></td>
    <td>Validates payment terms on a billing account with agreement type 'Microsoft Customer Agreement' and account type 'Enterprise'.</td>
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
<tr id="parameter-expand">
    <td><CopyableCode code="expand" /></td>
    <td><code>string</code></td>
    <td>Expand is allowed for SoldTo and EnrollmentDetails/PONumber.</td>
</tr>
<tr id="parameter-filter">
    <td><CopyableCode code="filter" /></td>
    <td><code>string</code></td>
    <td>The filter query option allows clients to filter a collection of resources that are addressed by a request URL.</td>
</tr>
<tr id="parameter-includeAll">
    <td><CopyableCode code="includeAll" /></td>
    <td><code>boolean</code></td>
    <td>When true, results will include Billing Accounts that the user does not have a direct role assignment on if the user has one of the following AAD roles: Global Administrator, Global Reader, Billing Administrator.</td>
</tr>
<tr id="parameter-includeAllWithoutBillingProfiles">
    <td><CopyableCode code="includeAllWithoutBillingProfiles" /></td>
    <td><code>boolean</code></td>
    <td>When true, results will include Billing Accounts that are not fully created if the user has one of the following AAD roles: Global Administrator, Global Reader, Billing Administrator.</td>
</tr>
<tr id="parameter-includeDeleted">
    <td><CopyableCode code="includeDeleted" /></td>
    <td><code>boolean</code></td>
    <td>When true, results will include any billing accounts in a deleted state.</td>
</tr>
<tr id="parameter-includePendingAgreement">
    <td><CopyableCode code="includePendingAgreement" /></td>
    <td><code>boolean</code></td>
    <td>Includes billing accounts with agreement pending signature that the user has access to.</td>
</tr>
<tr id="parameter-includeResellee">
    <td><CopyableCode code="includeResellee" /></td>
    <td><code>boolean</code></td>
    <td>Includes the customer's billing account of Microsoft Partner Agreement that the user has access to.</td>
</tr>
<tr id="parameter-legalOwnerOID">
    <td><CopyableCode code="legalOwnerOID" /></td>
    <td><code>string</code></td>
    <td>Must be combined with legalOwnerTID, results will only include Billing Accounts for whom is legally responsible for the Billing Accounts. Optional.</td>
</tr>
<tr id="parameter-legalOwnerTID">
    <td><CopyableCode code="legalOwnerTID" /></td>
    <td><code>string</code></td>
    <td>Must be combined with legalOwnerOID, results will only include Billing Accounts for whom is legally responsible for the Billing Accounts. Optional.</td>
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
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Gets a billing account by its ID.

```sql
SELECT
properties,
tags
FROM azure.billing.accounts
WHERE billingAccountName = '{{ billingAccountName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists the billing accounts that a user has access to.

```sql
SELECT
properties,
tags
FROM azure.billing.accounts
WHERE includeAll = '{{ includeAll }}'
AND includeAllWithoutBillingProfiles = '{{ includeAllWithoutBillingProfiles }}'
AND includeDeleted = '{{ includeDeleted }}'
AND includePendingAgreement = '{{ includePendingAgreement }}'
AND includeResellee = '{{ includeResellee }}'
AND legalOwnerTID = '{{ legalOwnerTID }}'
AND legalOwnerOID = '{{ legalOwnerOID }}'
AND filter = '{{ filter }}'
AND expand = '{{ expand }}'
AND top = '{{ top }}'
AND skip = '{{ skip }}'
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

Updates the properties of a billing account. Currently, displayName and address can be updated for billing accounts with agreement type Microsoft Customer Agreement. Currently address and notification email address can be updated for billing accounts with agreement type Microsoft Online Services Agreement. Currently, purchase order number can be edited for billing accounts with agreement type Enterprise Agreement.

```sql
UPDATE azure.billing.accounts
SET 
data__tags = '{{ tags }}',
data__properties = '{{ properties }}'
WHERE 
billingAccountName = '{{ billingAccountName }}' --required
RETURNING
properties,
tags;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="add_payment_terms"
    values={[
        { label: 'add_payment_terms', value: 'add_payment_terms' },
        { label: 'cancel_payment_terms', value: 'cancel_payment_terms' },
        { label: 'confirm_transition', value: 'confirm_transition' },
        { label: 'validate_payment_terms', value: 'validate_payment_terms' }
    ]}
>
<TabItem value="add_payment_terms">

Adds payment terms to all the billing profiles under the billing account. Currently, payment terms can be added only on billing accounts that have Agreement Type as 'Microsoft Customer Agreement' and AccountType as 'Enterprise'. This action needs pre-authorization and only Field Sellers are authorized to add the payment terms and is not a self-serve action.

```sql
EXEC azure.billing.accounts.add_payment_terms 
@billingAccountName='{{ billingAccountName }}' --required
;
```
</TabItem>
<TabItem value="cancel_payment_terms">

Cancels all the payment terms on billing account that falls after the cancellation date in the request. Currently, cancel payment terms is only served by admin actions and is not a self-serve action.

```sql
EXEC azure.billing.accounts.cancel_payment_terms 
@billingAccountName='{{ billingAccountName }}' --required
;
```
</TabItem>
<TabItem value="confirm_transition">

Gets the transition details for a billing account that has transitioned from agreement type Microsoft Online Services Program to agreement type Microsoft Customer Agreement.

```sql
EXEC azure.billing.accounts.confirm_transition 
@billingAccountName='{{ billingAccountName }}' --required
;
```
</TabItem>
<TabItem value="validate_payment_terms">

Validates payment terms on a billing account with agreement type 'Microsoft Customer Agreement' and account type 'Enterprise'.

```sql
EXEC azure.billing.accounts.validate_payment_terms 
@billingAccountName='{{ billingAccountName }}' --required
;
```
</TabItem>
</Tabs>
