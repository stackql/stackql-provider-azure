--- 
title: time_zones
hide_title: false
hide_table_of_contents: false
keywords:
  - time_zones
  - sql
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

Creates, updates, deletes, gets or lists a <code>time_zones</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>time_zones</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.sql.time_zones" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_location', value: 'list_by_location' }
    ]}
>
<TabItem value="get">

Successfully retrieved the specified time zone.

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
    <td>Resource properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_location">

Successfully retrieved the list of time zones.

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
    <td>Resource properties.</td>
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
    <td><a href="#parameter-locationName"><code>locationName</code></a>, <a href="#parameter-timeZoneId"><code>timeZoneId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets a managed instance time zone.</td>
</tr>
<tr>
    <td><a href="#list_by_location"><CopyableCode code="list_by_location" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-locationName"><code>locationName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets a list of managed instance time zones by location.</td>
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
    <td></td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription ID that identifies an Azure subscription.</td>
</tr>
<tr id="parameter-timeZoneId">
    <td><CopyableCode code="timeZoneId" /></td>
    <td><code>string</code></td>
    <td></td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_location', value: 'list_by_location' }
    ]}
>
<TabItem value="get">

Gets a managed instance time zone.

```sql
SELECT
properties
FROM azure.sql.time_zones
WHERE locationName = '{{ locationName }}' -- required
AND timeZoneId = '{{ timeZoneId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_location">

Gets a list of managed instance time zones by location.

```sql
SELECT
properties
FROM azure.sql.time_zones
WHERE locationName = '{{ locationName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>
