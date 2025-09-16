--- 
title: data_manager_for_agriculture_resources
hide_title: false
hide_table_of_contents: false
keywords:
  - data_manager_for_agriculture_resources
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

Creates, updates, deletes, gets or lists a <code>data_manager_for_agriculture_resources</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>data_manager_for_agriculture_resources</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.ag_food_platform.data_manager_for_agriculture_resources" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Identity for the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Data Manager For Agriculture ARM Resource properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group">

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
    <td>Identity for the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Data Manager For Agriculture ARM Resource properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_subscription">

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
    <td>Identity for the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Data Manager For Agriculture ARM Resource properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataManagerForAgricultureResourceName"><code>dataManagerForAgricultureResourceName</code></a></td>
    <td></td>
    <td>Get DataManagerForAgriculture resource.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$maxPageSize"><code>$maxPageSize</code></a>, <a href="#parameter-$skipToken"><code>$skipToken</code></a></td>
    <td>Lists the DataManagerForAgriculture instances for a resource group.</td>
</tr>
<tr>
    <td><a href="#list_by_subscription"><CopyableCode code="list_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$maxPageSize"><code>$maxPageSize</code></a>, <a href="#parameter-$skipToken"><code>$skipToken</code></a></td>
    <td>Lists the DataManagerForAgriculture instances for a subscription.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataManagerForAgricultureResourceName"><code>dataManagerForAgricultureResourceName</code></a></td>
    <td></td>
    <td>Create or update Data Manager For Agriculture resource.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataManagerForAgricultureResourceName"><code>dataManagerForAgricultureResourceName</code></a></td>
    <td></td>
    <td>Update a Data Manager For Agriculture resource.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataManagerForAgricultureResourceName"><code>dataManagerForAgricultureResourceName</code></a></td>
    <td></td>
    <td>Delete a Data Manager For Agriculture resource.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
    ]}
>
<TabItem value="get">

Get DataManagerForAgriculture resource.

```sql
SELECT
identity,
location,
properties,
tags
FROM azure_extras.ag_food_platform.data_manager_for_agriculture_resources
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND dataManagerForAgricultureResourceName = '{{ dataManagerForAgricultureResourceName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_resource_group">

Lists the DataManagerForAgriculture instances for a resource group.

```sql
SELECT
identity,
location,
properties,
tags
FROM azure_extras.ag_food_platform.data_manager_for_agriculture_resources
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND $maxPageSize = '{{ $maxPageSize }}'
AND $skipToken = '{{ $skipToken }}'
;
```
</TabItem>
<TabItem value="list_by_subscription">

Lists the DataManagerForAgriculture instances for a subscription.

```sql
SELECT
identity,
location,
properties,
tags
FROM azure_extras.ag_food_platform.data_manager_for_agriculture_resources
WHERE subscriptionId = '{{ subscriptionId }}' -- required
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

Create or update Data Manager For Agriculture resource.

```sql
INSERT INTO azure_extras.ag_food_platform.data_manager_for_agriculture_resources (
data__tags,
data__location,
data__identity,
data__properties,
subscriptionId,
resourceGroupName,
dataManagerForAgricultureResourceName
)
SELECT 
'{{ tags }}',
'{{ location }}',
'{{ identity }}',
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ dataManagerForAgricultureResourceName }}'
RETURNING
identity,
location,
properties,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: data_manager_for_agriculture_resources
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the data_manager_for_agriculture_resources resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the data_manager_for_agriculture_resources resource.
    - name: dataManagerForAgricultureResourceName
      value: string
      description: Required parameter for the data_manager_for_agriculture_resources resource.
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
        Identity for the resource.
    - name: properties
      value: object
      description: |
        Data Manager For Agriculture ARM Resource properties.
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

Update a Data Manager For Agriculture resource.

```sql
UPDATE azure_extras.ag_food_platform.data_manager_for_agriculture_resources
SET 
data__location = '{{ location }}',
data__identity = '{{ identity }}',
data__properties = '{{ properties }}',
data__tags = '{{ tags }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND dataManagerForAgricultureResourceName = '{{ dataManagerForAgricultureResourceName }}' --required
RETURNING
identity,
location,
properties,
tags;
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

Delete a Data Manager For Agriculture resource.

```sql
DELETE FROM azure_extras.ag_food_platform.data_manager_for_agriculture_resources
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND dataManagerForAgricultureResourceName = '{{ dataManagerForAgricultureResourceName }}' --required
;
```
</TabItem>
</Tabs>
