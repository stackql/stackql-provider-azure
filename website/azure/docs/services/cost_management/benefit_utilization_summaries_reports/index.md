--- 
title: benefit_utilization_summaries_reports
hide_title: false
hide_table_of_contents: false
keywords:
  - benefit_utilization_summaries_reports
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

Creates, updates, deletes, gets or lists a <code>benefit_utilization_summaries_reports</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>benefit_utilization_summaries_reports</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cost_management.benefit_utilization_summaries_reports" /></td></tr>
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
    <td><a href="#generate_by_billing_account"><CopyableCode code="generate_by_billing_account" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountId"><code>billingAccountId</code></a>, <a href="#parameter-startDate"><code>startDate</code></a>, <a href="#parameter-endDate"><code>endDate</code></a>, <a href="#parameter-grain"><code>grain</code></a></td>
    <td></td>
    <td>Triggers generation of a benefit utilization summaries report for the provided billing account. This API supports only enrollment accounts.</td>
</tr>
<tr>
    <td><a href="#generate_by_billing_profile"><CopyableCode code="generate_by_billing_profile" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountId"><code>billingAccountId</code></a>, <a href="#parameter-billingProfileId"><code>billingProfileId</code></a>, <a href="#parameter-startDate"><code>startDate</code></a>, <a href="#parameter-endDate"><code>endDate</code></a>, <a href="#parameter-grain"><code>grain</code></a></td>
    <td></td>
    <td>Triggers generation of a benefit utilization summaries report for the provided billing account and billing profile.</td>
</tr>
<tr>
    <td><a href="#generate_by_reservation_order_id"><CopyableCode code="generate_by_reservation_order_id" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-reservationOrderId"><code>reservationOrderId</code></a>, <a href="#parameter-startDate"><code>startDate</code></a>, <a href="#parameter-endDate"><code>endDate</code></a>, <a href="#parameter-grain"><code>grain</code></a></td>
    <td></td>
    <td>Triggers generation of a benefit utilization summaries report for the provided reservation order.</td>
</tr>
<tr>
    <td><a href="#generate_by_reservation_id"><CopyableCode code="generate_by_reservation_id" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-reservationOrderId"><code>reservationOrderId</code></a>, <a href="#parameter-reservationId"><code>reservationId</code></a>, <a href="#parameter-startDate"><code>startDate</code></a>, <a href="#parameter-endDate"><code>endDate</code></a>, <a href="#parameter-grain"><code>grain</code></a></td>
    <td></td>
    <td>Triggers generation of a benefit utilization summaries report for the provided reservation.</td>
</tr>
<tr>
    <td><a href="#generate_by_savings_plan_order_id"><CopyableCode code="generate_by_savings_plan_order_id" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-savingsPlanOrderId"><code>savingsPlanOrderId</code></a>, <a href="#parameter-startDate"><code>startDate</code></a>, <a href="#parameter-endDate"><code>endDate</code></a>, <a href="#parameter-grain"><code>grain</code></a></td>
    <td></td>
    <td>Triggers generation of a benefit utilization summaries report for the provided savings plan order.</td>
</tr>
<tr>
    <td><a href="#generate_by_savings_plan_id"><CopyableCode code="generate_by_savings_plan_id" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-savingsPlanOrderId"><code>savingsPlanOrderId</code></a>, <a href="#parameter-savingsPlanId"><code>savingsPlanId</code></a>, <a href="#parameter-startDate"><code>startDate</code></a>, <a href="#parameter-endDate"><code>endDate</code></a>, <a href="#parameter-grain"><code>grain</code></a></td>
    <td></td>
    <td>Triggers generation of a benefit utilization summaries report for the provided savings plan.</td>
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
    <td>Billing profile ID.</td>
</tr>
<tr id="parameter-reservationId">
    <td><CopyableCode code="reservationId" /></td>
    <td><code>string</code></td>
    <td>Reservation ID</td>
</tr>
<tr id="parameter-reservationOrderId">
    <td><CopyableCode code="reservationOrderId" /></td>
    <td><code>string</code></td>
    <td>Reservation Order ID</td>
</tr>
<tr id="parameter-savingsPlanId">
    <td><CopyableCode code="savingsPlanId" /></td>
    <td><code>string</code></td>
    <td>Savings plan ID.</td>
</tr>
<tr id="parameter-savingsPlanOrderId">
    <td><CopyableCode code="savingsPlanOrderId" /></td>
    <td><code>string</code></td>
    <td>Savings plan order ID.</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="generate_by_billing_account"
    values={[
        { label: 'generate_by_billing_account', value: 'generate_by_billing_account' },
        { label: 'generate_by_billing_profile', value: 'generate_by_billing_profile' },
        { label: 'generate_by_reservation_order_id', value: 'generate_by_reservation_order_id' },
        { label: 'generate_by_reservation_id', value: 'generate_by_reservation_id' },
        { label: 'generate_by_savings_plan_order_id', value: 'generate_by_savings_plan_order_id' },
        { label: 'generate_by_savings_plan_id', value: 'generate_by_savings_plan_id' }
    ]}
>
<TabItem value="generate_by_billing_account">

Triggers generation of a benefit utilization summaries report for the provided billing account. This API supports only enrollment accounts.

```sql
EXEC azure.cost_management.benefit_utilization_summaries_reports.generate_by_billing_account 
@billingAccountId='{{ billingAccountId }}' --required 
@@json=
'{
"billingAccountId": "{{ billingAccountId }}", 
"billingProfileId": "{{ billingProfileId }}", 
"benefitOrderId": "{{ benefitOrderId }}", 
"benefitId": "{{ benefitId }}", 
"grain": "{{ grain }}", 
"startDate": "{{ startDate }}", 
"endDate": "{{ endDate }}", 
"kind": "{{ kind }}"
}'
;
```
</TabItem>
<TabItem value="generate_by_billing_profile">

Triggers generation of a benefit utilization summaries report for the provided billing account and billing profile.

```sql
EXEC azure.cost_management.benefit_utilization_summaries_reports.generate_by_billing_profile 
@billingAccountId='{{ billingAccountId }}' --required, 
@billingProfileId='{{ billingProfileId }}' --required 
@@json=
'{
"billingAccountId": "{{ billingAccountId }}", 
"billingProfileId": "{{ billingProfileId }}", 
"benefitOrderId": "{{ benefitOrderId }}", 
"benefitId": "{{ benefitId }}", 
"grain": "{{ grain }}", 
"startDate": "{{ startDate }}", 
"endDate": "{{ endDate }}", 
"kind": "{{ kind }}"
}'
;
```
</TabItem>
<TabItem value="generate_by_reservation_order_id">

Triggers generation of a benefit utilization summaries report for the provided reservation order.

```sql
EXEC azure.cost_management.benefit_utilization_summaries_reports.generate_by_reservation_order_id 
@reservationOrderId='{{ reservationOrderId }}' --required 
@@json=
'{
"billingAccountId": "{{ billingAccountId }}", 
"billingProfileId": "{{ billingProfileId }}", 
"benefitOrderId": "{{ benefitOrderId }}", 
"benefitId": "{{ benefitId }}", 
"grain": "{{ grain }}", 
"startDate": "{{ startDate }}", 
"endDate": "{{ endDate }}", 
"kind": "{{ kind }}"
}'
;
```
</TabItem>
<TabItem value="generate_by_reservation_id">

Triggers generation of a benefit utilization summaries report for the provided reservation.

```sql
EXEC azure.cost_management.benefit_utilization_summaries_reports.generate_by_reservation_id 
@reservationOrderId='{{ reservationOrderId }}' --required, 
@reservationId='{{ reservationId }}' --required 
@@json=
'{
"billingAccountId": "{{ billingAccountId }}", 
"billingProfileId": "{{ billingProfileId }}", 
"benefitOrderId": "{{ benefitOrderId }}", 
"benefitId": "{{ benefitId }}", 
"grain": "{{ grain }}", 
"startDate": "{{ startDate }}", 
"endDate": "{{ endDate }}", 
"kind": "{{ kind }}"
}'
;
```
</TabItem>
<TabItem value="generate_by_savings_plan_order_id">

Triggers generation of a benefit utilization summaries report for the provided savings plan order.

```sql
EXEC azure.cost_management.benefit_utilization_summaries_reports.generate_by_savings_plan_order_id 
@savingsPlanOrderId='{{ savingsPlanOrderId }}' --required 
@@json=
'{
"billingAccountId": "{{ billingAccountId }}", 
"billingProfileId": "{{ billingProfileId }}", 
"benefitOrderId": "{{ benefitOrderId }}", 
"benefitId": "{{ benefitId }}", 
"grain": "{{ grain }}", 
"startDate": "{{ startDate }}", 
"endDate": "{{ endDate }}", 
"kind": "{{ kind }}"
}'
;
```
</TabItem>
<TabItem value="generate_by_savings_plan_id">

Triggers generation of a benefit utilization summaries report for the provided savings plan.

```sql
EXEC azure.cost_management.benefit_utilization_summaries_reports.generate_by_savings_plan_id 
@savingsPlanOrderId='{{ savingsPlanOrderId }}' --required, 
@savingsPlanId='{{ savingsPlanId }}' --required 
@@json=
'{
"billingAccountId": "{{ billingAccountId }}", 
"billingProfileId": "{{ billingProfileId }}", 
"benefitOrderId": "{{ benefitOrderId }}", 
"benefitId": "{{ benefitId }}", 
"grain": "{{ grain }}", 
"startDate": "{{ startDate }}", 
"endDate": "{{ endDate }}", 
"kind": "{{ kind }}"
}'
;
```
</TabItem>
</Tabs>
