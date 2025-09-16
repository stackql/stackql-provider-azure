--- 
title: hub_route_tables
hide_title: false
hide_table_of_contents: false
keywords:
  - hub_route_tables
  - network
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

Creates, updates, deletes, gets or lists a <code>hub_route_tables</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>hub_route_tables</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.hub_route_tables" /></td></tr>
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

Request successful. Returns the details of the RouteTable retrieved.

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
    <td>Resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource that is unique within a resource group. This name can be used to access the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the RouteTable resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Request successful. Returns the details of all the RouteTables for the VirtualHub.

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
    <td>Resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource that is unique within a resource group. This name can be used to access the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the RouteTable resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualHubName"><code>virtualHubName</code></a>, <a href="#parameter-routeTableName"><code>routeTableName</code></a></td>
    <td></td>
    <td>Retrieves the details of a RouteTable.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualHubName"><code>virtualHubName</code></a></td>
    <td></td>
    <td>Retrieves the details of all RouteTables.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualHubName"><code>virtualHubName</code></a>, <a href="#parameter-routeTableName"><code>routeTableName</code></a></td>
    <td></td>
    <td>Creates a RouteTable resource if it doesn't exist else updates the existing RouteTable.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-virtualHubName"><code>virtualHubName</code></a>, <a href="#parameter-routeTableName"><code>routeTableName</code></a></td>
    <td></td>
    <td>Deletes a RouteTable.</td>
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
    <td>The resource group name of the RouteTable.</td>
</tr>
<tr id="parameter-routeTableName">
    <td><CopyableCode code="routeTableName" /></td>
    <td><code>string</code></td>
    <td>The name of the RouteTable.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-virtualHubName">
    <td><CopyableCode code="virtualHubName" /></td>
    <td><code>string</code></td>
    <td>The name of the VirtualHub.</td>
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

Retrieves the details of a RouteTable.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.network.hub_route_tables
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND virtualHubName = '{{ virtualHubName }}' -- required
AND routeTableName = '{{ routeTableName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Retrieves the details of all RouteTables.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.network.hub_route_tables
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND virtualHubName = '{{ virtualHubName }}' -- required
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

Creates a RouteTable resource if it doesn't exist else updates the existing RouteTable.

```sql
INSERT INTO azure.network.hub_route_tables (
data__properties,
data__name,
data__id,
subscriptionId,
resourceGroupName,
virtualHubName,
routeTableName
)
SELECT 
'{{ properties }}',
'{{ name }}',
'{{ id }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ virtualHubName }}',
'{{ routeTableName }}'
RETURNING
id,
name,
etag,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: hub_route_tables
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the hub_route_tables resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the hub_route_tables resource.
    - name: virtualHubName
      value: string
      description: Required parameter for the hub_route_tables resource.
    - name: routeTableName
      value: string
      description: Required parameter for the hub_route_tables resource.
    - name: properties
      value: object
      description: |
        Properties of the RouteTable resource.
    - name: name
      value: string
      description: |
        The name of the resource that is unique within a resource group. This name can be used to access the resource.
    - name: id
      value: string
      description: |
        Resource ID.
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

Deletes a RouteTable.

```sql
DELETE FROM azure.network.hub_route_tables
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND virtualHubName = '{{ virtualHubName }}' --required
AND routeTableName = '{{ routeTableName }}' --required
;
```
</TabItem>
</Tabs>
