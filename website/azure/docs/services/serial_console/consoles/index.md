--- 
title: consoles
hide_title: false
hide_table_of_contents: false
keywords:
  - consoles
  - serial_console
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

Creates, updates, deletes, gets or lists a <code>consoles</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>consoles</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.serial_console.consoles" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_status"
    values={[
        { label: 'get_status', value: 'get_status' }
    ]}
>
<TabItem value="get_status">

OK - Returns a JSON object

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
    <td></td>
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
    <td><a href="#get_status"><CopyableCode code="get_status" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-default"><code>default</code></a></td>
    <td></td>
    <td>Gets whether or not Serial Console is disabled for a given subscription</td>
</tr>
<tr>
    <td><a href="#disable"><CopyableCode code="disable" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-default"><code>default</code></a></td>
    <td></td>
    <td>Disables the Serial Console service for all VMs and VM scale sets in the provided subscription</td>
</tr>
<tr>
    <td><a href="#enable"><CopyableCode code="enable" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-default"><code>default</code></a></td>
    <td></td>
    <td>Enables the Serial Console service for all VMs and VM scale sets in the provided subscription</td>
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
<tr id="parameter-default">
    <td><CopyableCode code="default" /></td>
    <td><code>string</code></td>
    <td>Default parameter. Leave the value as "default".</td>
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
    defaultValue="get_status"
    values={[
        { label: 'get_status', value: 'get_status' }
    ]}
>
<TabItem value="get_status">

Gets whether or not Serial Console is disabled for a given subscription

```sql
SELECT
properties
FROM azure.serial_console.consoles
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND default = '{{ default }}' -- required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="disable"
    values={[
        { label: 'disable', value: 'disable' },
        { label: 'enable', value: 'enable' }
    ]}
>
<TabItem value="disable">

Disables the Serial Console service for all VMs and VM scale sets in the provided subscription

```sql
EXEC azure.serial_console.consoles.disable 
@subscriptionId='{{ subscriptionId }}' --required, 
@default='{{ default }}' --required
;
```
</TabItem>
<TabItem value="enable">

Enables the Serial Console service for all VMs and VM scale sets in the provided subscription

```sql
EXEC azure.serial_console.consoles.enable 
@subscriptionId='{{ subscriptionId }}' --required, 
@default='{{ default }}' --required
;
```
</TabItem>
</Tabs>
