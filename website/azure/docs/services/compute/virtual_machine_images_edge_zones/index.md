--- 
title: virtual_machine_images_edge_zones
hide_title: false
hide_table_of_contents: false
keywords:
  - virtual_machine_images_edge_zones
  - compute
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

Creates, updates, deletes, gets or lists a <code>virtual_machine_images_edge_zones</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>virtual_machine_images_edge_zones</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.virtual_machine_images_edge_zones" /></td></tr>
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
    <td>The name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="extendedLocation" /></td>
    <td><code>object</code></td>
    <td>The extended location of the Virtual Machine.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The supported Azure location of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Describes the properties of a Virtual Machine Image.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Specifies the tags that are assigned to the virtual machine. For more information about using tags, see [Using tags to organize your Azure resources](https://docs.microsoft.com/azure/azure-resource-manager/resource-group-using-tags.md).</td>
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
    <td><a href="#parameter-location"><code>location</code></a>, <a href="#parameter-edgeZone"><code>edgeZone</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-offer"><code>offer</code></a>, <a href="#parameter-skus"><code>skus</code></a>, <a href="#parameter-version"><code>version</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets a virtual machine image in an edge zone.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-location"><code>location</code></a>, <a href="#parameter-edgeZone"><code>edgeZone</code></a>, <a href="#parameter-publisherName"><code>publisherName</code></a>, <a href="#parameter-offer"><code>offer</code></a>, <a href="#parameter-skus"><code>skus</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a>, <a href="#parameter-$top"><code>$top</code></a>, <a href="#parameter-$orderby"><code>$orderby</code></a></td>
    <td>Gets a list of all virtual machine image versions for the specified location, edge zone, publisher, offer, and SKU.</td>
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
<tr id="parameter-edgeZone">
    <td><CopyableCode code="edgeZone" /></td>
    <td><code>string</code></td>
    <td>The name of the edge zone.</td>
</tr>
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The name of a supported Azure region.</td>
</tr>
<tr id="parameter-offer">
    <td><CopyableCode code="offer" /></td>
    <td><code>string</code></td>
    <td>A valid image publisher offer.</td>
</tr>
<tr id="parameter-publisherName">
    <td><CopyableCode code="publisherName" /></td>
    <td><code>string</code></td>
    <td>A valid image publisher.</td>
</tr>
<tr id="parameter-skus">
    <td><CopyableCode code="skus" /></td>
    <td><code>string</code></td>
    <td>A valid image SKU.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
<tr id="parameter-version">
    <td><CopyableCode code="version" /></td>
    <td><code>string</code></td>
    <td>A valid image SKU version.</td>
</tr>
<tr id="parameter-$expand">
    <td><CopyableCode code="$expand" /></td>
    <td><code>string</code></td>
    <td>The expand expression to apply on the operation.</td>
</tr>
<tr id="parameter-$orderby">
    <td><CopyableCode code="$orderby" /></td>
    <td><code>string</code></td>
    <td>Specifies the order of the results returned. Formatted as an OData query.</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int32)</code></td>
    <td>An integer value specifying the number of images to return that matches supplied values.</td>
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

Gets a virtual machine image in an edge zone.

```sql
SELECT
name,
extendedLocation,
location,
properties,
tags
FROM azure.compute.virtual_machine_images_edge_zones
WHERE location = '{{ location }}' -- required
AND edgeZone = '{{ edgeZone }}' -- required
AND publisherName = '{{ publisherName }}' -- required
AND offer = '{{ offer }}' -- required
AND skus = '{{ skus }}' -- required
AND version = '{{ version }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

Gets a list of all virtual machine image versions for the specified location, edge zone, publisher, offer, and SKU.

```sql
EXEC azure.compute.virtual_machine_images_edge_zones.list 
@location='{{ location }}' --required, 
@edgeZone='{{ edgeZone }}' --required, 
@publisherName='{{ publisherName }}' --required, 
@offer='{{ offer }}' --required, 
@skus='{{ skus }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@$expand='{{ $expand }}', 
@$top='{{ $top }}', 
@$orderby='{{ $orderby }}'
;
```
</TabItem>
</Tabs>
