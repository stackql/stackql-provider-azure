--- 
title: aggregated_costs
hide_title: false
hide_table_of_contents: false
keywords:
  - aggregated_costs
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

Creates, updates, deletes, gets or lists an <code>aggregated_costs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>aggregated_costs</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.consumption.aggregated_costs" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_by_management_group"
    values={[
        { label: 'get_by_management_group', value: 'get_by_management_group' }
    ]}
>
<TabItem value="get_by_management_group">

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
    <td>The properties of the Management Group Aggregated Cost. (title: Management Group Aggregated Cost properties)</td>
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
    <td><a href="#get_by_management_group"><CopyableCode code="get_by_management_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-managementGroupId"><code>managementGroupId</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Provides the aggregate cost of a management group and all child management groups by current billing period.</td>
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
<tr id="parameter-managementGroupId">
    <td><CopyableCode code="managementGroupId" /></td>
    <td><code>string</code></td>
    <td>Azure Management Group ID.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>May be used to filter aggregated cost by properties/usageStart (Utc time), properties/usageEnd (Utc time). The filter supports 'eq', 'lt', 'gt', 'le', 'ge', and 'and'. It does not currently support 'ne', 'or', or 'not'. Tag filter is a key value pair string where key and value is separated by a colon (:).</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_by_management_group"
    values={[
        { label: 'get_by_management_group', value: 'get_by_management_group' }
    ]}
>
<TabItem value="get_by_management_group">

Provides the aggregate cost of a management group and all child management groups by current billing period.

```sql
SELECT
id,
name,
properties,
type
FROM azure.consumption.aggregated_costs
WHERE managementGroupId = '{{ managementGroupId }}' -- required
AND $filter = '{{ $filter }}'
;
```
</TabItem>
</Tabs>
