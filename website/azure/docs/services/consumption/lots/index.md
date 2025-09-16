--- 
title: lots
hide_title: false
hide_table_of_contents: false
keywords:
  - lots
  - consumption
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

Creates, updates, deletes, gets or lists a <code>lots</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>lots</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.consumption.lots" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_by_billing_profile"
    values={[
        { label: 'list_by_billing_profile', value: 'list_by_billing_profile' },
        { label: 'list_by_customer', value: 'list_by_customer' },
        { label: 'list_by_billing_account', value: 'list_by_billing_account' }
    ]}
>
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
    <td>The lot properties. (title: Lot summary properties)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_customer">

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
    <td>The lot properties. (title: Lot summary properties)</td>
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
    <td>The lot properties. (title: Lot summary properties)</td>
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
    <td><a href="#parameter-billingAccountId"><code>billingAccountId</code></a>, <a href="#parameter-billingProfileId"><code>billingProfileId</code></a></td>
    <td></td>
    <td>Lists all Azure credits for a billing account or a billing profile. The API is only supported for Microsoft Customer Agreements (MCA) billing accounts.</td>
</tr>
<tr>
    <td><a href="#list_by_customer"><CopyableCode code="list_by_customer" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountId"><code>billingAccountId</code></a>, <a href="#parameter-customerId"><code>customerId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Lists all Azure credits for a customer. The API is only supported for Microsoft Partner  Agreements (MPA) billing accounts.</td>
</tr>
<tr>
    <td><a href="#list_by_billing_account"><CopyableCode code="list_by_billing_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountId"><code>billingAccountId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Lists all Microsoft Azure consumption commitments for a billing account. The API is only supported for Microsoft Customer Agreements (MCA) and Direct Enterprise Agreement (EA)  billing accounts.</td>
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
<tr id="parameter-billingAccountId">
    <td><CopyableCode code="billingAccountId" /></td>
    <td><code>string</code></td>
    <td>BillingAccount ID</td>
</tr>
<tr id="parameter-billingProfileId">
    <td><CopyableCode code="billingProfileId" /></td>
    <td><code>string</code></td>
    <td>Azure Billing Profile ID.</td>
</tr>
<tr id="parameter-customerId">
    <td><CopyableCode code="customerId" /></td>
    <td><code>string</code></td>
    <td>Customer ID</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>May be used to filter the lots by Status, Source etc. The filter supports 'eq', 'lt', 'gt', 'le', 'ge', and 'and'. It does not currently support 'ne', 'or', or 'not'. Tag filter is a key value pair string where key and value is separated by a colon (:).</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_by_billing_profile"
    values={[
        { label: 'list_by_billing_profile', value: 'list_by_billing_profile' },
        { label: 'list_by_customer', value: 'list_by_customer' },
        { label: 'list_by_billing_account', value: 'list_by_billing_account' }
    ]}
>
<TabItem value="list_by_billing_profile">

Lists all Azure credits for a billing account or a billing profile. The API is only supported for Microsoft Customer Agreements (MCA) billing accounts.

```sql
SELECT
properties
FROM azure.consumption.lots
WHERE billingAccountId = '{{ billingAccountId }}' -- required
AND billingProfileId = '{{ billingProfileId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_customer">

Lists all Azure credits for a customer. The API is only supported for Microsoft Partner  Agreements (MPA) billing accounts.

```sql
SELECT
properties
FROM azure.consumption.lots
WHERE billingAccountId = '{{ billingAccountId }}' -- required
AND customerId = '{{ customerId }}' -- required
AND $filter = '{{ $filter }}'
;
```
</TabItem>
<TabItem value="list_by_billing_account">

Lists all Microsoft Azure consumption commitments for a billing account. The API is only supported for Microsoft Customer Agreements (MCA) and Direct Enterprise Agreement (EA)  billing accounts.

```sql
SELECT
properties
FROM azure.consumption.lots
WHERE billingAccountId = '{{ billingAccountId }}' -- required
AND $filter = '{{ $filter }}'
;
```
</TabItem>
</Tabs>
