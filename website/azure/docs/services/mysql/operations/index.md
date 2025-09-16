--- 
title: operations
hide_title: false
hide_table_of_contents: false
keywords:
  - operations
  - mysql
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.mysql.operations" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

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
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the operation, as per Resource-Based Access Control (RBAC). Examples: "Microsoft.Compute/virtualMachines/write", "Microsoft.Compute/virtualMachines/capture/action"</td>
</tr>
<tr>
    <td><CopyableCode code="actionType" /></td>
    <td><code>string</code></td>
    <td>Enum. Indicates the action type. "Internal" refers to actions that are for internal only APIs.</td>
</tr>
<tr>
    <td><CopyableCode code="display" /></td>
    <td><code>object</code></td>
    <td>Localized display information for this particular operation.</td>
</tr>
<tr>
    <td><CopyableCode code="isDataAction" /></td>
    <td><code>boolean</code></td>
    <td>Whether the operation applies to data-plane. This is "true" for data-plane operations and "false" for ARM/control-plane operations.</td>
</tr>
<tr>
    <td><CopyableCode code="origin" /></td>
    <td><code>string</code></td>
    <td>The intended executor of the operation; as in Resource Based Access Control (RBAC) and audit logs UX. Default value is "user,system"</td>
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
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td></td>
    <td>Lists all of the available REST API operations.</td>
</tr>
<tr>
    <td><a href="#check_virtual_network_subnet_usage_execute"><CopyableCode code="check_virtual_network_subnet_usage_execute" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-locationName"><code>locationName</code></a></td>
    <td></td>
    <td>Get virtual network subnet usage for a given vNet resource id.</td>
</tr>
<tr>
    <td><a href="#check_name_availability_execute"><CopyableCode code="check_name_availability_execute" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-locationName"><code>locationName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td></td>
    <td>Check the availability of name for server</td>
</tr>
<tr>
    <td><a href="#check_name_availability_without_location_execute"><CopyableCode code="check_name_availability_without_location_execute" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td></td>
    <td>Check the availability of name for server</td>
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
<tr id="parameter-locationName">
    <td><CopyableCode code="locationName" /></td>
    <td><code>string</code></td>
    <td>The name of the location.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

Lists all of the available REST API operations.

```sql
SELECT
name,
actionType,
display,
isDataAction,
origin
FROM azure.mysql.operations
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="check_virtual_network_subnet_usage_execute"
    values={[
        { label: 'check_virtual_network_subnet_usage_execute', value: 'check_virtual_network_subnet_usage_execute' },
        { label: 'check_name_availability_execute', value: 'check_name_availability_execute' },
        { label: 'check_name_availability_without_location_execute', value: 'check_name_availability_without_location_execute' }
    ]}
>
<TabItem value="check_virtual_network_subnet_usage_execute">

Get virtual network subnet usage for a given vNet resource id.

```sql
EXEC azure.mysql.operations.check_virtual_network_subnet_usage_execute 
@subscriptionId='{{ subscriptionId }}' --required, 
@locationName='{{ locationName }}' --required 
@@json=
'{
"virtualNetworkResourceId": "{{ virtualNetworkResourceId }}"
}'
;
```
</TabItem>
<TabItem value="check_name_availability_execute">

Check the availability of name for server

```sql
EXEC azure.mysql.operations.check_name_availability_execute 
@subscriptionId='{{ subscriptionId }}' --required, 
@locationName='{{ locationName }}' --required 
@@json=
'{
"name": "{{ name }}", 
"type": "{{ type }}"
}'
;
```
</TabItem>
<TabItem value="check_name_availability_without_location_execute">

Check the availability of name for server

```sql
EXEC azure.mysql.operations.check_name_availability_without_location_execute 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"name": "{{ name }}", 
"type": "{{ type }}"
}'
;
```
</TabItem>
</Tabs>
