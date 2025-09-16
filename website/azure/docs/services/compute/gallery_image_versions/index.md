--- 
title: gallery_image_versions
hide_title: false
hide_table_of_contents: false
keywords:
  - gallery_image_versions
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

Creates, updates, deletes, gets or lists a <code>gallery_image_versions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>gallery_image_versions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.gallery_image_versions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_gallery_image', value: 'list_by_gallery_image' }
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
    <td>Describes the properties of a gallery image version.</td>
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
<TabItem value="list_by_gallery_image">

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
    <td>Describes the properties of a gallery image version.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-galleryName"><code>galleryName</code></a>, <a href="#parameter-galleryImageName"><code>galleryImageName</code></a>, <a href="#parameter-galleryImageVersionName"><code>galleryImageVersionName</code></a></td>
    <td><a href="#parameter-$expand"><code>$expand</code></a></td>
    <td>Retrieves information about a gallery image version.</td>
</tr>
<tr>
    <td><a href="#list_by_gallery_image"><CopyableCode code="list_by_gallery_image" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-galleryName"><code>galleryName</code></a>, <a href="#parameter-galleryImageName"><code>galleryImageName</code></a></td>
    <td></td>
    <td>List gallery image versions in a gallery image definition.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-galleryName"><code>galleryName</code></a>, <a href="#parameter-galleryImageName"><code>galleryImageName</code></a>, <a href="#parameter-galleryImageVersionName"><code>galleryImageVersionName</code></a></td>
    <td></td>
    <td>Create or update a gallery image version.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-galleryName"><code>galleryName</code></a>, <a href="#parameter-galleryImageName"><code>galleryImageName</code></a>, <a href="#parameter-galleryImageVersionName"><code>galleryImageVersionName</code></a></td>
    <td></td>
    <td>Update a gallery image version.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-galleryName"><code>galleryName</code></a>, <a href="#parameter-galleryImageName"><code>galleryImageName</code></a>, <a href="#parameter-galleryImageVersionName"><code>galleryImageVersionName</code></a></td>
    <td></td>
    <td>Delete a gallery image version.</td>
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
<tr id="parameter-galleryImageName">
    <td><CopyableCode code="galleryImageName" /></td>
    <td><code>string</code></td>
    <td>The name of the gallery image definition in which the Image Version resides.</td>
</tr>
<tr id="parameter-galleryImageVersionName">
    <td><CopyableCode code="galleryImageVersionName" /></td>
    <td><code>string</code></td>
    <td>The name of the gallery image version to be deleted.</td>
</tr>
<tr id="parameter-galleryName">
    <td><CopyableCode code="galleryName" /></td>
    <td><code>string</code></td>
    <td>The name of the Shared Image Gallery in which the Image Definition resides.</td>
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
<tr id="parameter-$expand">
    <td><CopyableCode code="$expand" /></td>
    <td><code>string</code></td>
    <td>The expand expression to apply on the operation.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_gallery_image', value: 'list_by_gallery_image' }
    ]}
>
<TabItem value="get">

Retrieves information about a gallery image version.

```sql
SELECT
id,
name,
location,
properties,
tags,
type
FROM azure.compute.gallery_image_versions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND galleryName = '{{ galleryName }}' -- required
AND galleryImageName = '{{ galleryImageName }}' -- required
AND galleryImageVersionName = '{{ galleryImageVersionName }}' -- required
AND $expand = '{{ $expand }}'
;
```
</TabItem>
<TabItem value="list_by_gallery_image">

List gallery image versions in a gallery image definition.

```sql
SELECT
id,
name,
location,
properties,
tags,
type
FROM azure.compute.gallery_image_versions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND galleryName = '{{ galleryName }}' -- required
AND galleryImageName = '{{ galleryImageName }}' -- required
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

Create or update a gallery image version.

```sql
INSERT INTO azure.compute.gallery_image_versions (
data__properties,
data__location,
data__tags,
subscriptionId,
resourceGroupName,
galleryName,
galleryImageName,
galleryImageVersionName
)
SELECT 
'{{ properties }}',
'{{ location }}',
'{{ tags }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ galleryName }}',
'{{ galleryImageName }}',
'{{ galleryImageVersionName }}'
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
- name: gallery_image_versions
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the gallery_image_versions resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the gallery_image_versions resource.
    - name: galleryName
      value: string
      description: Required parameter for the gallery_image_versions resource.
    - name: galleryImageName
      value: string
      description: Required parameter for the gallery_image_versions resource.
    - name: galleryImageVersionName
      value: string
      description: Required parameter for the gallery_image_versions resource.
    - name: properties
      value: object
      description: |
        Describes the properties of a gallery image version.
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

Update a gallery image version.

```sql
UPDATE azure.compute.gallery_image_versions
SET 
data__properties = '{{ properties }}',
data__tags = '{{ tags }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND galleryName = '{{ galleryName }}' --required
AND galleryImageName = '{{ galleryImageName }}' --required
AND galleryImageVersionName = '{{ galleryImageVersionName }}' --required
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

Delete a gallery image version.

```sql
DELETE FROM azure.compute.gallery_image_versions
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND galleryName = '{{ galleryName }}' --required
AND galleryImageName = '{{ galleryImageName }}' --required
AND galleryImageVersionName = '{{ galleryImageVersionName }}' --required
;
```
</TabItem>
</Tabs>
