--- 
title: looking_glasses
hide_title: false
hide_table_of_contents: false
keywords:
  - looking_glasses
  - peering
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

Creates, updates, deletes, gets or lists a <code>looking_glasses</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>looking_glasses</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.peering.looking_glasses" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#invoke"><CopyableCode code="invoke" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-command"><code>command</code></a>, <a href="#parameter-sourceType"><code>sourceType</code></a>, <a href="#parameter-sourceLocation"><code>sourceLocation</code></a>, <a href="#parameter-destinationIP"><code>destinationIP</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Run looking glass functionality</td>
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
<tr id="parameter-command">
    <td><CopyableCode code="command" /></td>
    <td><code>string</code></td>
    <td>The command to be executed: ping, traceroute, bgpRoute.</td>
</tr>
<tr id="parameter-destinationIP">
    <td><CopyableCode code="destinationIP" /></td>
    <td><code>string</code></td>
    <td>The IP address of the destination.</td>
</tr>
<tr id="parameter-sourceLocation">
    <td><CopyableCode code="sourceLocation" /></td>
    <td><code>string</code></td>
    <td>The location of the source.</td>
</tr>
<tr id="parameter-sourceType">
    <td><CopyableCode code="sourceType" /></td>
    <td><code>string</code></td>
    <td>The type of the source: Edge site or Azure Region.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The Azure subscription ID.</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="invoke"
    values={[
        { label: 'invoke', value: 'invoke' }
    ]}
>
<TabItem value="invoke">

Run looking glass functionality

```sql
EXEC azure.peering.looking_glasses.invoke 
@command='{{ command }}' --required, 
@sourceType='{{ sourceType }}' --required, 
@sourceLocation='{{ sourceLocation }}' --required, 
@destinationIP='{{ destinationIP }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
