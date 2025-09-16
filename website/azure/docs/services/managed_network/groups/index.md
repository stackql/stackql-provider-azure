--- 
title: groups
hide_title: false
hide_table_of_contents: false
keywords:
  - groups
  - managed_network
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

Creates, updates, deletes, gets or lists a <code>groups</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>groups</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.managed_network.groups" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_managed_network', value: 'list_by_managed_network' }
    ]}
>
<TabItem value="get">

Get successful. The operation returns the specified Managed Network Group resource.

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
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Responsibility role under which this Managed Network Group will be created</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Gets or sets the properties of a network group</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_managed_network">

Get successful. The operation returns all Managed Network Group resources under the specified Managed Network in a paginated format.

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
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Responsibility role under which this Managed Network Group will be created</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Gets or sets the properties of a network group</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedNetworkName"><code>managedNetworkName</code></a>, <a href="#parameter-managedNetworkGroupName"><code>managedNetworkGroupName</code></a></td>
    <td></td>
    <td>The Get ManagedNetworkGroups operation gets a Managed Network Group specified by the resource group, Managed Network name, and group name</td>
</tr>
<tr>
    <td><a href="#list_by_managed_network"><CopyableCode code="list_by_managed_network" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedNetworkName"><code>managedNetworkName</code></a></td>
    <td><a href="#parameter-$top"><code>$top</code></a>, <a href="#parameter-$skiptoken"><code>$skiptoken</code></a></td>
    <td>The ListByManagedNetwork ManagedNetworkGroup operation retrieves all the Managed Network Groups in a specified Managed Networks in a paginated format.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedNetworkName"><code>managedNetworkName</code></a>, <a href="#parameter-managedNetworkGroupName"><code>managedNetworkGroupName</code></a></td>
    <td></td>
    <td>The Put ManagedNetworkGroups operation creates or updates a Managed Network Group resource</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-managedNetworkName"><code>managedNetworkName</code></a>, <a href="#parameter-managedNetworkGroupName"><code>managedNetworkGroupName</code></a></td>
    <td></td>
    <td>The Delete ManagedNetworkGroups operation deletes a Managed Network Group specified by the resource group, Managed Network name, and group name</td>
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
<tr id="parameter-managedNetworkGroupName">
    <td><CopyableCode code="managedNetworkGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the Managed Network Group.</td>
</tr>
<tr id="parameter-managedNetworkName">
    <td><CopyableCode code="managedNetworkName" /></td>
    <td><code>string</code></td>
    <td>The name of the Managed Network.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
<tr id="parameter-$skiptoken">
    <td><CopyableCode code="$skiptoken" /></td>
    <td><code>string</code></td>
    <td>Skiptoken is only used if a previous operation returned a partial result. If a previous response contains a nextLink element, the value of the nextLink element will include a skiptoken parameter that specifies a starting point to use for subsequent calls.</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer</code></td>
    <td>May be used to limit the number of results in a page for list queries.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_managed_network', value: 'list_by_managed_network' }
    ]}
>
<TabItem value="get">

The Get ManagedNetworkGroups operation gets a Managed Network Group specified by the resource group, Managed Network name, and group name

```sql
SELECT
kind,
properties
FROM azure.managed_network.groups
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND managedNetworkName = '{{ managedNetworkName }}' -- required
AND managedNetworkGroupName = '{{ managedNetworkGroupName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_managed_network">

The ListByManagedNetwork ManagedNetworkGroup operation retrieves all the Managed Network Groups in a specified Managed Networks in a paginated format.

```sql
SELECT
kind,
properties
FROM azure.managed_network.groups
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND managedNetworkName = '{{ managedNetworkName }}' -- required
AND $top = '{{ $top }}'
AND $skiptoken = '{{ $skiptoken }}'
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

The Put ManagedNetworkGroups operation creates or updates a Managed Network Group resource

```sql
INSERT INTO azure.managed_network.groups (
data__properties,
data__kind,
subscriptionId,
resourceGroupName,
managedNetworkName,
managedNetworkGroupName
)
SELECT 
'{{ properties }}',
'{{ kind }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ managedNetworkName }}',
'{{ managedNetworkGroupName }}'
RETURNING
kind,
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: groups
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the groups resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the groups resource.
    - name: managedNetworkName
      value: string
      description: Required parameter for the groups resource.
    - name: managedNetworkGroupName
      value: string
      description: Required parameter for the groups resource.
    - name: properties
      value: object
      description: |
        Gets or sets the properties of a network group
    - name: kind
      value: string
      description: |
        Responsibility role under which this Managed Network Group will be created
      valid_values: ['Connectivity']
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

The Delete ManagedNetworkGroups operation deletes a Managed Network Group specified by the resource group, Managed Network name, and group name

```sql
DELETE FROM azure.managed_network.groups
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND managedNetworkName = '{{ managedNetworkName }}' --required
AND managedNetworkGroupName = '{{ managedNetworkGroupName }}' --required
;
```
</TabItem>
</Tabs>
