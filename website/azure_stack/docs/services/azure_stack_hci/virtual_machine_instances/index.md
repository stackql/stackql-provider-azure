--- 
title: virtual_machine_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - virtual_machine_instances
  - azure_stack_hci
  - azure_stack
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_stack resources using SQL
custom_edit_url: null
image: /img/stackql-azure_stack-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>virtual_machine_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>virtual_machine_instances</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.azure_stack_hci.virtual_machine_instances" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
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
    <td><CopyableCode code="extendedLocation" /></td>
    <td><code>object</code></td>
    <td>The extendedLocation of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Identity for the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties under the virtual machine instance resource</td>
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
    <td><CopyableCode code="extendedLocation" /></td>
    <td><code>object</code></td>
    <td>The extendedLocation of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Identity for the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties under the virtual machine instance resource</td>
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
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a></td>
    <td></td>
    <td>Gets a virtual machine instance</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a></td>
    <td></td>
    <td>Lists all of the virtual machine instances within the specified parent resource.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a></td>
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
    <td></td>
    <td>The operation to delete a virtual machine instance.</td>
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
    <td>The operation to stop a virtual machine instance.</td>
</tr>
<tr>
    <td><a href="#restart"><CopyableCode code="restart" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a></td>
    <td></td>
    <td>The operation to restart a virtual machine instance.</td>
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
    <td>The fully qualified Azure Resource manager identifier of the Hybrid Compute machine resource to be extended.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Gets a virtual machine instance

```sql
SELECT
extendedLocation,
identity,
properties
FROM azure_stack.azure_stack_hci.virtual_machine_instances
WHERE resourceUri = '{{ resourceUri }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists all of the virtual machine instances within the specified parent resource.

```sql
SELECT
extendedLocation,
identity,
properties
FROM azure_stack.azure_stack_hci.virtual_machine_instances
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
INSERT INTO azure_stack.azure_stack_hci.virtual_machine_instances (
data__properties,
data__extendedLocation,
data__identity,
resourceUri
)
SELECT 
'{{ properties }}',
'{{ extendedLocation }}',
'{{ identity }}',
'{{ resourceUri }}'
RETURNING
extendedLocation,
identity,
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
        Properties under the virtual machine instance resource
    - name: extendedLocation
      value: object
      description: |
        The extendedLocation of the resource.
    - name: identity
      value: object
      description: |
        Identity for the resource.
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
UPDATE azure_stack.azure_stack_hci.virtual_machine_instances
SET 
data__properties = '{{ properties }}',
data__identity = '{{ identity }}'
WHERE 
resourceUri = '{{ resourceUri }}' --required
RETURNING
extendedLocation,
identity,
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
DELETE FROM azure_stack.azure_stack_hci.virtual_machine_instances
WHERE resourceUri = '{{ resourceUri }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="start"
    values={[
        { label: 'start', value: 'start' },
        { label: 'stop', value: 'stop' },
        { label: 'restart', value: 'restart' }
    ]}
>
<TabItem value="start">

The operation to start a virtual machine instance.

```sql
EXEC azure_stack.azure_stack_hci.virtual_machine_instances.start 
@resourceUri='{{ resourceUri }}' --required
;
```
</TabItem>
<TabItem value="stop">

The operation to stop a virtual machine instance.

```sql
EXEC azure_stack.azure_stack_hci.virtual_machine_instances.stop 
@resourceUri='{{ resourceUri }}' --required
;
```
</TabItem>
<TabItem value="restart">

The operation to restart a virtual machine instance.

```sql
EXEC azure_stack.azure_stack_hci.virtual_machine_instances.restart 
@resourceUri='{{ resourceUri }}' --required
;
```
</TabItem>
</Tabs>
