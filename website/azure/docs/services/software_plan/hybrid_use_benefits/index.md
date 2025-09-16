--- 
title: hybrid_use_benefits
hide_title: false
hide_table_of_contents: false
keywords:
  - hybrid_use_benefits
  - software_plan
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

Creates, updates, deletes, gets or lists a <code>hybrid_use_benefits</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>hybrid_use_benefits</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.software_plan.hybrid_use_benefits" /></td></tr>
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

OK - returns the plan that is created

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
    <td><CopyableCode code="etag" /></td>
    <td><code>integer (int32)</code></td>
    <td>Indicates the revision of the hybrid use benefit</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Property bag for a hybrid use benefit response</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>Hybrid use benefit SKU</td>
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

OK - returns an array of plans at that scope

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
    <td><CopyableCode code="etag" /></td>
    <td><code>integer (int32)</code></td>
    <td>Indicates the revision of the hybrid use benefit</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Property bag for a hybrid use benefit response</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>Hybrid use benefit SKU</td>
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
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-planId"><code>planId</code></a></td>
    <td></td>
    <td>Gets a given plan ID</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>Get all hybrid use benefits associated with an ARM resource.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-planId"><code>planId</code></a>, <a href="#parameter-data__sku"><code>data__sku</code></a></td>
    <td></td>
    <td>Create a new hybrid use benefit under a given scope</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-planId"><code>planId</code></a>, <a href="#parameter-data__sku"><code>data__sku</code></a></td>
    <td></td>
    <td>Updates an existing hybrid use benefit</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-planId"><code>planId</code></a></td>
    <td></td>
    <td>Deletes a given plan ID</td>
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
<tr id="parameter-planId">
    <td><CopyableCode code="planId" /></td>
    <td><code>string</code></td>
    <td>This is a unique identifier for a plan. Should be a guid.</td>
</tr>
<tr id="parameter-scope">
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>The scope at which the operation is performed. This is limited to Microsoft.Compute/virtualMachines and Microsoft.Compute/hostGroups/hosts for now</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>Supports applying filter on the type of SKU</td>
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

Gets a given plan ID

```sql
SELECT
id,
name,
etag,
properties,
sku,
type
FROM azure.software_plan.hybrid_use_benefits
WHERE scope = '{{ scope }}' -- required
AND planId = '{{ planId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Get all hybrid use benefits associated with an ARM resource.

```sql
SELECT
id,
name,
etag,
properties,
sku,
type
FROM azure.software_plan.hybrid_use_benefits
WHERE scope = '{{ scope }}' -- required
AND $filter = '{{ $filter }}'
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

Create a new hybrid use benefit under a given scope

```sql
INSERT INTO azure.software_plan.hybrid_use_benefits (
data__sku,
data__properties,
scope,
planId
)
SELECT 
'{{ sku }}' /* required */,
'{{ properties }}',
'{{ scope }}',
'{{ planId }}'
RETURNING
id,
name,
etag,
properties,
sku,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: hybrid_use_benefits
  props:
    - name: scope
      value: string
      description: Required parameter for the hybrid_use_benefits resource.
    - name: planId
      value: string
      description: Required parameter for the hybrid_use_benefits resource.
    - name: sku
      value: object
      description: |
        Hybrid use benefit SKU
    - name: properties
      value: object
      description: |
        Property bag for a hybrid use benefit response
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

Updates an existing hybrid use benefit

```sql
UPDATE azure.software_plan.hybrid_use_benefits
SET 
data__sku = '{{ sku }}',
data__properties = '{{ properties }}'
WHERE 
scope = '{{ scope }}' --required
AND planId = '{{ planId }}' --required
AND data__sku = '{{ sku }}' --required
RETURNING
id,
name,
etag,
properties,
sku,
type;
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

Deletes a given plan ID

```sql
DELETE FROM azure.software_plan.hybrid_use_benefits
WHERE scope = '{{ scope }}' --required
AND planId = '{{ planId }}' --required
;
```
</TabItem>
</Tabs>
