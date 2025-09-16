--- 
title: savings_plan_order_aliases
hide_title: false
hide_table_of_contents: false
keywords:
  - savings_plan_order_aliases
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

Creates, updates, deletes, gets or lists a <code>savings_plan_order_aliases</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>savings_plan_order_aliases</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing_benefits.savings_plan_order_aliases" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
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
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Resource provider kind</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Savings plan order alias properties</td>
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
    <td><a href="#parameter-savingsPlanOrderAliasName"><code>savingsPlanOrderAliasName</code></a></td>
    <td></td>
    <td>Get a savings plan.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-savingsPlanOrderAliasName"><code>savingsPlanOrderAliasName</code></a>, <a href="#parameter-data__sku"><code>data__sku</code></a></td>
    <td></td>
    <td>Create a savings plan. Learn more about permissions needed at https://go.microsoft.com/fwlink/?linkid=2215851</td>
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
<tr id="parameter-savingsPlanOrderAliasName">
    <td><CopyableCode code="savingsPlanOrderAliasName" /></td>
    <td><code>string</code></td>
    <td>Name of the savings plan order alias</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Get a savings plan.

```sql
SELECT
id,
name,
kind,
properties,
sku,
systemData,
type
FROM azure.billing_benefits.savings_plan_order_aliases
WHERE savingsPlanOrderAliasName = '{{ savingsPlanOrderAliasName }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

Create a savings plan. Learn more about permissions needed at https://go.microsoft.com/fwlink/?linkid=2215851

```sql
INSERT INTO azure.billing_benefits.savings_plan_order_aliases (
data__sku,
data__kind,
data__properties,
savingsPlanOrderAliasName
)
SELECT 
'{{ sku }}' /* required */,
'{{ kind }}',
'{{ properties }}',
'{{ savingsPlanOrderAliasName }}'
RETURNING
id,
name,
kind,
properties,
sku,
systemData,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: savings_plan_order_aliases
  props:
    - name: savingsPlanOrderAliasName
      value: string
      description: Required parameter for the savings_plan_order_aliases resource.
    - name: sku
      value: object
      description: |
        The SKU to be applied for this resource
    - name: kind
      value: string
      description: |
        Resource provider kind
    - name: properties
      value: object
      description: |
        Savings plan order alias properties
```
</TabItem>
</Tabs>
