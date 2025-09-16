--- 
title: platform_images
hide_title: false
hide_table_of_contents: false
keywords:
  - platform_images
  - compute_admin
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

Creates, updates, deletes, gets or lists a <code>platform_images</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>platform_images</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_stack.compute_admin.platform_images" /></td></tr>
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
    <td>ID of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Location of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Platform image properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of Resource.</td>
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
    <td>ID of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Location of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Platform image properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of Resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-publisher"><code>publisher</code></a>, <a href="#parameter-offer"><code>offer</code></a>, <a href="#parameter-sku"><code>sku</code></a>, <a href="#parameter-version"><code>version</code></a></td>
    <td></td>
    <td>Returns the specific platform image matching publisher, offer, skus and version.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a></td>
    <td></td>
    <td>Returns a list of all platform images.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-publisher"><code>publisher</code></a>, <a href="#parameter-offer"><code>offer</code></a>, <a href="#parameter-sku"><code>sku</code></a>, <a href="#parameter-version"><code>version</code></a></td>
    <td></td>
    <td>Creates a new platform image with given publisher, offer, skus and version.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-location"><code>location</code></a>, <a href="#parameter-publisher"><code>publisher</code></a>, <a href="#parameter-offer"><code>offer</code></a>, <a href="#parameter-sku"><code>sku</code></a>, <a href="#parameter-version"><code>version</code></a></td>
    <td></td>
    <td>Delete a platform image</td>
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
<tr id="parameter-location">
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The name of Azure region.</td>
</tr>
<tr id="parameter-offer">
    <td><CopyableCode code="offer" /></td>
    <td><code>string</code></td>
    <td>Name of the offer.</td>
</tr>
<tr id="parameter-publisher">
    <td><CopyableCode code="publisher" /></td>
    <td><code>string</code></td>
    <td>Name of the publisher.</td>
</tr>
<tr id="parameter-sku">
    <td><CopyableCode code="sku" /></td>
    <td><code>string</code></td>
    <td>Name of the SKU.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-version">
    <td><CopyableCode code="version" /></td>
    <td><code>string</code></td>
    <td>The version of the resource.</td>
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

Returns the specific platform image matching publisher, offer, skus and version.

```sql
SELECT
id,
name,
location,
properties,
type
FROM azure_stack.compute_admin.platform_images
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND location = '{{ location }}' -- required
AND publisher = '{{ publisher }}' -- required
AND offer = '{{ offer }}' -- required
AND sku = '{{ sku }}' -- required
AND version = '{{ version }}' -- required
;
```
</TabItem>
<TabItem value="list">

Returns a list of all platform images.

```sql
SELECT
id,
name,
location,
properties,
type
FROM azure_stack.compute_admin.platform_images
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND location = '{{ location }}' -- required
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

Creates a new platform image with given publisher, offer, skus and version.

```sql
INSERT INTO azure_stack.compute_admin.platform_images (
data__properties,
subscriptionId,
location,
publisher,
offer,
sku,
version
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ location }}',
'{{ publisher }}',
'{{ offer }}',
'{{ sku }}',
'{{ version }}'
RETURNING
id,
name,
location,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: platform_images
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the platform_images resource.
    - name: location
      value: string
      description: Required parameter for the platform_images resource.
    - name: publisher
      value: string
      description: Required parameter for the platform_images resource.
    - name: offer
      value: string
      description: Required parameter for the platform_images resource.
    - name: sku
      value: string
      description: Required parameter for the platform_images resource.
    - name: version
      value: string
      description: Required parameter for the platform_images resource.
    - name: properties
      value: object
      description: |
        Platform image properties.
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

Delete a platform image

```sql
DELETE FROM azure_stack.compute_admin.platform_images
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND location = '{{ location }}' --required
AND publisher = '{{ publisher }}' --required
AND offer = '{{ offer }}' --required
AND sku = '{{ sku }}' --required
AND version = '{{ version }}' --required
;
```
</TabItem>
</Tabs>
