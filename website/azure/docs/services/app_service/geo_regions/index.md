--- 
title: geo_regions
hide_title: false
hide_table_of_contents: false
keywords:
  - geo_regions
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

Creates, updates, deletes, gets or lists a <code>geo_regions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>geo_regions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.app_service.geo_regions" /></td></tr>
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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Resource Id.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource Name.</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Kind of resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>GeoRegion resource specific properties</td>
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
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-sku"><code>sku</code></a>, <a href="#parameter-linuxWorkersEnabled"><code>linuxWorkersEnabled</code></a>, <a href="#parameter-xenonWorkersEnabled"><code>xenonWorkersEnabled</code></a>, <a href="#parameter-linuxDynamicWorkersEnabled"><code>linuxDynamicWorkersEnabled</code></a></td>
    <td>Description for Get a list of available geographical regions.</td>
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
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000).</td>
</tr>
<tr id="parameter-linuxDynamicWorkersEnabled">
    <td><CopyableCode code="linuxDynamicWorkersEnabled" /></td>
    <td><code>boolean</code></td>
    <td>Specify <code>true</code> if you want to filter to only regions that support Linux Consumption Workers.</td>
</tr>
<tr id="parameter-linuxWorkersEnabled">
    <td><CopyableCode code="linuxWorkersEnabled" /></td>
    <td><code>boolean</code></td>
    <td>Specify <code>true</code> if you want to filter to only regions that support Linux workers.</td>
</tr>
<tr id="parameter-sku">
    <td><CopyableCode code="sku" /></td>
    <td><code>string</code></td>
    <td>Name of SKU used to filter the regions.</td>
</tr>
<tr id="parameter-xenonWorkersEnabled">
    <td><CopyableCode code="xenonWorkersEnabled" /></td>
    <td><code>boolean</code></td>
    <td>Specify <code>true</code> if you want to filter to only regions that support Xenon workers.</td>
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

Description for Get a list of available geographical regions.

```sql
SELECT
id,
name,
kind,
properties,
type
FROM azure.app_service.geo_regions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND sku = '{{ sku }}'
AND linuxWorkersEnabled = '{{ linuxWorkersEnabled }}'
AND xenonWorkersEnabled = '{{ xenonWorkersEnabled }}'
AND linuxDynamicWorkersEnabled = '{{ linuxDynamicWorkersEnabled }}'
;
```
</TabItem>
</Tabs>
