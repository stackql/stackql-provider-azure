--- 
title: community_gallery_image_versions
hide_title: false
hide_table_of_contents: false
keywords:
  - community_gallery_image_versions
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

Creates, updates, deletes, gets or lists a <code>community_gallery_image_versions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>community_gallery_image_versions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.compute.community_gallery_image_versions" /></td></tr>
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
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource name</td>
</tr>
<tr>
    <td><CopyableCode code="identifier" /></td>
    <td><code>object</code></td>
    <td>The identifier information of community gallery.</td>
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
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource name</td>
</tr>
<tr>
    <td><CopyableCode code="identifier" /></td>
    <td><code>object</code></td>
    <td>The identifier information of community gallery.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-publicGalleryName"><code>publicGalleryName</code></a>, <a href="#parameter-galleryImageName"><code>galleryImageName</code></a>, <a href="#parameter-galleryImageVersionName"><code>galleryImageVersionName</code></a></td>
    <td></td>
    <td>Get a community gallery image version.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-publicGalleryName"><code>publicGalleryName</code></a>, <a href="#parameter-galleryImageName"><code>galleryImageName</code></a></td>
    <td></td>
    <td>List community gallery image versions inside an image.</td>
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
    <td>The name of the community gallery image definition.</td>
</tr>
<tr id="parameter-galleryImageVersionName">
    <td><CopyableCode code="galleryImageVersionName" /></td>
    <td><code>string</code></td>
    <td>The name of the community gallery image version. Needs to follow semantic version name pattern: The allowed characters are digit and period. Digits must be within the range of a 32-bit integer. Format: &lt;MajorVersion&gt;.&lt;MinorVersion&gt;.&lt;Patch&gt;</td>
</tr>
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location.</td>
</tr>
<tr id="parameter-publicGalleryName">
    <td><CopyableCode code="publicGalleryName" /></td>
    <td><code>string</code></td>
    <td>The public name of the community gallery.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
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

Get a community gallery image version.

```sql
SELECT
name,
identifier,
location,
properties,
type
FROM azure.compute.community_gallery_image_versions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND location = '{{ location }}' -- required
AND publicGalleryName = '{{ publicGalleryName }}' -- required
AND galleryImageName = '{{ galleryImageName }}' -- required
AND galleryImageVersionName = '{{ galleryImageVersionName }}' -- required
;
```
</TabItem>
<TabItem value="list">

List community gallery image versions inside an image.

```sql
SELECT
name,
identifier,
location,
properties,
type
FROM azure.compute.community_gallery_image_versions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND location = '{{ location }}' -- required
AND publicGalleryName = '{{ publicGalleryName }}' -- required
AND galleryImageName = '{{ galleryImageName }}' -- required
;
```
</TabItem>
</Tabs>
