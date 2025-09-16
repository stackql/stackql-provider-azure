--- 
title: reservation_transactions
hide_title: false
hide_table_of_contents: false
keywords:
  - reservation_transactions
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

Creates, updates, deletes, gets or lists a <code>reservation_transactions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>reservation_transactions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.consumption.reservation_transactions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_by_billing_profile"
    values={[
        { label: 'list_by_billing_profile', value: 'list_by_billing_profile' },
        { label: 'list', value: 'list' }
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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Resource Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of a modern reservation transaction. (title: Reservation Transaction properties)</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>array</code></td>
    <td>Resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Resource Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of a legacy reservation transaction. (title: Reservation Transaction properties)</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>array</code></td>
    <td>Resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
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
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>List of transactions for reserved instances on billing profile scope. The refund transactions are posted along with its purchase transaction (i.e. in the purchase billing month). For example, The refund is requested in May 2021. This refund transaction will have event date as May 2021 but the billing month as April 2020 when the reservation purchase was made. Note: ARM has a payload size limit of 12MB, so currently callers get 400 when the response size exceeds the ARM limit. In such cases, API call should be made with smaller date ranges.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountId"><code>billingAccountId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-useMarkupIfPartner"><code>useMarkupIfPartner</code></a>, <a href="#parameter-previewMarkupPercentage"><code>previewMarkupPercentage</code></a></td>
    <td>List of transactions for reserved instances on billing account scope. Note: The refund transactions are posted along with its purchase transaction (i.e. in the purchase billing month). For example, The refund is requested in May 2021. This refund transaction will have event date as May 2021 but the billing month as April 2020 when the reservation purchase was made. Note: ARM has a payload size limit of 12MB, so currently callers get 400 when the response size exceeds the ARM limit. In such cases, API call should be made with smaller date ranges.</td>
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
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>Filter reservation transactions by date range. The properties/EventDate for start date and end date. The filter supports 'le' and  'ge'. Note: API returns data for the entire start date's and end date's billing month. For example, filter properties/eventDate+ge+2020-01-01+AND+properties/eventDate+le+2020-12-29 will include data for the entire December 2020 month (i.e. will contain records for dates December 30 and 31)</td>
</tr>
<tr id="parameter-previewMarkupPercentage">
    <td><CopyableCode code="previewMarkupPercentage" /></td>
    <td><code>number (decimal)</code></td>
    <td>Preview markup percentage to be applied.</td>
</tr>
<tr id="parameter-useMarkupIfPartner">
    <td><CopyableCode code="useMarkupIfPartner" /></td>
    <td><code>boolean</code></td>
    <td>Applies mark up to the transactions if the caller is a partner.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_by_billing_profile"
    values={[
        { label: 'list_by_billing_profile', value: 'list_by_billing_profile' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list_by_billing_profile">

List of transactions for reserved instances on billing profile scope. The refund transactions are posted along with its purchase transaction (i.e. in the purchase billing month). For example, The refund is requested in May 2021. This refund transaction will have event date as May 2021 but the billing month as April 2020 when the reservation purchase was made. Note: ARM has a payload size limit of 12MB, so currently callers get 400 when the response size exceeds the ARM limit. In such cases, API call should be made with smaller date ranges.

```sql
SELECT
id,
name,
properties,
tags,
type
FROM azure.consumption.reservation_transactions
WHERE billingAccountId = '{{ billingAccountId }}' -- required
AND billingProfileId = '{{ billingProfileId }}' -- required
AND $filter = '{{ $filter }}'
;
```
</TabItem>
<TabItem value="list">

List of transactions for reserved instances on billing account scope. Note: The refund transactions are posted along with its purchase transaction (i.e. in the purchase billing month). For example, The refund is requested in May 2021. This refund transaction will have event date as May 2021 but the billing month as April 2020 when the reservation purchase was made. Note: ARM has a payload size limit of 12MB, so currently callers get 400 when the response size exceeds the ARM limit. In such cases, API call should be made with smaller date ranges.

```sql
SELECT
id,
name,
properties,
tags,
type
FROM azure.consumption.reservation_transactions
WHERE billingAccountId = '{{ billingAccountId }}' -- required
AND $filter = '{{ $filter }}'
AND useMarkupIfPartner = '{{ useMarkupIfPartner }}'
AND previewMarkupPercentage = '{{ previewMarkupPercentage }}'
;
```
</TabItem>
</Tabs>
