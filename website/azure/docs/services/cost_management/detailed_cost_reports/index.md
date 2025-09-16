--- 
title: detailed_cost_reports
hide_title: false
hide_table_of_contents: false
keywords:
  - detailed_cost_reports
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

Creates, updates, deletes, gets or lists a <code>detailed_cost_reports</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>detailed_cost_reports</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cost_management.detailed_cost_reports" /></td></tr>
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
    <td><a href="#create_operation"><CopyableCode code="create_operation" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a></td>
    <td></td>
    <td>Generates the detailed cost report for provided date range, billing period(only enterprise customers) or Invoice ID asynchronously at a certain scope. Call returns a 202 with header Azure-Consumption-AsyncOperation providing a link to the operation created. A call on the operation will provide the status and if the operation is completed the blob file where generated detailed cost report is being stored.</td>
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
<tr id="parameter-scope">
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>The ARM Resource ID for subscription, billing account, or other billing scopes.Currently Resource Group and Management Group are not supported. For details, see https://aka.ms/costmgmt/scopes.</td>
</tr>
</tbody>
</table>

## `INSERT` examples

<Tabs
    defaultValue="create_operation"
    values={[
        { label: 'create_operation', value: 'create_operation' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_operation">

Generates the detailed cost report for provided date range, billing period(only enterprise customers) or Invoice ID asynchronously at a certain scope. Call returns a 202 with header Azure-Consumption-AsyncOperation providing a link to the operation created. A call on the operation will provide the status and if the operation is completed the blob file where generated detailed cost report is being stored.

```sql
INSERT INTO azure.cost_management.detailed_cost_reports (
data__metric,
data__timePeriod,
data__billingPeriod,
data__invoiceId,
data__customerId,
scope
)
SELECT 
'{{ metric }}',
'{{ timePeriod }}',
'{{ billingPeriod }}',
'{{ invoiceId }}',
'{{ customerId }}',
'{{ scope }}'
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
- name: detailed_cost_reports
  props:
    - name: scope
      value: string
      description: Required parameter for the detailed_cost_reports resource.
    - name: metric
      value: string
      description: |
        The type of the detailed report. By default ActualCost is provided
      valid_values: ['ActualCost', 'AmortizedCost']
    - name: timePeriod
      value: object
      description: |
        Has time period for pulling data for the cost detailed report. Can only have one of either timePeriod or invoiceId or billingPeriod parameters. If none provided current month cost is provided.
    - name: billingPeriod
      value: string
      description: |
        Billing period in YearMonth(e.g. 202008) format. Only for legacy enterprise customers can use this. Can only have one of either timePeriod or invoiceId or billingPeriod parameters. If none provided current month cost is provided.
    - name: invoiceId
      value: string
      description: |
        Invoice ID for Pay-as-you-go and Microsoft Customer Agreement scopes. Can only have one of either timePeriod or invoiceId or billingPeriod parameters. If none provided current month cost is provided.
    - name: customerId
      value: string
      description: |
        Customer ID for Microsoft Customer Agreement scopes (Invoice Id is also required for this).
```
</TabItem>
</Tabs>
