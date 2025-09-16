--- 
title: reservation_order_aliases
hide_title: false
hide_table_of_contents: false
keywords:
  - reservation_order_aliases
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

Creates, updates, deletes, gets or lists a <code>reservation_order_aliases</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>reservation_order_aliases</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.billing_benefits.reservation_order_aliases" /></td></tr>
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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The Azure Region where the reserved resource lives.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Reservation order alias response properties</td>
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
    <td><a href="#parameter-reservationOrderAliasName"><code>reservationOrderAliasName</code></a></td>
    <td></td>
    <td>Get a reservation order alias.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-reservationOrderAliasName"><code>reservationOrderAliasName</code></a>, <a href="#parameter-data__sku"><code>data__sku</code></a></td>
    <td></td>
    <td>Create a reservation order alias.</td>
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
<tr id="parameter-reservationOrderAliasName">
    <td><CopyableCode code="reservationOrderAliasName" /></td>
    <td><code>string</code></td>
    <td>Name of the reservation order alias</td>
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

Get a reservation order alias.

```sql
SELECT
id,
name,
location,
properties,
sku,
systemData,
type
FROM azure.billing_benefits.reservation_order_aliases
WHERE reservationOrderAliasName = '{{ reservationOrderAliasName }}' -- required
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

Create a reservation order alias.

```sql
INSERT INTO azure.billing_benefits.reservation_order_aliases (
data__sku,
data__location,
data__properties,
reservationOrderAliasName
)
SELECT 
'{{ sku }}' /* required */,
'{{ location }}',
'{{ properties }}',
'{{ reservationOrderAliasName }}'
RETURNING
id,
name,
location,
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
- name: reservation_order_aliases
  props:
    - name: reservationOrderAliasName
      value: string
      description: Required parameter for the reservation_order_aliases resource.
    - name: sku
      value: object
      description: |
        The SKU to be applied for this resource
    - name: location
      value: string
      description: |
        The Azure Region where the reservation benefits are applied to.
    - name: properties
      value: object
      description: |
        Reservation order alias request properties
```
</TabItem>
</Tabs>
