--- 
title: archives
hide_title: false
hide_table_of_contents: false
keywords:
  - archives
  - container_registry
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

Creates, updates, deletes, gets or lists an <code>archives</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>archives</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.container_registry.archives" /></td></tr>
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

The request was successful; the request was well-formed and received properly.

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
    <td>The resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the archive.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
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

The request was successful; the request was well-formed and received properly.

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
    <td>The resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties of the archive.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-registryName"><code>registryName</code></a>, <a href="#parameter-packageType"><code>packageType</code></a>, <a href="#parameter-archiveName"><code>archiveName</code></a></td>
    <td></td>
    <td>Gets the properties of the archive.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-registryName"><code>registryName</code></a>, <a href="#parameter-packageType"><code>packageType</code></a></td>
    <td></td>
    <td>Lists all archives for the specified container registry and package type.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-registryName"><code>registryName</code></a>, <a href="#parameter-packageType"><code>packageType</code></a>, <a href="#parameter-archiveName"><code>archiveName</code></a></td>
    <td></td>
    <td>Creates a archive for a container registry with the specified parameters.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-registryName"><code>registryName</code></a>, <a href="#parameter-packageType"><code>packageType</code></a>, <a href="#parameter-archiveName"><code>archiveName</code></a></td>
    <td></td>
    <td>Updates a archive for a container registry with the specified parameters.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-registryName"><code>registryName</code></a>, <a href="#parameter-packageType"><code>packageType</code></a>, <a href="#parameter-archiveName"><code>archiveName</code></a></td>
    <td></td>
    <td>Deletes a archive from a container registry.</td>
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
<tr id="parameter-archiveName">
    <td><CopyableCode code="archiveName" /></td>
    <td><code>string</code></td>
    <td>The name of the archive resource.</td>
</tr>
<tr id="parameter-packageType">
    <td><CopyableCode code="packageType" /></td>
    <td><code>string</code></td>
    <td>The type of the package resource.</td>
</tr>
<tr id="parameter-registryName">
    <td><CopyableCode code="registryName" /></td>
    <td><code>string</code></td>
    <td>The name of the container registry.</td>
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
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Gets the properties of the archive.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.container_registry.archives
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND registryName = '{{ registryName }}' -- required
AND packageType = '{{ packageType }}' -- required
AND archiveName = '{{ archiveName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists all archives for the specified container registry and package type.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.container_registry.archives
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND registryName = '{{ registryName }}' -- required
AND packageType = '{{ packageType }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

Creates a archive for a container registry with the specified parameters.

```sql
INSERT INTO azure.container_registry.archives (
data__properties,
subscriptionId,
resourceGroupName,
registryName,
packageType,
archiveName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ registryName }}',
'{{ packageType }}',
'{{ archiveName }}'
RETURNING
id,
name,
properties,
systemData,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: archives
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the archives resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the archives resource.
    - name: registryName
      value: string
      description: Required parameter for the archives resource.
    - name: packageType
      value: string
      description: Required parameter for the archives resource.
    - name: archiveName
      value: string
      description: Required parameter for the archives resource.
    - name: properties
      value: object
      description: |
        The properties of the archive.
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

Updates a archive for a container registry with the specified parameters.

```sql
UPDATE azure.container_registry.archives
SET 
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND registryName = '{{ registryName }}' --required
AND packageType = '{{ packageType }}' --required
AND archiveName = '{{ archiveName }}' --required
RETURNING
id,
name,
properties,
systemData,
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

Deletes a archive from a container registry.

```sql
DELETE FROM azure.container_registry.archives
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND registryName = '{{ registryName }}' --required
AND packageType = '{{ packageType }}' --required
AND archiveName = '{{ archiveName }}' --required
;
```
</TabItem>
</Tabs>
