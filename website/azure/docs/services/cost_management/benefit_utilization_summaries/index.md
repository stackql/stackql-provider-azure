--- 
title: benefit_utilization_summaries
hide_title: false
hide_table_of_contents: false
keywords:
  - benefit_utilization_summaries
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

Creates, updates, deletes, gets or lists a <code>benefit_utilization_summaries</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>benefit_utilization_summaries</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cost_management.benefit_utilization_summaries" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list_by_billing_profile_id"
    values={[
        { label: 'list_by_billing_profile_id', value: 'list_by_billing_profile_id' },
        { label: 'list_by_savings_plan_id', value: 'list_by_savings_plan_id' },
        { label: 'list_by_billing_account_id', value: 'list_by_billing_account_id' },
        { label: 'list_by_savings_plan_order', value: 'list_by_savings_plan_order' }
    ]}
>
<TabItem value="list_by_billing_profile_id">

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
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Supported values: 'SavingsPlan'.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_savings_plan_id">

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
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Supported values: 'SavingsPlan'.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_billing_account_id">

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
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Supported values: 'SavingsPlan'.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_savings_plan_order">

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
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Supported values: 'SavingsPlan'.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
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
    <td><a href="#list_by_billing_profile_id"><CopyableCode code="list_by_billing_profile_id" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountId"><code>billingAccountId</code></a>, <a href="#parameter-billingProfileId"><code>billingProfileId</code></a></td>
    <td><a href="#parameter-grainParameter"><code>grainParameter</code></a>, <a href="#parameter-filter"><code>filter</code></a></td>
    <td>Lists savings plan utilization summaries for billing profile. Supported at grain values: 'Daily' and 'Monthly'.</td>
</tr>
<tr>
    <td><a href="#list_by_savings_plan_id"><CopyableCode code="list_by_savings_plan_id" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-savingsPlanOrderId"><code>savingsPlanOrderId</code></a>, <a href="#parameter-savingsPlanId"><code>savingsPlanId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-grainParameter"><code>grainParameter</code></a></td>
    <td>Lists the savings plan utilization summaries for daily or monthly grain.</td>
</tr>
<tr>
    <td><a href="#list_by_billing_account_id"><CopyableCode code="list_by_billing_account_id" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountId"><code>billingAccountId</code></a></td>
    <td><a href="#parameter-grainParameter"><code>grainParameter</code></a>, <a href="#parameter-filter"><code>filter</code></a></td>
    <td>Lists savings plan utilization summaries for the enterprise agreement scope. Supported at grain values: 'Daily' and 'Monthly'.</td>
</tr>
<tr>
    <td><a href="#list_by_savings_plan_order"><CopyableCode code="list_by_savings_plan_order" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-savingsPlanOrderId"><code>savingsPlanOrderId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-grainParameter"><code>grainParameter</code></a></td>
    <td>Lists the savings plan utilization summaries for daily or monthly grain.</td>
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
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>Supports filtering by properties/usageDate.</td>
</tr>
<tr id="parameter-filter">
    <td><CopyableCode code="filter" /></td>
    <td><code>string</code></td>
    <td>Supports filtering by properties/benefitId, properties/benefitOrderId and properties/usageDate.</td>
</tr>
<tr id="parameter-grainParameter">
    <td><CopyableCode code="grainParameter" /></td>
    <td><code>string</code></td>
    <td>Grain.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list_by_billing_profile_id"
    values={[
        { label: 'list_by_billing_profile_id', value: 'list_by_billing_profile_id' },
        { label: 'list_by_savings_plan_id', value: 'list_by_savings_plan_id' },
        { label: 'list_by_billing_account_id', value: 'list_by_billing_account_id' },
        { label: 'list_by_savings_plan_order', value: 'list_by_savings_plan_order' }
    ]}
>
<TabItem value="list_by_billing_profile_id">

Lists savings plan utilization summaries for billing profile. Supported at grain values: 'Daily' and 'Monthly'.

```sql
SELECT
id,
name,
kind,
systemData,
type
FROM azure.cost_management.benefit_utilization_summaries
WHERE billingAccountId = '{{ billingAccountId }}' -- required
AND billingProfileId = '{{ billingProfileId }}' -- required
AND grainParameter = '{{ grainParameter }}'
AND filter = '{{ filter }}'
;
```
</TabItem>
<TabItem value="list_by_savings_plan_id">

Lists the savings plan utilization summaries for daily or monthly grain.

```sql
SELECT
id,
name,
kind,
systemData,
type
FROM azure.cost_management.benefit_utilization_summaries
WHERE savingsPlanOrderId = '{{ savingsPlanOrderId }}' -- required
AND savingsPlanId = '{{ savingsPlanId }}' -- required
AND $filter = '{{ $filter }}'
AND grainParameter = '{{ grainParameter }}'
;
```
</TabItem>
<TabItem value="list_by_billing_account_id">

Lists savings plan utilization summaries for the enterprise agreement scope. Supported at grain values: 'Daily' and 'Monthly'.

```sql
SELECT
id,
name,
kind,
systemData,
type
FROM azure.cost_management.benefit_utilization_summaries
WHERE billingAccountId = '{{ billingAccountId }}' -- required
AND grainParameter = '{{ grainParameter }}'
AND filter = '{{ filter }}'
;
```
</TabItem>
<TabItem value="list_by_savings_plan_order">

Lists the savings plan utilization summaries for daily or monthly grain.

```sql
SELECT
id,
name,
kind,
systemData,
type
FROM azure.cost_management.benefit_utilization_summaries
WHERE savingsPlanOrderId = '{{ savingsPlanOrderId }}' -- required
AND $filter = '{{ $filter }}'
AND grainParameter = '{{ grainParameter }}'
;
```
</TabItem>
</Tabs>
