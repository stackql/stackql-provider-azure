--- 
title: aml_filesystems
hide_title: false
hide_table_of_contents: false
keywords:
  - aml_filesystems
  - storage_cache
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

Creates, updates, deletes, gets or lists an <code>aml_filesystems</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>aml_filesystems</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage_cache.aml_filesystems" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Returns the AML file system object corresponding to amlFilesystemName.

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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The managed identity used by the AML file system, if configured.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the AML file system.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>SKU for the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="zones" /></td>
    <td><code>array</code></td>
    <td>Availability zones for resources. This field should only contain a single element in the array.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group">

A list of AmlFilesystem objects. Note that entity references might replace complete AmlFilesystem objects, as described in http://docs.oasis-open.org/odata/odata-json-format/v4.01/cs01/odata-json-format-v4.01-cs01.html#sec_EntityReference

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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The managed identity used by the AML file system, if configured.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the AML file system.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>SKU for the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="zones" /></td>
    <td><code>array</code></td>
    <td>Availability zones for resources. This field should only contain a single element in the array.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

A list of AML file systems. Note that entity references might replace complete file system objects, as described in http://docs.oasis-open.org/odata/odata-json-format/v4.01/cs01/odata-json-format-v4.01-cs01.html#sec_EntityReference

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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The managed identity used by the AML file system, if configured.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the AML file system.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>SKU for the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="zones" /></td>
    <td><code>array</code></td>
    <td>Availability zones for resources. This field should only contain a single element in the array.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-amlFilesystemName"><code>amlFilesystemName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Returns an AML file system.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Returns all AML file systems the user has access to under a resource group.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Returns all AML file systems the user has access to under a subscription.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-amlFilesystemName"><code>amlFilesystemName</code></a></td>
    <td></td>
    <td>Create or update an AML file system.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-amlFilesystemName"><code>amlFilesystemName</code></a></td>
    <td></td>
    <td>Update an AML file system instance.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-amlFilesystemName"><code>amlFilesystemName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Schedules an AML file system for deletion.</td>
</tr>
<tr>
    <td><a href="#archive"><CopyableCode code="archive" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-amlFilesystemName"><code>amlFilesystemName</code></a></td>
    <td></td>
    <td>Archive data from the AML file system.</td>
</tr>
<tr>
    <td><a href="#cancel_archive"><CopyableCode code="cancel_archive" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-amlFilesystemName"><code>amlFilesystemName</code></a></td>
    <td></td>
    <td>Cancel archiving data from the AML file system.</td>
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
<tr id="parameter-amlFilesystemName">
    <td><CopyableCode code="amlFilesystemName" /></td>
    <td><code>string</code></td>
    <td>Name for the AML file system. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
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
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Returns an AML file system.

```sql
SELECT
identity,
location,
properties,
sku,
tags,
zones
FROM azure.storage_cache.aml_filesystems
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND amlFilesystemName = '{{ amlFilesystemName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_resource_group">

Returns all AML file systems the user has access to under a resource group.

```sql
SELECT
identity,
location,
properties,
sku,
tags,
zones
FROM azure.storage_cache.aml_filesystems
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Returns all AML file systems the user has access to under a subscription.

```sql
SELECT
identity,
location,
properties,
sku,
tags,
zones
FROM azure.storage_cache.aml_filesystems
WHERE subscriptionId = '{{ subscriptionId }}' -- required
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

Create or update an AML file system.

```sql
INSERT INTO azure.storage_cache.aml_filesystems (
data__tags,
data__location,
data__identity,
data__sku,
data__zones,
data__properties,
resourceGroupName,
subscriptionId,
amlFilesystemName
)
SELECT 
'{{ tags }}',
'{{ location }}',
'{{ identity }}',
'{{ sku }}',
'{{ zones }}',
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ subscriptionId }}',
'{{ amlFilesystemName }}'
RETURNING
identity,
location,
properties,
sku,
tags,
zones
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: aml_filesystems
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the aml_filesystems resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the aml_filesystems resource.
    - name: amlFilesystemName
      value: string
      description: Required parameter for the aml_filesystems resource.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        The geo-location where the resource lives
    - name: identity
      value: object
      description: |
        The managed identity used by the AML file system, if configured.
    - name: sku
      value: object
      description: |
        SKU for the resource.
    - name: zones
      value: array
      description: |
        Availability zones for resources. This field should only contain a single element in the array.
    - name: properties
      value: object
      description: |
        Properties of the AML file system.
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

Update an AML file system instance.

```sql
UPDATE azure.storage_cache.aml_filesystems
SET 
data__tags = '{{ tags }}',
data__properties = '{{ properties }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND amlFilesystemName = '{{ amlFilesystemName }}' --required
RETURNING
identity,
location,
properties,
sku,
tags,
zones;
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

Schedules an AML file system for deletion.

```sql
DELETE FROM azure.storage_cache.aml_filesystems
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND amlFilesystemName = '{{ amlFilesystemName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="archive"
    values={[
        { label: 'archive', value: 'archive' },
        { label: 'cancel_archive', value: 'cancel_archive' }
    ]}
>
<TabItem value="archive">

Archive data from the AML file system.

```sql
EXEC azure.storage_cache.aml_filesystems.archive 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@amlFilesystemName='{{ amlFilesystemName }}' --required 
@@json=
'{
"filesystemPath": "{{ filesystemPath }}"
}'
;
```
</TabItem>
<TabItem value="cancel_archive">

Cancel archiving data from the AML file system.

```sql
EXEC azure.storage_cache.aml_filesystems.cancel_archive 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@amlFilesystemName='{{ amlFilesystemName }}' --required
;
```
</TabItem>
</Tabs>
