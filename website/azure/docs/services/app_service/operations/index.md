--- 
title: operations
hide_title: false
hide_table_of_contents: false
keywords:
  - operations
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

Creates, updates, deletes, gets or lists an <code>operations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>operations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.app_service.operations" /></td></tr>
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
    <td><a href="#check_name_availability"><CopyableCode code="check_name_availability" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-type"><code>type</code></a></td>
    <td></td>
    <td>Description for Check if a resource name is available.</td>
</tr>
<tr>
    <td><a href="#verify_hosting_environment_vnet"><CopyableCode code="verify_hosting_environment_vnet" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Verifies if this VNET is compatible with an App Service Environment by analyzing the Network Security Group rules.</td>
</tr>
<tr>
    <td><a href="#move"><CopyableCode code="move" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Move resources between resource groups.</td>
</tr>
<tr>
    <td><a href="#validate"><CopyableCode code="validate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-type"><code>type</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-properties"><code>properties</code></a></td>
    <td></td>
    <td>Description for Validate if a resource can be created.</td>
</tr>
<tr>
    <td><a href="#validate_move"><CopyableCode code="validate_move" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Description for Validate whether a resource can be moved.</td>
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
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group to which the resource belongs.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000).</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="check_name_availability"
    values={[
        { label: 'check_name_availability', value: 'check_name_availability' },
        { label: 'verify_hosting_environment_vnet', value: 'verify_hosting_environment_vnet' },
        { label: 'move', value: 'move' },
        { label: 'validate', value: 'validate' },
        { label: 'validate_move', value: 'validate_move' }
    ]}
>
<TabItem value="check_name_availability">

Description for Check if a resource name is available.

```sql
EXEC azure.app_service.operations.check_name_availability 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"name": "{{ name }}", 
"type": "{{ type }}", 
"isFqdn": {{ isFqdn }}, 
"environmentId": "{{ environmentId }}"
}'
;
```
</TabItem>
<TabItem value="verify_hosting_environment_vnet">

Description for Verifies if this VNET is compatible with an App Service Environment by analyzing the Network Security Group rules.

```sql
EXEC azure.app_service.operations.verify_hosting_environment_vnet 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"kind": "{{ kind }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="move">

Description for Move resources between resource groups.

```sql
EXEC azure.app_service.operations.move 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"targetResourceGroup": "{{ targetResourceGroup }}", 
"resources": "{{ resources }}"
}'
;
```
</TabItem>
<TabItem value="validate">

Description for Validate if a resource can be created.

```sql
EXEC azure.app_service.operations.validate 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"name": "{{ name }}", 
"type": "{{ type }}", 
"location": "{{ location }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="validate_move">

Description for Validate whether a resource can be moved.

```sql
EXEC azure.app_service.operations.validate_move 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"targetResourceGroup": "{{ targetResourceGroup }}", 
"resources": "{{ resources }}"
}'
;
```
</TabItem>
</Tabs>
