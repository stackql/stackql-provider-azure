--- 
title: express_route_links
hide_title: false
hide_table_of_contents: false
keywords:
  - express_route_links
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

Creates, updates, deletes, gets or lists an <code>express_route_links</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>express_route_links</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.express_route_links" /></td></tr>
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

Request successful. The operation returns the requested ExpressRouteLink resource.

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
    <td>Name of child port resource that is unique among child port resources of the parent.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>ExpressRouteLink properties. (title: ExpressRouteLink Resource Properties)</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Request successful. The operation returns a list of ExpressRouteLink resources. If there are no ExpressRouteLink resources then an empty list is returned.

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
    <td>Name of child port resource that is unique among child port resources of the parent.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>ExpressRouteLink properties. (title: ExpressRouteLink Resource Properties)</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-expressRoutePortName"><code>expressRoutePortName</code></a>, <a href="#parameter-linkName"><code>linkName</code></a></td>
    <td></td>
    <td>Retrieves the specified ExpressRouteLink resource.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-expressRoutePortName"><code>expressRoutePortName</code></a></td>
    <td></td>
    <td>Retrieve the ExpressRouteLink sub-resources of the specified ExpressRoutePort resource.</td>
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
<tr id="parameter-expressRoutePortName">
    <td><CopyableCode code="expressRoutePortName" /></td>
    <td><code>string</code></td>
    <td>The name of the ExpressRoutePort resource.</td>
</tr>
<tr id="parameter-linkName">
    <td><CopyableCode code="linkName" /></td>
    <td><code>string</code></td>
    <td>The name of the ExpressRouteLink resource.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group.</td>
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
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Retrieves the specified ExpressRouteLink resource.

```sql
SELECT
id,
name,
etag,
properties
FROM azure.network.express_route_links
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND expressRoutePortName = '{{ expressRoutePortName }}' -- required
AND linkName = '{{ linkName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Retrieve the ExpressRouteLink sub-resources of the specified ExpressRoutePort resource.

```sql
SELECT
id,
name,
etag,
properties
FROM azure.network.express_route_links
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND expressRoutePortName = '{{ expressRoutePortName }}' -- required
;
```
</TabItem>
</Tabs>
