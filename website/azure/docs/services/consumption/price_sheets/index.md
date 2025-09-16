--- 
title: price_sheets
hide_title: false
hide_table_of_contents: false
keywords:
  - price_sheets
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

Creates, updates, deletes, gets or lists a <code>price_sheets</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>price_sheets</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.consumption.price_sheets" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_by_billing_period"
    values={[
        { label: 'get_by_billing_period', value: 'get_by_billing_period' },
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get_by_billing_period">

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
    <td>Fully qualified resource ID for the resource. Ex - /subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>price sheet result. It contains the pricesheet associated with billing period (title: Price sheet properties)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get">

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
    <td>Fully qualified resource ID for the resource. Ex - /subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>price sheet result. It contains the pricesheet associated with billing period (title: Price sheet properties)</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
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
    <td><a href="#get_by_billing_period"><CopyableCode code="get_by_billing_period" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-billingPeriodName"><code>billingPeriodName</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a>, <a href="#parameter-$skiptoken"><code>$skiptoken</code></a>, <a href="#parameter-$top"><code>$top</code></a></td>
    <td>Get the price sheet for a scope by subscriptionId and billing period. Price sheet is available via this API only for May 1, 2014 or later.</td>
</tr>
<tr>
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a>, <a href="#parameter-$skiptoken"><code>$skiptoken</code></a>, <a href="#parameter-$top"><code>$top</code></a></td>
    <td>Gets the price sheet for a subscription. Price sheet is available via this API only for May 1, 2014 or later.</td>
</tr>
<tr>
    <td><a href="#download_by_billing_account_period"><CopyableCode code="download_by_billing_account_period" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountId"><code>billingAccountId</code></a>, <a href="#parameter-billingPeriodName"><code>billingPeriodName</code></a></td>
    <td></td>
    <td>Generates the pricesheet for the provided billing period asynchronously based on the enrollment id</td>
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
<tr id="parameter-billingPeriodName">
    <td><CopyableCode code="billingPeriodName" /></td>
    <td><code>string</code></td>
    <td>Billing Period Name.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Azure Subscription ID.</td>
</tr>
<tr id="parameter-$expand">
    <td><CopyableCode code="$expand" /></td>
    <td><code>string</code></td>
    <td>May be used to expand the properties/meterDetails within a price sheet. By default, these fields are not included when returning price sheet.</td>
</tr>
<tr id="parameter-$skiptoken">
    <td><CopyableCode code="$skiptoken" /></td>
    <td><code>string</code></td>
    <td>Skiptoken is only used if a previous operation returned a partial result. If a previous response contains a nextLink element, the value of the nextLink element will include a skiptoken parameter that specifies a starting point to use for subsequent calls.</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int32)</code></td>
    <td>May be used to limit the number of results to the top N results.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_by_billing_period"
    values={[
        { label: 'get_by_billing_period', value: 'get_by_billing_period' },
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get_by_billing_period">

Get the price sheet for a scope by subscriptionId and billing period. Price sheet is available via this API only for May 1, 2014 or later.

```sql
SELECT
id,
name,
properties,
type
FROM azure.consumption.price_sheets
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND billingPeriodName = '{{ billingPeriodName }}' -- required
AND $expand = '{{ $expand }}'
AND $skiptoken = '{{ $skiptoken }}'
AND $top = '{{ $top }}'
;
```
</TabItem>
<TabItem value="get">

Gets the price sheet for a subscription. Price sheet is available via this API only for May 1, 2014 or later.

```sql
SELECT
id,
name,
properties,
type
FROM azure.consumption.price_sheets
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND $expand = '{{ $expand }}'
AND $skiptoken = '{{ $skiptoken }}'
AND $top = '{{ $top }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="download_by_billing_account_period"
    values={[
        { label: 'download_by_billing_account_period', value: 'download_by_billing_account_period' }
    ]}
>
<TabItem value="download_by_billing_account_period">

Generates the pricesheet for the provided billing period asynchronously based on the enrollment id

```sql
EXEC azure.consumption.price_sheets.download_by_billing_account_period 
@billingAccountId='{{ billingAccountId }}' --required, 
@billingPeriodName='{{ billingPeriodName }}' --required
;
```
</TabItem>
</Tabs>
