--- 
title: virtual_network_addresses
hide_title: false
hide_table_of_contents: false
keywords:
  - virtual_network_addresses
  - oracle
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>virtual_network_addresses</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>virtual_network_addresses</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.oracle.virtual_network_addresses" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_cloud_vm_cluster', value: 'list_by_cloud_vm_cluster' }
    ]}
>
<TabItem value="get">

Azure operation completed successfully.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The resource-specific properties for this resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_cloud_vm_cluster">

Azure operation completed successfully.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The resource-specific properties for this resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudvmclustername"><code>cloudvmclustername</code></a>, <a href="#parameter-virtualnetworkaddressname"><code>virtualnetworkaddressname</code></a></td>
    <td></td>
    <td>Get a VirtualNetworkAddress</td>
</tr>
<tr>
    <td><a href="#list_by_cloud_vm_cluster"><CopyableCode code="list_by_cloud_vm_cluster" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudvmclustername"><code>cloudvmclustername</code></a></td>
    <td></td>
    <td>List VirtualNetworkAddress resources by CloudVmCluster</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudvmclustername"><code>cloudvmclustername</code></a>, <a href="#parameter-virtualnetworkaddressname"><code>virtualnetworkaddressname</code></a></td>
    <td></td>
    <td>Create a VirtualNetworkAddress</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-cloudvmclustername"><code>cloudvmclustername</code></a>, <a href="#parameter-virtualnetworkaddressname"><code>virtualnetworkaddressname</code></a></td>
    <td></td>
    <td>Delete a VirtualNetworkAddress</td>
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
<tr id="parameter-cloudvmclustername">
    <td><CopyableCode code="cloudvmclustername" /></td>
    <td><code>string</code></td>
    <td>CloudVmCluster name</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-virtualnetworkaddressname">
    <td><CopyableCode code="virtualnetworkaddressname" /></td>
    <td><code>string</code></td>
    <td>Virtual IP address hostname.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_cloud_vm_cluster', value: 'list_by_cloud_vm_cluster' }
    ]}
>
<TabItem value="get">

Get a VirtualNetworkAddress

```sql
SELECT
properties
FROM azure_isv.oracle.virtual_network_addresses
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND cloudvmclustername = '{{ cloudvmclustername }}' -- required
AND virtualnetworkaddressname = '{{ virtualnetworkaddressname }}' -- required
;
```
</TabItem>
<TabItem value="list_by_cloud_vm_cluster">

List VirtualNetworkAddress resources by CloudVmCluster

```sql
SELECT
properties
FROM azure_isv.oracle.virtual_network_addresses
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND cloudvmclustername = '{{ cloudvmclustername }}' -- required
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

Create a VirtualNetworkAddress

```sql
INSERT INTO azure_isv.oracle.virtual_network_addresses (
data__properties,
subscriptionId,
resourceGroupName,
cloudvmclustername,
virtualnetworkaddressname
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ cloudvmclustername }}',
'{{ virtualnetworkaddressname }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: virtual_network_addresses
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the virtual_network_addresses resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the virtual_network_addresses resource.
    - name: cloudvmclustername
      value: string
      description: Required parameter for the virtual_network_addresses resource.
    - name: virtualnetworkaddressname
      value: string
      description: Required parameter for the virtual_network_addresses resource.
    - name: properties
      value: object
      description: |
        The resource-specific properties for this resource.
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

Delete a VirtualNetworkAddress

```sql
DELETE FROM azure_isv.oracle.virtual_network_addresses
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND cloudvmclustername = '{{ cloudvmclustername }}' --required
AND virtualnetworkaddressname = '{{ virtualnetworkaddressname }}' --required
;
```
</TabItem>
</Tabs>
