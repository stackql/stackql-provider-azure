--- 
title: extended_zones
hide_title: false
hide_table_of_contents: false
keywords:
  - extended_zones
  - edge_zones
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

Creates, updates, deletes, gets or lists an <code>extended_zones</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>extended_zones</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.edge_zones.extended_zones" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
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
<TabItem value="list_by_subscription">

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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-extendedZoneName"><code>extendedZoneName</code></a></td>
    <td></td>
    <td>Gets an Azure Extended Zone for a subscription</td>
</tr>
<tr>
    <td><a href="#list_by_subscription"><CopyableCode code="list_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Lists the Azure Extended Zones available to a subscription</td>
</tr>
<tr>
    <td><a href="#register"><CopyableCode code="register" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-extendedZoneName"><code>extendedZoneName</code></a></td>
    <td></td>
    <td>Registers a subscription for an Extended Zone</td>
</tr>
<tr>
    <td><a href="#unregister"><CopyableCode code="unregister" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-extendedZoneName"><code>extendedZoneName</code></a></td>
    <td></td>
    <td>Unregisters a subscription for an Extended Zone</td>
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
<tr id="parameter-extendedZoneName">
    <td><CopyableCode code="extendedZoneName" /></td>
    <td><code>string</code></td>
    <td>The name of the ExtendedZone</td>
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
        { label: 'list_by_subscription', value: 'list_by_subscription' }
    ]}
>
<TabItem value="get">

Gets an Azure Extended Zone for a subscription

```sql
SELECT
properties
FROM azure.edge_zones.extended_zones
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND extendedZoneName = '{{ extendedZoneName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_subscription">

Lists the Azure Extended Zones available to a subscription

```sql
SELECT
properties
FROM azure.edge_zones.extended_zones
WHERE subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="register"
    values={[
        { label: 'register', value: 'register' },
        { label: 'unregister', value: 'unregister' }
    ]}
>
<TabItem value="register">

Registers a subscription for an Extended Zone

```sql
EXEC azure.edge_zones.extended_zones.register 
@subscriptionId='{{ subscriptionId }}' --required, 
@extendedZoneName='{{ extendedZoneName }}' --required
;
```
</TabItem>
<TabItem value="unregister">

Unregisters a subscription for an Extended Zone

```sql
EXEC azure.edge_zones.extended_zones.unregister 
@subscriptionId='{{ subscriptionId }}' --required, 
@extendedZoneName='{{ extendedZoneName }}' --required
;
```
</TabItem>
</Tabs>
