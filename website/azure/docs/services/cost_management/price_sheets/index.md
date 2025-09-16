--- 
title: price_sheets
hide_title: false
hide_table_of_contents: false
keywords:
  - price_sheets
  - cost_management
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cost_management.price_sheets" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#download_by_invoice"><CopyableCode code="download_by_invoice" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a>, <a href="#parameter-invoiceName"><code>invoiceName</code></a></td>
    <td></td>
    <td>Gets a URL to download the pricesheet for an invoice. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement.</td>
</tr>
<tr>
    <td><a href="#download_by_billing_profile"><CopyableCode code="download_by_billing_profile" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-billingProfileName"><code>billingProfileName</code></a></td>
    <td></td>
    <td>Gets a URL to download the current month's pricesheet for a billing profile. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement.<br /> <br /> You can use the new 2023-09-01 API version for billing periods January 2023 onwards. Azure Reserved Instance (RI) pricing is only available through the new version of the API. <br /> <br /> Due to Azure product growth, the Azure price sheet download experience in this preview version will be updated from a single csv/json file to a Zip file containing multiple csv/json files, each with max size of 75MB.</td>
</tr>
<tr>
    <td><a href="#download_by_billing_account"><CopyableCode code="download_by_billing_account" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountId"><code>billingAccountId</code></a>, <a href="#parameter-billingPeriodName"><code>billingPeriodName</code></a></td>
    <td></td>
    <td>Generates the pricesheet for the provided billing period asynchronously based on the Enrollment ID. This is for Enterprise Agreement customers. <br /> You can use the new 2023-09-01 API version at '/providers/Microsoft.Billing/billingAccounts/&#123;billingAccountId&#125;/billingPeriods/&#123;billingPeriodName&#125;/providers/Microsoft.CostManagement/pricesheets/default/download' for billing periods January 2023 onwards. With a new schema detailed below, the new price sheet provides more information and includes prices for Azure Reserved Instances (RI) for the current billing period.<br /> <br /> We recommend downloading an Azure Price Sheet for when entering a new billing period if you would maintain a record of past Azure Reserved Instance (RI) pricing. Due to Azure product growth, the Azure price sheet download experience in this preview version will be updated from a single .csv file to a zip file containing multiple csv files, each with max size of 75MB.</td>
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
<tr id="parameter-billingAccountName">
    <td><CopyableCode code="billingAccountName" /></td>
    <td><code>string</code></td>
    <td>The ID that uniquely identifies a billing account.</td>
</tr>
<tr id="parameter-billingPeriodName">
    <td><CopyableCode code="billingPeriodName" /></td>
    <td><code>string</code></td>
    <td>Billing Period Name.</td>
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
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="download_by_invoice"
    values={[
        { label: 'download_by_invoice', value: 'download_by_invoice' },
        { label: 'download_by_billing_profile', value: 'download_by_billing_profile' },
        { label: 'download_by_billing_account', value: 'download_by_billing_account' }
    ]}
>
<TabItem value="download_by_invoice">

Gets a URL to download the pricesheet for an invoice. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement.

```sql
EXEC azure.cost_management.price_sheets.download_by_invoice 
@billingAccountName='{{ billingAccountName }}' --required, 
@billingProfileName='{{ billingProfileName }}' --required, 
@invoiceName='{{ invoiceName }}' --required
;
```
</TabItem>
<TabItem value="download_by_billing_profile">

Gets a URL to download the current month's pricesheet for a billing profile. The operation is supported for billing accounts with agreement type Microsoft Partner Agreement or Microsoft Customer Agreement.<br /> <br /> You can use the new 2023-09-01 API version for billing periods January 2023 onwards. Azure Reserved Instance (RI) pricing is only available through the new version of the API. <br /> <br /> Due to Azure product growth, the Azure price sheet download experience in this preview version will be updated from a single csv/json file to a Zip file containing multiple csv/json files, each with max size of 75MB.

```sql
EXEC azure.cost_management.price_sheets.download_by_billing_profile 
@billingAccountName='{{ billingAccountName }}' --required, 
@billingProfileName='{{ billingProfileName }}' --required
;
```
</TabItem>
<TabItem value="download_by_billing_account">

Generates the pricesheet for the provided billing period asynchronously based on the Enrollment ID. This is for Enterprise Agreement customers. <br /> You can use the new 2023-09-01 API version at '/providers/Microsoft.Billing/billingAccounts/&#123;billingAccountId&#125;/billingPeriods/&#123;billingPeriodName&#125;/providers/Microsoft.CostManagement/pricesheets/default/download' for billing periods January 2023 onwards. With a new schema detailed below, the new price sheet provides more information and includes prices for Azure Reserved Instances (RI) for the current billing period.<br /> <br /> We recommend downloading an Azure Price Sheet for when entering a new billing period if you would maintain a record of past Azure Reserved Instance (RI) pricing. Due to Azure product growth, the Azure price sheet download experience in this preview version will be updated from a single .csv file to a zip file containing multiple csv files, each with max size of 75MB.

```sql
EXEC azure.cost_management.price_sheets.download_by_billing_account 
@billingAccountId='{{ billingAccountId }}' --required, 
@billingPeriodName='{{ billingPeriodName }}' --required
;
```
</TabItem>
</Tabs>
