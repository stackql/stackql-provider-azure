--- 
title: data_manager_for_agriculture_extensions
hide_title: false
hide_table_of_contents: false
keywords:
  - data_manager_for_agriculture_extensions
  - ag_food_platform
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>data_manager_for_agriculture_extensions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>data_manager_for_agriculture_extensions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.ag_food_platform.data_manager_for_agriculture_extensions" /></td></tr>
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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>DataManagerForAgricultureExtension properties.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>DataManagerForAgricultureExtension properties.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
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
    <td><a href="#parameter-dataManagerForAgricultureExtensionId"><code>dataManagerForAgricultureExtensionId</code></a></td>
    <td></td>
    <td>Get Data Manager For Agriculture extension.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td><a href="#parameter-farmBeatsExtensionIds"><code>farmBeatsExtensionIds</code></a>, <a href="#parameter-farmBeatsExtensionNames"><code>farmBeatsExtensionNames</code></a>, <a href="#parameter-extensionCategories"><code>extensionCategories</code></a>, <a href="#parameter-publisherIds"><code>publisherIds</code></a>, <a href="#parameter-$maxPageSize"><code>$maxPageSize</code></a></td>
    <td>Get list of Data Manager For Agriculture extension.</td>
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
<tr id="parameter-dataManagerForAgricultureExtensionId">
    <td><CopyableCode code="dataManagerForAgricultureExtensionId" /></td>
    <td><code>string</code></td>
    <td>dataManagerForAgricultureExtensionId to be queried.</td>
</tr>
<tr id="parameter-$maxPageSize">
    <td><CopyableCode code="$maxPageSize" /></td>
    <td><code>integer (int32)</code></td>
    <td>Maximum number of items needed (inclusive). Minimum = 10, Maximum = 1000, Default value = 50.</td>
</tr>
<tr id="parameter-extensionCategories">
    <td><CopyableCode code="extensionCategories" /></td>
    <td><code>array</code></td>
    <td>Extension categories.</td>
</tr>
<tr id="parameter-farmBeatsExtensionIds">
    <td><CopyableCode code="farmBeatsExtensionIds" /></td>
    <td><code>array</code></td>
    <td>DataManagerForAgricultureExtension ids.</td>
</tr>
<tr id="parameter-farmBeatsExtensionNames">
    <td><CopyableCode code="farmBeatsExtensionNames" /></td>
    <td><code>array</code></td>
    <td>DataManagerForAgriculture extension names.</td>
</tr>
<tr id="parameter-publisherIds">
    <td><CopyableCode code="publisherIds" /></td>
    <td><code>array</code></td>
    <td>Publisher ids.</td>
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

Get Data Manager For Agriculture extension.

```sql
SELECT
properties,
systemData
FROM azure_extras.ag_food_platform.data_manager_for_agriculture_extensions
WHERE dataManagerForAgricultureExtensionId = '{{ dataManagerForAgricultureExtensionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Get list of Data Manager For Agriculture extension.

```sql
SELECT
properties,
systemData
FROM azure_extras.ag_food_platform.data_manager_for_agriculture_extensions
WHERE farmBeatsExtensionIds = '{{ farmBeatsExtensionIds }}'
AND farmBeatsExtensionNames = '{{ farmBeatsExtensionNames }}'
AND extensionCategories = '{{ extensionCategories }}'
AND publisherIds = '{{ publisherIds }}'
AND $maxPageSize = '{{ $maxPageSize }}'
;
```
</TabItem>
</Tabs>
