--- 
title: spacecrafts_available_contacts
hide_title: false
hide_table_of_contents: false
keywords:
  - spacecrafts_available_contacts
  - orbital
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

Creates, updates, deletes, gets or lists a <code>spacecrafts_available_contacts</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>spacecrafts_available_contacts</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.orbital.spacecrafts_available_contacts" /></td></tr>
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

Request successful. The operation returns a list of available contacts resources.

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
    <td><CopyableCode code="groundStationName" /></td>
    <td><code>string</code></td>
    <td>Name of Azure Ground Station.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Contact Instance Properties.</td>
</tr>
<tr>
    <td><CopyableCode code="spacecraft" /></td>
    <td><code>object</code></td>
    <td>Resource Reference.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-spacecraftName"><code>spacecraftName</code></a></td>
    <td></td>
    <td>Returns list of available contacts. A contact is available if the spacecraft is visible from the ground station for more than the minimum viable contact duration provided in the contact profile.</td>
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
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-spacecraftName">
    <td><CopyableCode code="spacecraftName" /></td>
    <td><code>string</code></td>
    <td>Spacecraft ID.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
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

Returns list of available contacts. A contact is available if the spacecraft is visible from the ground station for more than the minimum viable contact duration provided in the contact profile.

```sql
SELECT
groundStationName,
properties,
spacecraft
FROM azure.orbital.spacecrafts_available_contacts
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND spacecraftName = '{{ spacecraftName }}' -- required
;
```
</TabItem>
</Tabs>
