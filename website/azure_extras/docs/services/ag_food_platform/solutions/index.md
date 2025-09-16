--- 
title: solutions
hide_title: false
hide_table_of_contents: false
keywords:
  - solutions
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

Creates, updates, deletes, gets or lists a <code>solutions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>solutions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.ag_food_platform.solutions" /></td></tr>
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
    <td><CopyableCode code="eTag" /></td>
    <td><code>string</code></td>
    <td>The ETag value to implement optimistic concurrency.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Solution resource properties.</td>
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
    <td><CopyableCode code="eTag" /></td>
    <td><code>string</code></td>
    <td>The ETag value to implement optimistic concurrency.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Solution resource properties.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataManagerForAgricultureResourceName"><code>dataManagerForAgricultureResourceName</code></a>, <a href="#parameter-solutionId"><code>solutionId</code></a></td>
    <td></td>
    <td>Get installed Solution details by Solution id.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataManagerForAgricultureResourceName"><code>dataManagerForAgricultureResourceName</code></a></td>
    <td><a href="#parameter-solutionIds"><code>solutionIds</code></a>, <a href="#parameter-ids"><code>ids</code></a>, <a href="#parameter-names"><code>names</code></a>, <a href="#parameter-propertyFilters"><code>propertyFilters</code></a>, <a href="#parameter-statuses"><code>statuses</code></a>, <a href="#parameter-minCreatedDateTime"><code>minCreatedDateTime</code></a>, <a href="#parameter-maxCreatedDateTime"><code>maxCreatedDateTime</code></a>, <a href="#parameter-minLastModifiedDateTime"><code>minLastModifiedDateTime</code></a>, <a href="#parameter-maxLastModifiedDateTime"><code>maxLastModifiedDateTime</code></a>, <a href="#parameter-$maxPageSize"><code>$maxPageSize</code></a>, <a href="#parameter-$skipToken"><code>$skipToken</code></a></td>
    <td>Get installed Solutions details.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataManagerForAgricultureResourceName"><code>dataManagerForAgricultureResourceName</code></a>, <a href="#parameter-solutionId"><code>solutionId</code></a></td>
    <td></td>
    <td>Install Or Update Solution.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataManagerForAgricultureResourceName"><code>dataManagerForAgricultureResourceName</code></a>, <a href="#parameter-solutionId"><code>solutionId</code></a></td>
    <td></td>
    <td>Uninstall Solution.</td>
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
<tr id="parameter-solutionId">
    <td><CopyableCode code="solutionId" /></td>
    <td><code>string</code></td>
    <td>SolutionId for Data Manager For Agriculture Resource.</td>
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
<tr id="parameter-ids">
    <td><CopyableCode code="ids" /></td>
    <td><code>array</code></td>
    <td>Ids of the resource.</td>
</tr>
<tr id="parameter-maxCreatedDateTime">
    <td><CopyableCode code="maxCreatedDateTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Maximum creation date of resource (inclusive).</td>
</tr>
<tr id="parameter-maxLastModifiedDateTime">
    <td><CopyableCode code="maxLastModifiedDateTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Maximum last modified date of resource (inclusive).</td>
</tr>
<tr id="parameter-minCreatedDateTime">
    <td><CopyableCode code="minCreatedDateTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Minimum creation date of resource (inclusive).</td>
</tr>
<tr id="parameter-minLastModifiedDateTime">
    <td><CopyableCode code="minLastModifiedDateTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Minimum last modified date of resource (inclusive).</td>
</tr>
<tr id="parameter-names">
    <td><CopyableCode code="names" /></td>
    <td><code>array</code></td>
    <td>Names of the resource.</td>
</tr>
<tr id="parameter-propertyFilters">
    <td><CopyableCode code="propertyFilters" /></td>
    <td><code>array</code></td>
    <td>Filters on key-value pairs within the Properties object. eg. "&#123;testKey&#125; eq &#123;testValue&#125;".</td>
</tr>
<tr id="parameter-solutionIds">
    <td><CopyableCode code="solutionIds" /></td>
    <td><code>array</code></td>
    <td>Installed Solution ids.</td>
</tr>
<tr id="parameter-statuses">
    <td><CopyableCode code="statuses" /></td>
    <td><code>array</code></td>
    <td>Statuses of the resource.</td>
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

Get installed Solution details by Solution id.

```sql
SELECT
eTag,
properties,
systemData
FROM azure_extras.ag_food_platform.solutions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND dataManagerForAgricultureResourceName = '{{ dataManagerForAgricultureResourceName }}' -- required
AND solutionId = '{{ solutionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Get installed Solutions details.

```sql
SELECT
eTag,
properties,
systemData
FROM azure_extras.ag_food_platform.solutions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND dataManagerForAgricultureResourceName = '{{ dataManagerForAgricultureResourceName }}' -- required
AND solutionIds = '{{ solutionIds }}'
AND ids = '{{ ids }}'
AND names = '{{ names }}'
AND propertyFilters = '{{ propertyFilters }}'
AND statuses = '{{ statuses }}'
AND minCreatedDateTime = '{{ minCreatedDateTime }}'
AND maxCreatedDateTime = '{{ maxCreatedDateTime }}'
AND minLastModifiedDateTime = '{{ minLastModifiedDateTime }}'
AND maxLastModifiedDateTime = '{{ maxLastModifiedDateTime }}'
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

Install Or Update Solution.

```sql
INSERT INTO azure_extras.ag_food_platform.solutions (
data__properties,
subscriptionId,
resourceGroupName,
dataManagerForAgricultureResourceName,
solutionId
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ dataManagerForAgricultureResourceName }}',
'{{ solutionId }}'
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
- name: solutions
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the solutions resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the solutions resource.
    - name: dataManagerForAgricultureResourceName
      value: string
      description: Required parameter for the solutions resource.
    - name: solutionId
      value: string
      description: Required parameter for the solutions resource.
    - name: properties
      value: object
      description: |
        Solution resource properties.
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

Uninstall Solution.

```sql
DELETE FROM azure_extras.ag_food_platform.solutions
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND dataManagerForAgricultureResourceName = '{{ dataManagerForAgricultureResourceName }}' --required
AND solutionId = '{{ solutionId }}' --required
;
```
</TabItem>
</Tabs>
