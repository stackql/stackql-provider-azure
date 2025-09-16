--- 
title: disks
hide_title: false
hide_table_of_contents: false
keywords:
  - disks
  - dev_test_labs
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

Creates, updates, deletes, gets or lists a <code>disks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>disks</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_test_labs.disks" /></td></tr>
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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>The identifier of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The location of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>The tags of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource.</td>
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
    <td>The identifier of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The location of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>The tags of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-labName"><code>labName</code></a>, <a href="#parameter-userName"><code>userName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a>, <a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Get disk.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-labName"><code>labName</code></a>, <a href="#parameter-userName"><code>userName</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a>, <a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$top"><code>$top</code></a>, <a href="#parameter-$orderby"><code>$orderby</code></a>, <a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>List disks in a given user profile.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-labName"><code>labName</code></a>, <a href="#parameter-userName"><code>userName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Create or replace an existing disk. This operation can take a while to complete.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-labName"><code>labName</code></a>, <a href="#parameter-userName"><code>userName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Allows modifying tags of disks. All other properties will be ignored.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-labName"><code>labName</code></a>, <a href="#parameter-userName"><code>userName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Delete disk. This operation can take a while to complete.</td>
</tr>
<tr>
    <td><a href="#attach"><CopyableCode code="attach" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-labName"><code>labName</code></a>, <a href="#parameter-userName"><code>userName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Attach and create the lease of the disk to the virtual machine. This operation can take a while to complete.</td>
</tr>
<tr>
    <td><a href="#detach"><CopyableCode code="detach" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-labName"><code>labName</code></a>, <a href="#parameter-userName"><code>userName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Detach and break the lease of the disk attached to the virtual machine. This operation can take a while to complete.</td>
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
<tr id="parameter-labName">
    <td><CopyableCode code="labName" /></td>
    <td><code>string</code></td>
    <td>The name of the lab.</td>
</tr>
<tr id="parameter-name">
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the disk.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription ID.</td>
</tr>
<tr id="parameter-userName">
    <td><CopyableCode code="userName" /></td>
    <td><code>string</code></td>
    <td>The name of the user profile.</td>
</tr>
<tr id="parameter-$expand">
    <td><CopyableCode code="$expand" /></td>
    <td><code>string</code></td>
    <td>Specify the $expand query. Example: 'properties($select=diskType)'</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The filter to apply to the operation. Example: '$filter=contains(name,'myName')</td>
</tr>
<tr id="parameter-$orderby">
    <td><CopyableCode code="$orderby" /></td>
    <td><code>string</code></td>
    <td>The ordering expression for the results, using OData notation. Example: '$orderby=name desc'</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int32)</code></td>
    <td>The maximum number of resources to return from the operation. Example: '$top=10'</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>Client API version.</td>
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

Get disk.

```sql
SELECT
id,
name,
location,
properties,
tags,
type
FROM azure.dev_test_labs.disks
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND labName = '{{ labName }}' -- required
AND userName = '{{ userName }}' -- required
AND name = '{{ name }}' -- required
AND $expand = '{{ $expand }}'
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list">

List disks in a given user profile.

```sql
SELECT
id,
name,
location,
properties,
tags,
type
FROM azure.dev_test_labs.disks
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND labName = '{{ labName }}' -- required
AND userName = '{{ userName }}' -- required
AND $expand = '{{ $expand }}'
AND $filter = '{{ $filter }}'
AND $top = '{{ $top }}'
AND $orderby = '{{ $orderby }}'
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

Create or replace an existing disk. This operation can take a while to complete.

```sql
INSERT INTO azure.dev_test_labs.disks (
data__location,
data__tags,
data__properties,
subscriptionId,
resourceGroupName,
labName,
userName,
name,
api-version
)
SELECT 
'{{ location }}',
'{{ tags }}',
'{{ properties }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ labName }}',
'{{ userName }}',
'{{ name }}',
'{{ api-version }}'
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
- name: disks
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the disks resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the disks resource.
    - name: labName
      value: string
      description: Required parameter for the disks resource.
    - name: userName
      value: string
      description: Required parameter for the disks resource.
    - name: name
      value: string
      description: Required parameter for the disks resource.
    - name: location
      value: string
      description: |
        The location of the resource.
    - name: tags
      value: object
      description: |
        The tags of the resource.
    - name: properties
      value: object
      description: |
        The properties of the resource.
    - name: api-version
      value: string
      description: Client API version.
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

Allows modifying tags of disks. All other properties will be ignored.

```sql
UPDATE azure.dev_test_labs.disks
SET 
data__tags = '{{ tags }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND labName = '{{ labName }}' --required
AND userName = '{{ userName }}' --required
AND name = '{{ name }}' --required
AND api-version = '{{ api-version}}'
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

Delete disk. This operation can take a while to complete.

```sql
DELETE FROM azure.dev_test_labs.disks
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND labName = '{{ labName }}' --required
AND userName = '{{ userName }}' --required
AND name = '{{ name }}' --required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="attach"
    values={[
        { label: 'attach', value: 'attach' },
        { label: 'detach', value: 'detach' }
    ]}
>
<TabItem value="attach">

Attach and create the lease of the disk to the virtual machine. This operation can take a while to complete.

```sql
EXEC azure.dev_test_labs.disks.attach 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@labName='{{ labName }}' --required, 
@userName='{{ userName }}' --required, 
@name='{{ name }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"leasedByLabVmId": "{{ leasedByLabVmId }}"
}'
;
```
</TabItem>
<TabItem value="detach">

Detach and break the lease of the disk attached to the virtual machine. This operation can take a while to complete.

```sql
EXEC azure.dev_test_labs.disks.detach 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@labName='{{ labName }}' --required, 
@userName='{{ userName }}' --required, 
@name='{{ name }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"leasedByLabVmId": "{{ leasedByLabVmId }}"
}'
;
```
</TabItem>
</Tabs>
