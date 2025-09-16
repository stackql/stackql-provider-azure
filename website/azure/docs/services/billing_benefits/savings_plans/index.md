--- 
title: savings_plans
hide_title: false
hide_table_of_contents: false
keywords:
  - savings_plans
  - billing_benefits
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing_benefits.savings_plans" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' },
        { label: 'list_all', value: 'list_all' }
    ]}
>
<TabItem value="get">

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
    <td>Savings plan properties</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The SKU to be applied for this resource</td>
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
<TabItem value="list">

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
    <td>Savings plan properties</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The SKU to be applied for this resource</td>
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
<TabItem value="list_all">

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
    <td>Savings plan properties</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The SKU to be applied for this resource</td>
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
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-savingsPlanOrderId"><code>savingsPlanOrderId</code></a>, <a href="#parameter-savingsPlanId"><code>savingsPlanId</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>Get savings plan.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-savingsPlanOrderId"><code>savingsPlanOrderId</code></a></td>
    <td></td>
    <td>List savings plans in an order.</td>
</tr>
<tr>
    <td><a href="#list_all"><CopyableCode code="list_all" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$orderby"><code>$orderby</code></a>, <a href="#parameter-refreshSummary"><code>refreshSummary</code></a>, <a href="#parameter-$skiptoken"><code>$skiptoken</code></a>, <a href="#parameter-selectedState"><code>selectedState</code></a>, <a href="#parameter-take"><code>take</code></a></td>
    <td>List savings plans.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-savingsPlanOrderId"><code>savingsPlanOrderId</code></a>, <a href="#parameter-savingsPlanId"><code>savingsPlanId</code></a></td>
    <td></td>
    <td>Update savings plan.</td>
</tr>
<tr>
    <td><a href="#validate_update"><CopyableCode code="validate_update" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-savingsPlanOrderId"><code>savingsPlanOrderId</code></a>, <a href="#parameter-savingsPlanId"><code>savingsPlanId</code></a></td>
    <td></td>
    <td>Validate savings plan patch.</td>
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
<tr id="parameter-$expand">
    <td><CopyableCode code="$expand" /></td>
    <td><code>string</code></td>
    <td>May be used to expand the detail information of some properties.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>May be used to filter by reservation properties. The filter supports 'eq', 'or', and 'and'. It does not currently support 'ne', 'gt', 'le', 'ge', or 'not'. Reservation properties include sku/name, properties/&#123;appliedScopeType, archived, displayName, displayProvisioningState, effectiveDateTime, expiryDate, provisioningState, quantity, renew, reservedResourceType, term, userFriendlyAppliedScopeType, userFriendlyRenewState&#125;</td>
</tr>
<tr id="parameter-$orderby">
    <td><CopyableCode code="$orderby" /></td>
    <td><code>string</code></td>
    <td>May be used to sort order by reservation properties.</td>
</tr>
<tr id="parameter-$skiptoken">
    <td><CopyableCode code="$skiptoken" /></td>
    <td><code>number</code></td>
    <td>The number of savings plans to skip from the list before returning results</td>
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
<tr id="parameter-take">
    <td><CopyableCode code="take" /></td>
    <td><code>number</code></td>
    <td>To number of savings plans to return</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' },
        { label: 'list_all', value: 'list_all' }
    ]}
>
<TabItem value="get">

Get savings plan.

```sql
SELECT
id,
name,
properties,
sku,
systemData,
type
FROM azure.billing_benefits.savings_plans
WHERE savingsPlanOrderId = '{{ savingsPlanOrderId }}' -- required
AND savingsPlanId = '{{ savingsPlanId }}' -- required
AND $expand = '{{ $expand }}'
;
```
</TabItem>
<TabItem value="list">

List savings plans in an order.

```sql
SELECT
id,
name,
properties,
sku,
systemData,
type
FROM azure.billing_benefits.savings_plans
WHERE savingsPlanOrderId = '{{ savingsPlanOrderId }}' -- required
;
```
</TabItem>
<TabItem value="list_all">

List savings plans.

```sql
SELECT
id,
name,
properties,
sku,
systemData,
type
FROM azure.billing_benefits.savings_plans
WHERE $filter = '{{ $filter }}'
AND $orderby = '{{ $orderby }}'
AND refreshSummary = '{{ refreshSummary }}'
AND $skiptoken = '{{ $skiptoken }}'
AND selectedState = '{{ selectedState }}'
AND take = '{{ take }}'
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

Update savings plan.

```sql
UPDATE azure.billing_benefits.savings_plans
SET 
data__properties = '{{ properties }}'
WHERE 
savingsPlanOrderId = '{{ savingsPlanOrderId }}' --required
AND savingsPlanId = '{{ savingsPlanId }}' --required
RETURNING
id,
name,
properties,
sku,
systemData,
type;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="validate_update"
    values={[
        { label: 'validate_update', value: 'validate_update' }
    ]}
>
<TabItem value="validate_update">

Validate savings plan patch.

```sql
EXEC azure.billing_benefits.savings_plans.validate_update 
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
