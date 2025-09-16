--- 
title: images
hide_title: false
hide_table_of_contents: false
keywords:
  - images
  - dev_center
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

Creates, updates, deletes, gets or lists an <code>images</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>images</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_center.images" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_gallery', value: 'list_by_gallery' },
        { label: 'get_by_project', value: 'get_by_project' },
        { label: 'list_by_dev_center', value: 'list_by_dev_center' },
        { label: 'list_by_project', value: 'list_by_project' }
    ]}
>
<TabItem value="get">

OK. The request has succeeded.

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
    <td>Image properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_gallery">

OK. The request has succeeded.

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
    <td>Image properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="get_by_project">

OK. The request has succeeded.

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
    <td>Image properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_dev_center">

OK. The request has succeeded.

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
    <td>Image properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_project">

OK. The request has succeeded.

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
    <td>Image properties.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-devCenterName"><code>devCenterName</code></a>, <a href="#parameter-galleryName"><code>galleryName</code></a>, <a href="#parameter-imageName"><code>imageName</code></a></td>
    <td></td>
    <td>Gets a gallery image.</td>
</tr>
<tr>
    <td><a href="#list_by_gallery"><CopyableCode code="list_by_gallery" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-devCenterName"><code>devCenterName</code></a>, <a href="#parameter-galleryName"><code>galleryName</code></a></td>
    <td><a href="#parameter-$top"><code>$top</code></a></td>
    <td>Lists images for a gallery.</td>
</tr>
<tr>
    <td><a href="#get_by_project"><CopyableCode code="get_by_project" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-projectName"><code>projectName</code></a>, <a href="#parameter-imageName"><code>imageName</code></a></td>
    <td></td>
    <td>Gets an image.</td>
</tr>
<tr>
    <td><a href="#list_by_dev_center"><CopyableCode code="list_by_dev_center" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-devCenterName"><code>devCenterName</code></a></td>
    <td><a href="#parameter-$top"><code>$top</code></a></td>
    <td>Lists images for a devcenter.</td>
</tr>
<tr>
    <td><a href="#list_by_project"><CopyableCode code="list_by_project" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-projectName"><code>projectName</code></a></td>
    <td></td>
    <td>Lists images for a project.</td>
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
<tr id="parameter-devCenterName">
    <td><CopyableCode code="devCenterName" /></td>
    <td><code>string</code></td>
    <td>The name of the devcenter.</td>
</tr>
<tr id="parameter-galleryName">
    <td><CopyableCode code="galleryName" /></td>
    <td><code>string</code></td>
    <td>The name of the gallery.</td>
</tr>
<tr id="parameter-imageName">
    <td><CopyableCode code="imageName" /></td>
    <td><code>string</code></td>
    <td>The name of the image.</td>
</tr>
<tr id="parameter-projectName">
    <td><CopyableCode code="projectName" /></td>
    <td><code>string</code></td>
    <td>The name of the project.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int32)</code></td>
    <td>The maximum number of resources to return from the operation. Example: '$top=10'.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_gallery', value: 'list_by_gallery' },
        { label: 'get_by_project', value: 'get_by_project' },
        { label: 'list_by_dev_center', value: 'list_by_dev_center' },
        { label: 'list_by_project', value: 'list_by_project' }
    ]}
>
<TabItem value="get">

Gets a gallery image.

```sql
SELECT
properties
FROM azure.dev_center.images
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND devCenterName = '{{ devCenterName }}' -- required
AND galleryName = '{{ galleryName }}' -- required
AND imageName = '{{ imageName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_gallery">

Lists images for a gallery.

```sql
SELECT
properties
FROM azure.dev_center.images
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND devCenterName = '{{ devCenterName }}' -- required
AND galleryName = '{{ galleryName }}' -- required
AND $top = '{{ $top }}'
;
```
</TabItem>
<TabItem value="get_by_project">

Gets an image.

```sql
SELECT
properties
FROM azure.dev_center.images
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND projectName = '{{ projectName }}' -- required
AND imageName = '{{ imageName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_dev_center">

Lists images for a devcenter.

```sql
SELECT
properties
FROM azure.dev_center.images
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND devCenterName = '{{ devCenterName }}' -- required
AND $top = '{{ $top }}'
;
```
</TabItem>
<TabItem value="list_by_project">

Lists images for a project.

```sql
SELECT
properties
FROM azure.dev_center.images
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND projectName = '{{ projectName }}' -- required
;
```
</TabItem>
</Tabs>
