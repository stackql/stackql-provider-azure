--- 
title: containers
hide_title: false
hide_table_of_contents: false
keywords:
  - containers
  - container_instances
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

Creates, updates, deletes, gets or lists a <code>containers</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>containers</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.container_instances.containers" /></td></tr>
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
    <td><a href="#execute_command"><CopyableCode code="execute_command" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-containerGroupName"><code>containerGroupName</code></a>, <a href="#parameter-containerName"><code>containerName</code></a></td>
    <td></td>
    <td>Executes a command for a specific container instance in a specified resource group and container group.</td>
</tr>
<tr>
    <td><a href="#attach"><CopyableCode code="attach" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-containerGroupName"><code>containerGroupName</code></a>, <a href="#parameter-containerName"><code>containerName</code></a></td>
    <td></td>
    <td>Attach to the output stream of a specific container instance in a specified resource group and container group.</td>
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
<tr id="parameter-containerGroupName">
    <td><CopyableCode code="containerGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the container group.</td>
</tr>
<tr id="parameter-containerName">
    <td><CopyableCode code="containerName" /></td>
    <td><code>string</code></td>
    <td>The name of the container instance.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="execute_command"
    values={[
        { label: 'execute_command', value: 'execute_command' },
        { label: 'attach', value: 'attach' }
    ]}
>
<TabItem value="execute_command">

Executes a command for a specific container instance in a specified resource group and container group.

```sql
EXEC azure.container_instances.containers.execute_command 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@containerGroupName='{{ containerGroupName }}' --required, 
@containerName='{{ containerName }}' --required 
@@json=
'{
"command": "{{ command }}", 
"terminalSize": "{{ terminalSize }}"
}'
;
```
</TabItem>
<TabItem value="attach">

Attach to the output stream of a specific container instance in a specified resource group and container group.

```sql
EXEC azure.container_instances.containers.attach 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@containerGroupName='{{ containerGroupName }}' --required, 
@containerName='{{ containerName }}' --required
;
```
</TabItem>
</Tabs>
