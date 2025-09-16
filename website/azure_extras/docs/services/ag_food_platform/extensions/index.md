--- 
title: extensions
hide_title: false
hide_table_of_contents: false
keywords:
  - extensions
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

Creates, updates, deletes, gets or lists an <code>extensions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>extensions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.ag_food_platform.extensions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_data_manager_for_agriculture', value: 'list_by_data_manager_for_agriculture' }
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
    <td><CopyableCode code="eTag" /></td>
    <td><code>string</code></td>
    <td>The ETag value to implement optimistic concurrency.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Extension resource properties.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_data_manager_for_agriculture">

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
    <td><CopyableCode code="eTag" /></td>
    <td><code>string</code></td>
    <td>The ETag value to implement optimistic concurrency.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Extension resource properties.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataManagerForAgricultureResourceName"><code>dataManagerForAgricultureResourceName</code></a>, <a href="#parameter-extensionId"><code>extensionId</code></a></td>
    <td></td>
    <td>Get installed extension details by extension id.</td>
</tr>
<tr>
    <td><a href="#list_by_data_manager_for_agriculture"><CopyableCode code="list_by_data_manager_for_agriculture" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataManagerForAgricultureResourceName"><code>dataManagerForAgricultureResourceName</code></a></td>
    <td><a href="#parameter-extensionIds"><code>extensionIds</code></a>, <a href="#parameter-extensionCategories"><code>extensionCategories</code></a>, <a href="#parameter-$maxPageSize"><code>$maxPageSize</code></a>, <a href="#parameter-$skipToken"><code>$skipToken</code></a></td>
    <td>Get installed extensions details.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataManagerForAgricultureResourceName"><code>dataManagerForAgricultureResourceName</code></a>, <a href="#parameter-extensionId"><code>extensionId</code></a></td>
    <td></td>
    <td>Install or Update extension. Additional Api Properties are merged patch and if the extension is updated to a new version then the obsolete entries will be auto deleted from Additional Api Properties.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataManagerForAgricultureResourceName"><code>dataManagerForAgricultureResourceName</code></a>, <a href="#parameter-extensionId"><code>extensionId</code></a></td>
    <td></td>
    <td>Uninstall extension.</td>
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
<tr id="parameter-dataManagerForAgricultureResourceName">
    <td><CopyableCode code="dataManagerForAgricultureResourceName" /></td>
    <td><code>string</code></td>
    <td>DataManagerForAgriculture resource name.</td>
</tr>
<tr id="parameter-extensionId">
    <td><CopyableCode code="extensionId" /></td>
    <td><code>string</code></td>
    <td>Id of extension resource.</td>
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
<tr id="parameter-$maxPageSize">
    <td><CopyableCode code="$maxPageSize" /></td>
    <td><code>integer (int32)</code></td>
    <td>Maximum number of items needed (inclusive). Minimum = 10, Maximum = 1000, Default value = 50.</td>
</tr>
<tr id="parameter-$skipToken">
    <td><CopyableCode code="$skipToken" /></td>
    <td><code>string</code></td>
    <td>Skip token for getting next set of results.</td>
</tr>
<tr id="parameter-extensionCategories">
    <td><CopyableCode code="extensionCategories" /></td>
    <td><code>array</code></td>
    <td>Installed extension categories.</td>
</tr>
<tr id="parameter-extensionIds">
    <td><CopyableCode code="extensionIds" /></td>
    <td><code>array</code></td>
    <td>Installed extension ids.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_data_manager_for_agriculture', value: 'list_by_data_manager_for_agriculture' }
    ]}
>
<TabItem value="get">

Get installed extension details by extension id.

```sql
SELECT
eTag,
properties,
systemData
FROM azure_extras.ag_food_platform.extensions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND dataManagerForAgricultureResourceName = '{{ dataManagerForAgricultureResourceName }}' -- required
AND extensionId = '{{ extensionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_data_manager_for_agriculture">

Get installed extensions details.

```sql
SELECT
eTag,
properties,
systemData
FROM azure_extras.ag_food_platform.extensions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND dataManagerForAgricultureResourceName = '{{ dataManagerForAgricultureResourceName }}' -- required
AND extensionIds = '{{ extensionIds }}'
AND extensionCategories = '{{ extensionCategories }}'
AND $maxPageSize = '{{ $maxPageSize }}'
AND $skipToken = '{{ $skipToken }}'
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

Install or Update extension. Additional Api Properties are merged patch and if the extension is updated to a new version then the obsolete entries will be auto deleted from Additional Api Properties.

```sql
INSERT INTO azure_extras.ag_food_platform.extensions (
data__extensionVersion,
data__additionalApiProperties,
subscriptionId,
resourceGroupName,
dataManagerForAgricultureResourceName,
extensionId
)
SELECT 
'{{ extensionVersion }}',
'{{ additionalApiProperties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ dataManagerForAgricultureResourceName }}',
'{{ extensionId }}'
RETURNING
eTag,
properties,
systemData
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: extensions
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the extensions resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the extensions resource.
    - name: dataManagerForAgricultureResourceName
      value: string
      description: Required parameter for the extensions resource.
    - name: extensionId
      value: string
      description: Required parameter for the extensions resource.
    - name: extensionVersion
      value: string
      description: |
        Extension Version.
      default: null
    - name: additionalApiProperties
      value: object
      description: |
        Additional Api Properties.
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

Uninstall extension.

```sql
DELETE FROM azure_extras.ag_food_platform.extensions
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND dataManagerForAgricultureResourceName = '{{ dataManagerForAgricultureResourceName }}' --required
AND extensionId = '{{ extensionId }}' --required
;
```
</TabItem>
</Tabs>
