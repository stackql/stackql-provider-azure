--- 
title: project_catalog_image_definitions
hide_title: false
hide_table_of_contents: false
keywords:
  - project_catalog_image_definitions
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

Creates, updates, deletes, gets or lists a <code>project_catalog_image_definitions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>project_catalog_image_definitions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_center.project_catalog_image_definitions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_by_project_catalog"
    values={[
        { label: 'get_by_project_catalog', value: 'get_by_project_catalog' },
        { label: 'list_by_project_catalog', value: 'list_by_project_catalog' }
    ]}
>
<TabItem value="get_by_project_catalog">

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
    <td>Image Definition properties</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_project_catalog">

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
    <td>Image Definition properties</td>
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
    <td><a href="#get_by_project_catalog"><CopyableCode code="get_by_project_catalog" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td></td>
    <td>Gets an Image Definition from the catalog</td>
</tr>
<tr>
    <td><a href="#list_by_project_catalog"><CopyableCode code="list_by_project_catalog" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td></td>
    <td>List Image Definitions in the catalog.</td>
</tr>
<tr>
    <td><a href="#build_image"><CopyableCode code="build_image" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td></td>
    <td></td>
    <td>Builds an image for the specified Image Definition.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_by_project_catalog"
    values={[
        { label: 'get_by_project_catalog', value: 'get_by_project_catalog' },
        { label: 'list_by_project_catalog', value: 'list_by_project_catalog' }
    ]}
>
<TabItem value="get_by_project_catalog">

Gets an Image Definition from the catalog

```sql
SELECT
properties
FROM azure.dev_center.project_catalog_image_definitions
;
```
</TabItem>
<TabItem value="list_by_project_catalog">

List Image Definitions in the catalog.

```sql
SELECT
properties
FROM azure.dev_center.project_catalog_image_definitions
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="build_image"
    values={[
        { label: 'build_image', value: 'build_image' }
    ]}
>
<TabItem value="build_image">

Builds an image for the specified Image Definition.

```sql
EXEC azure.dev_center.project_catalog_image_definitions.build_image 

;
```
</TabItem>
</Tabs>
