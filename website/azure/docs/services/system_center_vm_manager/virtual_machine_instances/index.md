--- 
title: virtual_machine_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - virtual_machine_instances
  - system_center_vm_manager
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

Creates, updates, deletes, gets or lists a <code>virtual_machine_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>virtual_machine_instances</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.system_center_vm_manager.virtual_machine_instances" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' },
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="list">

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
    <td><CopyableCode code="extendedLocation" /></td>
    <td><code>object</code></td>
    <td>Gets or sets the extended location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The resource-specific properties for this resource.</td>
</tr>
</tbody>
</table>
</TabItem>
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
    <td><CopyableCode code="extendedLocation" /></td>
    <td><code>object</code></td>
    <td>Gets or sets the extended location.</td>
</tr>
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
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a></td>
    <td></td>
    <td>Lists all of the virtual machine instances within the specified parent resource.</td>
</tr>
<tr>
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a></td>
    <td></td>
    <td>Retrieves information about a virtual machine instance.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-data__extendedLocation"><code>data__extendedLocation</code></a></td>
    <td></td>
    <td>The operation to create or update a virtual machine instance. Please note some properties can be set only during virtual machine instance creation.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a></td>
    <td></td>
    <td>The operation to update a virtual machine instance.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a></td>
    <td><a href="#parameter-force"><code>force</code></a>, <a href="#parameter-deleteFromHost"><code>deleteFromHost</code></a></td>
    <td>The operation to delete a virtual machine instance.</td>
</tr>
<tr>
    <td><a href="#restart"><CopyableCode code="restart" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a></td>
    <td></td>
    <td>The operation to restart a virtual machine instance.</td>
</tr>
<tr>
    <td><a href="#restore_checkpoint"><CopyableCode code="restore_checkpoint" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a></td>
    <td></td>
    <td>Restores to a checkpoint in virtual machine instance.</td>
</tr>
<tr>
    <td><a href="#start"><CopyableCode code="start" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a></td>
    <td></td>
    <td>The operation to start a virtual machine instance.</td>
</tr>
<tr>
    <td><a href="#stop"><CopyableCode code="stop" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a></td>
    <td></td>
    <td>The operation to power off (stop) a virtual machine instance.</td>
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
<tr id="parameter-resourceUri">
    <td><CopyableCode code="resourceUri" /></td>
    <td><code>string</code></td>
    <td>The fully qualified Azure Resource manager identifier of the resource.</td>
</tr>
<tr id="parameter-deleteFromHost">
    <td><CopyableCode code="deleteFromHost" /></td>
    <td><code>string</code></td>
    <td>Whether to disable the VM from azure and also delete it from Vmm.</td>
</tr>
<tr id="parameter-force">
    <td><CopyableCode code="force" /></td>
    <td><code>string</code></td>
    <td>Forces the resource to be deleted.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' },
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="list">

Lists all of the virtual machine instances within the specified parent resource.

```sql
SELECT
extendedLocation,
properties
FROM azure.system_center_vm_manager.virtual_machine_instances
WHERE resourceUri = '{{ resourceUri }}' -- required
;
```
</TabItem>
<TabItem value="get">

Retrieves information about a virtual machine instance.

```sql
SELECT
extendedLocation,
properties
FROM azure.system_center_vm_manager.virtual_machine_instances
WHERE resourceUri = '{{ resourceUri }}' -- required
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

The operation to create or update a virtual machine instance. Please note some properties can be set only during virtual machine instance creation.

```sql
INSERT INTO azure.system_center_vm_manager.virtual_machine_instances (
data__properties,
data__extendedLocation,
resourceUri
)
SELECT 
'{{ properties }}',
'{{ extendedLocation }}' /* required */,
'{{ resourceUri }}'
RETURNING
extendedLocation,
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: virtual_machine_instances
  props:
    - name: resourceUri
      value: string
      description: Required parameter for the virtual_machine_instances resource.
    - name: properties
      value: object
      description: |
        The resource-specific properties for this resource.
    - name: extendedLocation
      value: object
      description: |
        Gets or sets the extended location.
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

The operation to update a virtual machine instance.

```sql
UPDATE azure.system_center_vm_manager.virtual_machine_instances
SET 
data__properties = '{{ properties }}'
WHERE 
resourceUri = '{{ resourceUri }}' --required
RETURNING
extendedLocation,
properties;
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

The operation to delete a virtual machine instance.

```sql
DELETE FROM azure.system_center_vm_manager.virtual_machine_instances
WHERE resourceUri = '{{ resourceUri }}' --required
AND force = '{{ force }}'
AND deleteFromHost = '{{ deleteFromHost }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="restart"
    values={[
        { label: 'restart', value: 'restart' },
        { label: 'restore_checkpoint', value: 'restore_checkpoint' },
        { label: 'start', value: 'start' },
        { label: 'stop', value: 'stop' }
    ]}
>
<TabItem value="restart">

The operation to restart a virtual machine instance.

```sql
EXEC azure.system_center_vm_manager.virtual_machine_instances.restart 
@resourceUri='{{ resourceUri }}' --required
;
```
</TabItem>
<TabItem value="restore_checkpoint">

Restores to a checkpoint in virtual machine instance.

```sql
EXEC azure.system_center_vm_manager.virtual_machine_instances.restore_checkpoint 
@resourceUri='{{ resourceUri }}' --required 
@@json=
'{
"id": "{{ id }}"
}'
;
```
</TabItem>
<TabItem value="start">

The operation to start a virtual machine instance.

```sql
EXEC azure.system_center_vm_manager.virtual_machine_instances.start 
@resourceUri='{{ resourceUri }}' --required
;
```
</TabItem>
<TabItem value="stop">

The operation to power off (stop) a virtual machine instance.

```sql
EXEC azure.system_center_vm_manager.virtual_machine_instances.stop 
@resourceUri='{{ resourceUri }}' --required 
@@json=
'{
"skipShutdown": "{{ skipShutdown }}"
}'
;
```
</TabItem>
</Tabs>
