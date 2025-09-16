--- 
title: virtual_machine_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - virtual_machine_instances
  - connected_vsphere
  - azure_isv
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_isv resources using SQL
custom_edit_url: null
image: /img/stackql-azure_isv-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>virtual_machine_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>virtual_machine_instances</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_isv.connected_vsphere.virtual_machine_instances" /></td></tr>
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
    <td>Gets or sets the extended location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Resource properties.</td>
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
    <td>Gets or sets the extended location.</td>
</tr>
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
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Retrieves information about a virtual machine instance.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Lists all of the virtual machine instances within the specified parent resource.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The operation to create or update a virtual machine instance. Please note some properties can be set only during virtual machine instance creation.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The operation to update a virtual machine instance.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-deleteFromHost"><code>deleteFromHost</code></a>, <a href="#parameter-force"><code>force</code></a></td>
    <td>The operation to delete a virtual machine instance.</td>
</tr>
<tr>
    <td><a href="#stop"><CopyableCode code="stop" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The operation to power off (stop) a virtual machine instance.</td>
</tr>
<tr>
    <td><a href="#start"><CopyableCode code="start" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>The operation to start a virtual machine instance.</td>
</tr>
<tr>
    <td><a href="#restart"><CopyableCode code="restart" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
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
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>Client Api Version.</td>
</tr>
<tr id="parameter-deleteFromHost">
    <td><CopyableCode code="deleteFromHost" /></td>
    <td><code>boolean</code></td>
    <td>Whether to delete the VM from the vCenter.</td>
</tr>
<tr id="parameter-force">
    <td><CopyableCode code="force" /></td>
    <td><code>boolean</code></td>
    <td>Whether force delete was specified.</td>
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

Retrieves information about a virtual machine instance.

```sql
SELECT
extendedLocation,
properties
FROM azure_isv.connected_vsphere.virtual_machine_instances
WHERE resourceUri = '{{ resourceUri }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list">

Lists all of the virtual machine instances within the specified parent resource.

```sql
SELECT
extendedLocation,
properties
FROM azure_isv.connected_vsphere.virtual_machine_instances
WHERE resourceUri = '{{ resourceUri }}' -- required
AND api-version = '{{ api-version }}'
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
INSERT INTO azure_isv.connected_vsphere.virtual_machine_instances (
data__properties,
data__extendedLocation,
resourceUri,
api-version
)
SELECT 
'{{ properties }}' /* required */,
'{{ extendedLocation }}',
'{{ resourceUri }}',
'{{ api-version }}'
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
        Resource properties.
    - name: extendedLocation
      value: object
      description: |
        Gets or sets the extended location.
    - name: api-version
      value: string
      description: Client Api Version.
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
UPDATE azure_isv.connected_vsphere.virtual_machine_instances
SET 
data__properties = '{{ properties }}'
WHERE 
resourceUri = '{{ resourceUri }}' --required
AND api-version = '{{ api-version}}'
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
DELETE FROM azure_isv.connected_vsphere.virtual_machine_instances
WHERE resourceUri = '{{ resourceUri }}' --required
AND api-version = '{{ api-version }}'
AND deleteFromHost = '{{ deleteFromHost }}'
AND force = '{{ force }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="stop"
    values={[
        { label: 'stop', value: 'stop' },
        { label: 'start', value: 'start' },
        { label: 'restart', value: 'restart' }
    ]}
>
<TabItem value="stop">

The operation to power off (stop) a virtual machine instance.

```sql
EXEC azure_isv.connected_vsphere.virtual_machine_instances.stop 
@resourceUri='{{ resourceUri }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"skipShutdown": {{ skipShutdown }}
}'
;
```
</TabItem>
<TabItem value="start">

The operation to start a virtual machine instance.

```sql
EXEC azure_isv.connected_vsphere.virtual_machine_instances.start 
@resourceUri='{{ resourceUri }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="restart">

The operation to restart a virtual machine instance.

```sql
EXEC azure_isv.connected_vsphere.virtual_machine_instances.restart 
@resourceUri='{{ resourceUri }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
</Tabs>
