--- 
title: savings_plans
hide_title: false
hide_table_of_contents: false
keywords:
  - savings_plans
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

Creates, updates, deletes, gets or lists a <code>savings_plans</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>savings_plans</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing.savings_plans" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_by_billing_account"
    values={[
        { label: 'get_by_billing_account', value: 'get_by_billing_account' },
        { label: 'list_by_savings_plan_order', value: 'list_by_savings_plan_order' },
        { label: 'list_by_billing_account', value: 'list_by_billing_account' }
    ]}
>
<TabItem value="get_by_billing_account">

The request is completed.

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
    <td>Savings plan properties</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>Savings plan SKU</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_savings_plan_order">

The request is completed.

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
    <td>Savings plan properties</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>Savings plan SKU</td>
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

The request is completed.

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
    <td><CopyableCode code="nextLink" /></td>
    <td><code>string</code></td>
    <td>Url to get the next page.</td>
</tr>
<tr>
    <td><CopyableCode code="summary" /></td>
    <td><code>object</code></td>
    <td>The roll out count summary of the savings plans</td>
</tr>
<tr>
    <td><CopyableCode code="value" /></td>
    <td><code>array</code></td>
    <td></td>
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
    <td><a href="#get_by_billing_account"><CopyableCode code="get_by_billing_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-savingsPlanOrderId"><code>savingsPlanOrderId</code></a>, <a href="#parameter-savingsPlanId"><code>savingsPlanId</code></a></td>
    <td><a href="#parameter-expand"><code>expand</code></a></td>
    <td>Get savings plan by billing account.</td>
</tr>
<tr>
    <td><a href="#list_by_savings_plan_order"><CopyableCode code="list_by_savings_plan_order" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-savingsPlanOrderId"><code>savingsPlanOrderId</code></a></td>
    <td></td>
    <td>List savings plans in an order by billing account.</td>
</tr>
<tr>
    <td><a href="#list_by_billing_account"><CopyableCode code="list_by_billing_account" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a></td>
    <td><a href="#parameter-filter"><code>filter</code></a>, <a href="#parameter-orderBy"><code>orderBy</code></a>, <a href="#parameter-skiptoken"><code>skiptoken</code></a>, <a href="#parameter-take"><code>take</code></a>, <a href="#parameter-selectedState"><code>selectedState</code></a>, <a href="#parameter-refreshSummary"><code>refreshSummary</code></a></td>
    <td>List savings plans by billing account.</td>
</tr>
<tr>
    <td><a href="#update_by_billing_account"><CopyableCode code="update_by_billing_account" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-savingsPlanOrderId"><code>savingsPlanOrderId</code></a>, <a href="#parameter-savingsPlanId"><code>savingsPlanId</code></a></td>
    <td></td>
    <td>Update savings plan by billing account.</td>
</tr>
<tr>
    <td><a href="#validate_update_by_billing_account"><CopyableCode code="validate_update_by_billing_account" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountName"><code>billingAccountName</code></a>, <a href="#parameter-savingsPlanOrderId"><code>savingsPlanOrderId</code></a>, <a href="#parameter-savingsPlanId"><code>savingsPlanId</code></a></td>
    <td></td>
    <td>Validate savings plan patch by billing account.</td>
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
<tr id="parameter-savingsPlanId">
    <td><CopyableCode code="savingsPlanId" /></td>
    <td><code>string</code></td>
    <td>ID of the savings plan</td>
</tr>
<tr id="parameter-savingsPlanOrderId">
    <td><CopyableCode code="savingsPlanOrderId" /></td>
    <td><code>string</code></td>
    <td>Order ID of the savings plan</td>
</tr>
<tr id="parameter-expand">
    <td><CopyableCode code="expand" /></td>
    <td><code>string</code></td>
    <td>May be used to expand the planInformation.</td>
</tr>
<tr id="parameter-filter">
    <td><CopyableCode code="filter" /></td>
    <td><code>string</code></td>
    <td>The filter query option allows clients to filter a collection of resources that are addressed by a request URL.</td>
</tr>
<tr id="parameter-orderBy">
    <td><CopyableCode code="orderBy" /></td>
    <td><code>string</code></td>
    <td>The orderby query option allows clients to request resources in a particular order.</td>
</tr>
<tr id="parameter-refreshSummary">
    <td><CopyableCode code="refreshSummary" /></td>
    <td><code>string</code></td>
    <td>To indicate whether to refresh the roll up counts of the savings plans group by provisioning states</td>
</tr>
<tr id="parameter-selectedState">
    <td><CopyableCode code="selectedState" /></td>
    <td><code>string</code></td>
    <td>The selected provisioning state</td>
</tr>
<tr id="parameter-skiptoken">
    <td><CopyableCode code="skiptoken" /></td>
    <td><code>number</code></td>
    <td>The number of savings plans to skip from the list before returning results</td>
</tr>
<tr id="parameter-take">
    <td><CopyableCode code="take" /></td>
    <td><code>number</code></td>
    <td>The number of savings plans to return</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_by_billing_account"
    values={[
        { label: 'get_by_billing_account', value: 'get_by_billing_account' },
        { label: 'list_by_savings_plan_order', value: 'list_by_savings_plan_order' },
        { label: 'list_by_billing_account', value: 'list_by_billing_account' }
    ]}
>
<TabItem value="get_by_billing_account">

Get savings plan by billing account.

```sql
SELECT
properties,
sku,
tags
FROM azure.billing.savings_plans
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND savingsPlanOrderId = '{{ savingsPlanOrderId }}' -- required
AND savingsPlanId = '{{ savingsPlanId }}' -- required
AND expand = '{{ expand }}'
;
```
</TabItem>
<TabItem value="list_by_savings_plan_order">

List savings plans in an order by billing account.

```sql
SELECT
properties,
sku,
tags
FROM azure.billing.savings_plans
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND savingsPlanOrderId = '{{ savingsPlanOrderId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_billing_account">

List savings plans by billing account.

```sql
SELECT
nextLink,
summary,
value
FROM azure.billing.savings_plans
WHERE billingAccountName = '{{ billingAccountName }}' -- required
AND filter = '{{ filter }}'
AND orderBy = '{{ orderBy }}'
AND skiptoken = '{{ skiptoken }}'
AND take = '{{ take }}'
AND selectedState = '{{ selectedState }}'
AND refreshSummary = '{{ refreshSummary }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="update_by_billing_account"
    values={[
        { label: 'update_by_billing_account', value: 'update_by_billing_account' },
        { label: 'validate_update_by_billing_account', value: 'validate_update_by_billing_account' }
    ]}
>
<TabItem value="update_by_billing_account">

Update savings plan by billing account.

```sql
EXEC azure.billing.savings_plans.update_by_billing_account 
@billingAccountName='{{ billingAccountName }}' --required, 
@savingsPlanOrderId='{{ savingsPlanOrderId }}' --required, 
@savingsPlanId='{{ savingsPlanId }}' --required 
@@json=
'{
"properties": "{{ properties }}", 
"sku": "{{ sku }}", 
"tags": "{{ tags }}"
}'
;
```
</TabItem>
<TabItem value="validate_update_by_billing_account">

Validate savings plan patch by billing account.

```sql
EXEC azure.billing.savings_plans.validate_update_by_billing_account 
@billingAccountName='{{ billingAccountName }}' --required, 
@savingsPlanOrderId='{{ savingsPlanOrderId }}' --required, 
@savingsPlanId='{{ savingsPlanId }}' --required 
@@json=
'{
"benefits": "{{ benefits }}"
}'
;
```
</TabItem>
</Tabs>
