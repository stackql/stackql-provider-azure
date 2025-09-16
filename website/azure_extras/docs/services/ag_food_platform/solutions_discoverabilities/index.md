--- 
title: solutions_discoverabilities
hide_title: false
hide_table_of_contents: false
keywords:
  - solutions_discoverabilities
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

Creates, updates, deletes, gets or lists a <code>solutions_discoverabilities</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>solutions_discoverabilities</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.ag_food_platform.solutions_discoverabilities" /></td></tr>
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
    <td>DataManagerForAgricultureSolution properties.</td>
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
    <td>DataManagerForAgricultureSolution properties.</td>
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
    <td><a href="#parameter-dataManagerForAgricultureSolutionId"><code>dataManagerForAgricultureSolutionId</code></a></td>
    <td></td>
    <td>Get Data Manager For Agriculture solution by id.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td></td>
    <td><a href="#parameter-farmBeatsSolutionIds"><code>farmBeatsSolutionIds</code></a>, <a href="#parameter-farmBeatsSolutionNames"><code>farmBeatsSolutionNames</code></a>, <a href="#parameter-$maxPageSize"><code>$maxPageSize</code></a></td>
    <td>Get list of Data Manager For Agriculture solutions.</td>
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
<tr id="parameter-dataManagerForAgricultureSolutionId">
    <td><CopyableCode code="dataManagerForAgricultureSolutionId" /></td>
    <td><code>string</code></td>
    <td>dataManagerForAgricultureSolutionId to be queried.</td>
</tr>
<tr id="parameter-$maxPageSize">
    <td><CopyableCode code="$maxPageSize" /></td>
    <td><code>integer (int32)</code></td>
    <td>Maximum number of items needed (inclusive). Minimum = 10, Maximum = 1000, Default value = 50.</td>
</tr>
<tr id="parameter-farmBeatsSolutionIds">
    <td><CopyableCode code="farmBeatsSolutionIds" /></td>
    <td><code>array</code></td>
    <td>Ids of Data Manager For Agriculture Solutions which the customer requests to fetch.</td>
</tr>
<tr id="parameter-farmBeatsSolutionNames">
    <td><CopyableCode code="farmBeatsSolutionNames" /></td>
    <td><code>array</code></td>
    <td>Names of Data Manager For Agriculture Solutions which the customer requests to fetch.</td>
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

Get Data Manager For Agriculture solution by id.

```sql
SELECT
properties,
systemData
FROM azure_extras.ag_food_platform.solutions_discoverabilities
WHERE dataManagerForAgricultureSolutionId = '{{ dataManagerForAgricultureSolutionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Get list of Data Manager For Agriculture solutions.

```sql
SELECT
properties,
systemData
FROM azure_extras.ag_food_platform.solutions_discoverabilities
WHERE farmBeatsSolutionIds = '{{ farmBeatsSolutionIds }}'
AND farmBeatsSolutionNames = '{{ farmBeatsSolutionNames }}'
AND $maxPageSize = '{{ $maxPageSize }}'
;
```
</TabItem>
</Tabs>
