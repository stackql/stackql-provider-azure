--- 
title: accounts_invoice_sections_by_create_subscription_permissions
hide_title: false
hide_table_of_contents: false
keywords:
  - accounts_invoice_sections_by_create_subscription_permissions
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

Creates, updates, deletes, gets or lists an <code>accounts_invoice_sections_by_create_subscription_permissions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>accounts_invoice_sections_by_create_subscription_permissions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.accounts_invoice_sections_by_create_subscription_permissions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

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
    <td><CopyableCode code="billingProfileDisplayName" /></td>
    <td><code>string</code></td>
    <td>The name of the billing profile.</td>
</tr>
<tr>
    <td><CopyableCode code="billingProfileId" /></td>
    <td><code>string</code></td>
    <td>The fully qualified ID that uniquely identifies a billing profile.</td>
</tr>
<tr>
    <td><CopyableCode code="billingProfileSpendingLimit" /></td>
    <td><code>string</code></td>
    <td>The billing profile spending limit.</td>
</tr>
<tr>
    <td><CopyableCode code="billingProfileStatus" /></td>
    <td><code>string</code></td>
    <td>The status of the billing profile.</td>
</tr>
<tr>
    <td><CopyableCode code="billingProfileStatusReasonCode" /></td>
    <td><code>string</code></td>
    <td>Reason for the specified billing profile status.</td>
</tr>
<tr>
    <td><CopyableCode code="billingProfileSystemId" /></td>
    <td><code>string</code></td>
    <td>The system generated unique identifier for a billing profile.</td>
</tr>
<tr>
    <td><CopyableCode code="enabledAzurePlans" /></td>
    <td><code>array</code></td>
    <td>Enabled azure plans for the associated billing profile.</td>
</tr>
<tr>
    <td><CopyableCode code="invoiceSectionDisplayName" /></td>
    <td><code>string</code></td>
    <td>The name of the invoice section.</td>
</tr>
<tr>
    <td><CopyableCode code="invoiceSectionId" /></td>
    <td><code>string</code></td>
    <td>The fully qualified ID that uniquely identifies an invoice section.</td>
</tr>
<tr>
    <td><CopyableCode code="invoiceSectionSystemId" /></td>
    <td><code>string</code></td>
    <td>The system generated unique identifier for an invoice section.</td>
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
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a></td>
    <td><a href="#parameter-filter"><code>filter</code></a></td>
    <td>Lists the invoice sections for which the user has permission to create Azure subscriptions. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement.</td>
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
<tr id="parameter-filter">
    <td><CopyableCode code="filter" /></td>
    <td><code>string</code></td>
    <td>The filter query option allows clients to filter a collection of resources that are addressed by a request URL.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

Lists the invoice sections for which the user has permission to create Azure subscriptions. The operation is supported only for billing accounts with agreement type Microsoft Customer Agreement.

```sql
SELECT
billingProfileDisplayName,
billingProfileId,
billingProfileSpendingLimit,
billingProfileStatus,
billingProfileStatusReasonCode,
billingProfileSystemId,
enabledAzurePlans,
invoiceSectionDisplayName,
invoiceSectionId,
invoiceSectionSystemId
FROM azure.billing.accounts_invoice_sections_by_create_subscription_permissions
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND filter = '{{ filter }}'
;
```
</TabItem>
</Tabs>
