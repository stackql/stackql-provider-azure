--- 
title: route_filter_rules
hide_title: false
hide_table_of_contents: false
keywords:
  - route_filter_rules
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

Creates, updates, deletes, gets or lists a <code>route_filter_rules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>route_filter_rules</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.route_filter_rules" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_route_filter', value: 'list_by_route_filter' }
    ]}
>
<TabItem value="get">

Request successful. The operation returns the resulting Route Filter Rule resource.

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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the route filter rule.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_route_filter">

Request successful. The operation returns a list of Route Filter Rule resources.

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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the route filter rule.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-routeFilterName"><code>routeFilterName</code></a>, <a href="#parameter-ruleName"><code>ruleName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets the specified rule from a route filter.</td>
</tr>
<tr>
    <td><a href="#list_by_route_filter"><CopyableCode code="list_by_route_filter" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-routeFilterName"><code>routeFilterName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets all RouteFilterRules in a route filter.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-routeFilterName"><code>routeFilterName</code></a>, <a href="#parameter-ruleName"><code>ruleName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates or updates a route in the specified route filter.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-routeFilterName"><code>routeFilterName</code></a>, <a href="#parameter-ruleName"><code>ruleName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes the specified rule from a route filter.</td>
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
    <td>The name of the resource group.</td>
</tr>
<tr id="parameter-routeFilterName">
    <td><CopyableCode code="routeFilterName" /></td>
    <td><code>string</code></td>
    <td>The name of the route filter.</td>
</tr>
<tr id="parameter-ruleName">
    <td><CopyableCode code="ruleName" /></td>
    <td><code>string</code></td>
    <td>The name of the rule.</td>
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
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_route_filter', value: 'list_by_route_filter' }
    ]}
>
<TabItem value="get">

Gets the specified rule from a route filter.

```sql
SELECT
id,
name,
etag,
location,
properties
FROM azure.network.route_filter_rules
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND routeFilterName = '{{ routeFilterName }}' -- required
AND ruleName = '{{ ruleName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_route_filter">

Gets all RouteFilterRules in a route filter.

```sql
SELECT
id,
name,
etag,
location,
properties
FROM azure.network.route_filter_rules
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND routeFilterName = '{{ routeFilterName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
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

Creates or updates a route in the specified route filter.

```sql
INSERT INTO azure.network.route_filter_rules (
data__properties,
data__name,
data__location,
data__id,
resourceGroupName,
routeFilterName,
ruleName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ name }}',
'{{ location }}',
'{{ id }}',
'{{ resourceGroupName }}',
'{{ routeFilterName }}',
'{{ ruleName }}',
'{{ subscriptionId }}'
RETURNING
id,
name,
etag,
location,
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: route_filter_rules
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the route_filter_rules resource.
    - name: routeFilterName
      value: string
      description: Required parameter for the route_filter_rules resource.
    - name: ruleName
      value: string
      description: Required parameter for the route_filter_rules resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the route_filter_rules resource.
    - name: properties
      value: object
      description: |
        Properties of the route filter rule.
    - name: name
      value: string
      description: |
        The name of the resource that is unique within a resource group. This name can be used to access the resource.
    - name: location
      value: string
      description: |
        Resource location.
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

Deletes the specified rule from a route filter.

```sql
DELETE FROM azure.network.route_filter_rules
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND routeFilterName = '{{ routeFilterName }}' --required
AND ruleName = '{{ ruleName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
