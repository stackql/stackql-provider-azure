--- 
title: virtual_machine_run_commands
hide_title: false
hide_table_of_contents: false
keywords:
  - virtual_machine_run_commands
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

Creates, updates, deletes, gets or lists a <code>virtual_machine_run_commands</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>virtual_machine_run_commands</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.virtual_machine_run_commands" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_by_virtual_machine"
    values={[
        { label: 'get_by_virtual_machine', value: 'get_by_virtual_machine' },
        { label: 'get', value: 'get' },
        { label: 'list_by_virtual_machine', value: 'list_by_virtual_machine' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get_by_virtual_machine">

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
    <td>Resource Id</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource name</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Describes the properties of a Virtual Machine run command.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type</td>
</tr>
</tbody>
</table>
</TabItem>
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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>The VM run command id.</td>
</tr>
<tr>
    <td><CopyableCode code="$schema" /></td>
    <td><code>string</code></td>
    <td>The VM run command schema.</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>The VM run command description.</td>
</tr>
<tr>
    <td><CopyableCode code="label" /></td>
    <td><code>string</code></td>
    <td>The VM run command label.</td>
</tr>
<tr>
    <td><CopyableCode code="osType" /></td>
    <td><code>string</code></td>
    <td>The Operating System type.</td>
</tr>
<tr>
    <td><CopyableCode code="parameters" /></td>
    <td><code>array</code></td>
    <td>The parameters used by the script.</td>
</tr>
<tr>
    <td><CopyableCode code="script" /></td>
    <td><code>array</code></td>
    <td>The script to be executed.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_virtual_machine">

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
    <td>Resource Id</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource name</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Describes the properties of a Virtual Machine run command.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type</td>
</tr>
</tbody>
</table>
</TabItem>
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
    <td>The VM run command id.</td>
</tr>
<tr>
    <td><CopyableCode code="$schema" /></td>
    <td><code>string</code></td>
    <td>The VM run command schema.</td>
</tr>
<tr>
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>The VM run command description.</td>
</tr>
<tr>
    <td><CopyableCode code="label" /></td>
    <td><code>string</code></td>
    <td>The VM run command label.</td>
</tr>
<tr>
    <td><CopyableCode code="osType" /></td>
    <td><code>string</code></td>
    <td>The Operating System type.</td>
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
    <td><a href="#get_by_virtual_machine"><CopyableCode code="get_by_virtual_machine" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmName"><code>vmName</code></a>, <a href="#parameter-runCommandName"><code>runCommandName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>The operation to get the run command.</td>
</tr>
<tr>
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-location"><code>location</code></a>, <a href="#parameter-commandId"><code>commandId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets specific run command for a subscription in a location.</td>
</tr>
<tr>
    <td><a href="#list_by_virtual_machine"><CopyableCode code="list_by_virtual_machine" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmName"><code>vmName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>The operation to get all run commands of a Virtual Machine.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-location"><code>location</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Lists all available run commands for a subscription in a location.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmName"><code>vmName</code></a>, <a href="#parameter-runCommandName"><code>runCommandName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>The operation to create or update the run command.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmName"><code>vmName</code></a>, <a href="#parameter-runCommandName"><code>runCommandName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>The operation to update the run command.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vmName"><code>vmName</code></a>, <a href="#parameter-runCommandName"><code>runCommandName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>The operation to delete the run command.</td>
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
<tr id="parameter-commandId">
    <td><CopyableCode code="commandId" /></td>
    <td><code>string</code></td>
    <td>The command id.</td>
</tr>
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The location upon which run commands is queried.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group.</td>
</tr>
<tr id="parameter-runCommandName">
    <td><CopyableCode code="runCommandName" /></td>
    <td><code>string</code></td>
    <td>The name of the virtual machine run command.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
<tr id="parameter-vmName">
    <td><CopyableCode code="vmName" /></td>
    <td><code>string</code></td>
    <td>The name of the virtual machine where the run command should be deleted.</td>
</tr>
<tr id="parameter-$expand">
    <td><CopyableCode code="$expand" /></td>
    <td><code>string</code></td>
    <td>The expand expression to apply on the operation.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_by_virtual_machine"
    values={[
        { label: 'get_by_virtual_machine', value: 'get_by_virtual_machine' },
        { label: 'get', value: 'get' },
        { label: 'list_by_virtual_machine', value: 'list_by_virtual_machine' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get_by_virtual_machine">

The operation to get the run command.

```sql
SELECT
id,
name,
location,
properties,
tags,
type
FROM azure.compute.virtual_machine_run_commands
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND vmName = '{{ vmName }}' -- required
AND runCommandName = '{{ runCommandName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $expand = '{{ $expand }}'
;
```
</TabItem>
<TabItem value="get">

Gets specific run command for a subscription in a location.

```sql
SELECT
id,
$schema,
description,
label,
osType,
parameters,
script
FROM azure.compute.virtual_machine_run_commands
WHERE location = '{{ location }}' -- required
AND commandId = '{{ commandId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_virtual_machine">

The operation to get all run commands of a Virtual Machine.

```sql
SELECT
id,
name,
location,
properties,
tags,
type
FROM azure.compute.virtual_machine_run_commands
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND vmName = '{{ vmName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $expand = '{{ $expand }}'
;
```
</TabItem>
<TabItem value="list">

Lists all available run commands for a subscription in a location.

```sql
SELECT
id,
$schema,
description,
label,
osType
FROM azure.compute.virtual_machine_run_commands
WHERE location = '{{ location }}' -- required
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

The operation to create or update the run command.

```sql
INSERT INTO azure.compute.virtual_machine_run_commands (
data__properties,
data__location,
data__tags,
resourceGroupName,
vmName,
runCommandName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ location }}',
'{{ tags }}',
'{{ resourceGroupName }}',
'{{ vmName }}',
'{{ runCommandName }}',
'{{ subscriptionId }}'
RETURNING
id,
name,
location,
properties,
tags,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: virtual_machine_run_commands
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the virtual_machine_run_commands resource.
    - name: vmName
      value: string
      description: Required parameter for the virtual_machine_run_commands resource.
    - name: runCommandName
      value: string
      description: Required parameter for the virtual_machine_run_commands resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the virtual_machine_run_commands resource.
    - name: properties
      value: object
      description: |
        Describes the properties of a Virtual Machine run command.
    - name: location
      value: string
      description: |
        Resource location
    - name: tags
      value: object
      description: |
        Resource tags
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update"
    values={[
        { label: 'update', value: 'update' }
    ]}
>
<TabItem value="update">

The operation to update the run command.

```sql
UPDATE azure.compute.virtual_machine_run_commands
SET 
data__properties = '{{ properties }}',
data__tags = '{{ tags }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND vmName = '{{ vmName }}' --required
AND runCommandName = '{{ runCommandName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
RETURNING
id,
name,
location,
properties,
tags,
type;
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

The operation to delete the run command.

```sql
DELETE FROM azure.compute.virtual_machine_run_commands
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND vmName = '{{ vmName }}' --required
AND runCommandName = '{{ runCommandName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
