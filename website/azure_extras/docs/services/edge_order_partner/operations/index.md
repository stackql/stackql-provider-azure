--- 
title: operations
hide_title: false
hide_table_of_contents: false
keywords:
  - operations
  - edge_order_partner
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists an <code>operations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>operations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.edge_order_partner.operations" /></td></tr>
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
    <td><a href="#manage_inventory_metadata"><CopyableCode code="manage_inventory_metadata" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-familyIdentifier"><code>familyIdentifier</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-serialNumber"><code>serialNumber</code></a>, <a href="#parameter-inventoryMetadata"><code>inventoryMetadata</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#manage_link"><CopyableCode code="manage_link" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-familyIdentifier"><code>familyIdentifier</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-serialNumber"><code>serialNumber</code></a>, <a href="#parameter-managementResourceArmId"><code>managementResourceArmId</code></a>, <a href="#parameter-operation"><code>operation</code></a>, <a href="#parameter-tenantId"><code>tenantId</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#search_inventories"><CopyableCode code="search_inventories" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-serialNumber"><code>serialNumber</code></a>, <a href="#parameter-familyIdentifier"><code>familyIdentifier</code></a></td>
    <td></td>
    <td></td>
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
<tr id="parameter-familyIdentifier">
    <td><CopyableCode code="familyIdentifier" /></td>
    <td><code>string</code></td>
    <td>Unique identifier for the product family</td>
</tr>
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The location of the resource</td>
</tr>
<tr id="parameter-serialNumber">
    <td><CopyableCode code="serialNumber" /></td>
    <td><code>string</code></td>
    <td>The serial number of the device</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="manage_inventory_metadata"
    values={[
        { label: 'manage_inventory_metadata', value: 'manage_inventory_metadata' },
        { label: 'manage_link', value: 'manage_link' },
        { label: 'search_inventories', value: 'search_inventories' }
    ]}
>
<TabItem value="manage_inventory_metadata">

"Success"

```sql
EXEC azure_extras.edge_order_partner.operations.manage_inventory_metadata 
@familyIdentifier='{{ familyIdentifier }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@location='{{ location }}' --required, 
@serialNumber='{{ serialNumber }}' --required 
@@json=
'{
"inventoryMetadata": "{{ inventoryMetadata }}", 
"configurationOnDevice": "{{ configurationOnDevice }}"
}'
;
```
</TabItem>
<TabItem value="manage_link">

"Success"

```sql
EXEC azure_extras.edge_order_partner.operations.manage_link 
@familyIdentifier='{{ familyIdentifier }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@location='{{ location }}' --required, 
@serialNumber='{{ serialNumber }}' --required 
@@json=
'{
"managementResourceArmId": "{{ managementResourceArmId }}", 
"operation": "{{ operation }}", 
"tenantId": "{{ tenantId }}"
}'
;
```
</TabItem>
<TabItem value="search_inventories">

Success

```sql
EXEC azure_extras.edge_order_partner.operations.search_inventories 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"serialNumber": "{{ serialNumber }}", 
"familyIdentifier": "{{ familyIdentifier }}"
}'
;
```
</TabItem>
</Tabs>
