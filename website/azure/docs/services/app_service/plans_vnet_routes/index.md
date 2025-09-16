--- 
title: plans_vnet_routes
hide_title: false
hide_table_of_contents: false
keywords:
  - plans_vnet_routes
  - app_service
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

Creates, updates, deletes, gets or lists a <code>plans_vnet_routes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>plans_vnet_routes</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.app_service.plans_vnet_routes" /></td></tr>
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
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-vnetName"><code>vnetName</code></a>, <a href="#parameter-routeName"><code>routeName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Create or update a Virtual Network route in an App Service plan.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-vnetName"><code>vnetName</code></a>, <a href="#parameter-routeName"><code>routeName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Create or update a Virtual Network route in an App Service plan.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-vnetName"><code>vnetName</code></a>, <a href="#parameter-routeName"><code>routeName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Delete a Virtual Network route in an App Service plan.</td>
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
<tr id="parameter-name">
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the App Service plan.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group to which the resource belongs.</td>
</tr>
<tr id="parameter-routeName">
    <td><CopyableCode code="routeName" /></td>
    <td><code>string</code></td>
    <td>Name of the Virtual Network route.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000).</td>
</tr>
<tr id="parameter-vnetName">
    <td><CopyableCode code="vnetName" /></td>
    <td><code>string</code></td>
    <td>Name of the Virtual Network.</td>
</tr>
</tbody>
</table>

## `INSERT` examples

<Tabs
    defaultValue="create_or_update"
    values={[
        { label: 'create_or_update', value: 'create_or_update' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_or_update">

Description for Create or update a Virtual Network route in an App Service plan.

```sql
INSERT INTO azure.app_service.plans_vnet_routes (
data__kind,
data__properties,
resourceGroupName,
name,
vnetName,
routeName,
subscriptionId
)
SELECT 
'{{ kind }}',
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ name }}',
'{{ vnetName }}',
'{{ routeName }}',
'{{ subscriptionId }}'
RETURNING
id,
name,
kind,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: plans_vnet_routes
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the plans_vnet_routes resource.
    - name: name
      value: string
      description: Required parameter for the plans_vnet_routes resource.
    - name: vnetName
      value: string
      description: Required parameter for the plans_vnet_routes resource.
    - name: routeName
      value: string
      description: Required parameter for the plans_vnet_routes resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the plans_vnet_routes resource.
    - name: kind
      value: string
      description: |
        Kind of resource.
    - name: properties
      value: object
      description: |
        VnetRoute resource specific properties
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

Description for Create or update a Virtual Network route in an App Service plan.

```sql
UPDATE azure.app_service.plans_vnet_routes
SET 
data__kind = '{{ kind }}',
data__properties = '{{ properties }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND name = '{{ name }}' --required
AND vnetName = '{{ vnetName }}' --required
AND routeName = '{{ routeName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
RETURNING
id,
name,
kind,
properties,
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

Description for Delete a Virtual Network route in an App Service plan.

```sql
DELETE FROM azure.app_service.plans_vnet_routes
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND name = '{{ name }}' --required
AND vnetName = '{{ vnetName }}' --required
AND routeName = '{{ routeName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
