--- 
title: cost_allocation_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - cost_allocation_rules
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

Creates, updates, deletes, gets or lists a <code>cost_allocation_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>cost_allocation_rules</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cost_management.cost_allocation_rules" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
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
    <td>Azure Resource Manager Id for the rule. This is a read ony value.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the rule. This is a read only value.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Cost allocation rule properties</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type of the rule. This is a read only value of Microsoft.CostManagement/CostAllocationRule.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

List of cost allocation rules for the billing account or enterprise enrollment.

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
    <td>Azure Resource Manager Id for the rule. This is a read ony value.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the rule. This is a read only value.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Cost allocation rule properties</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type of the rule. This is a read only value of Microsoft.CostManagement/CostAllocationRule.</td>
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
    <td><a href="#parameter-billingAccountId"><code>billingAccountId</code></a>, <a href="#parameter-ruleName"><code>ruleName</code></a></td>
    <td></td>
    <td>Get a cost allocation rule by rule name and billing account or enterprise enrollment.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-billingAccountId"><code>billingAccountId</code></a></td>
    <td></td>
    <td>Get the list of all cost allocation rules for a billing account or enterprise enrollment.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-billingAccountId"><code>billingAccountId</code></a>, <a href="#parameter-ruleName"><code>ruleName</code></a></td>
    <td></td>
    <td>Create/Update a rule to allocate cost between different resources within a billing account or enterprise enrollment.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-billingAccountId"><code>billingAccountId</code></a>, <a href="#parameter-ruleName"><code>ruleName</code></a></td>
    <td></td>
    <td>Delete cost allocation rule for billing account or enterprise enrollment.</td>
</tr>
<tr>
    <td><a href="#check_name_availability"><CopyableCode code="check_name_availability" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-billingAccountId"><code>billingAccountId</code></a></td>
    <td></td>
    <td>Checks availability and correctness of a name for a cost allocation rule</td>
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
<tr id="parameter-ruleName">
    <td><CopyableCode code="ruleName" /></td>
    <td><code>string</code></td>
    <td>Cost allocation rule name. The name cannot include spaces or any non alphanumeric characters other than '_' and '-'. The max length is 260 characters.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Get a cost allocation rule by rule name and billing account or enterprise enrollment.

```sql
SELECT
id,
name,
properties,
type
FROM azure.cost_management.cost_allocation_rules
WHERE billingAccountId = '{{ billingAccountId }}' -- required
AND ruleName = '{{ ruleName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Get the list of all cost allocation rules for a billing account or enterprise enrollment.

```sql
SELECT
id,
name,
properties,
type
FROM azure.cost_management.cost_allocation_rules
WHERE billingAccountId = '{{ billingAccountId }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_or_update"
    values={[
        { label: 'create_or_update', value: 'create_or_update' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_or_update">

Create/Update a rule to allocate cost between different resources within a billing account or enterprise enrollment.

```sql
INSERT INTO azure.cost_management.cost_allocation_rules (
data__properties,
billingAccountId,
ruleName
)
SELECT 
'{{ properties }}',
'{{ billingAccountId }}',
'{{ ruleName }}'
RETURNING
id,
name,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: cost_allocation_rules
  props:
    - name: billingAccountId
      value: string
      description: Required parameter for the cost_allocation_rules resource.
    - name: ruleName
      value: string
      description: Required parameter for the cost_allocation_rules resource.
    - name: properties
      value: object
      description: |
        Cost allocation rule properties
```
</TabItem>
</Tabs>


## `DELETE` examples

<Tabs
    defaultValue="delete"
    values={[
        { label: 'delete', value: 'delete' }
    ]}
>
<TabItem value="delete">

Delete cost allocation rule for billing account or enterprise enrollment.

```sql
DELETE FROM azure.cost_management.cost_allocation_rules
WHERE billingAccountId = '{{ billingAccountId }}' --required
AND ruleName = '{{ ruleName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="check_name_availability"
    values={[
        { label: 'check_name_availability', value: 'check_name_availability' }
    ]}
>
<TabItem value="check_name_availability">

Checks availability and correctness of a name for a cost allocation rule

```sql
EXEC azure.cost_management.cost_allocation_rules.check_name_availability 
@billingAccountId='{{ billingAccountId }}' --required 
@@json=
'{
"name": "{{ name }}", 
"type": "{{ type }}"
}'
;
```
</TabItem>
</Tabs>
