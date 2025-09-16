--- 
title: queries
hide_title: false
hide_table_of_contents: false
keywords:
  - queries
  - log_analytics
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

Creates, updates, deletes, gets or lists a <code>queries</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>queries</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.log_analytics.queries" /></td></tr>
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

A single query contained within the Log Analytics QueryPack.

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
    <td>Azure resource Id</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Azure resource name</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties that define an Log Analytics QueryPack-Query resource.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Read only system data</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Azure resource type</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

A list containing 0 or more queries contained within the Log Analytics QueryPack.

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
    <td>Azure resource Id</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Azure resource name</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties that define an Log Analytics QueryPack-Query resource.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Read only system data</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Azure resource type</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-queryPackName"><code>queryPackName</code></a>, <a href="#parameter-id"><code>id</code></a></td>
    <td></td>
    <td>Gets a specific Log Analytics Query defined within a Log Analytics QueryPack.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-queryPackName"><code>queryPackName</code></a></td>
    <td><a href="#parameter-$top"><code>$top</code></a>, <a href="#parameter-includeBody"><code>includeBody</code></a>, <a href="#parameter-$skipToken"><code>$skipToken</code></a></td>
    <td>Gets a list of Queries defined within a Log Analytics QueryPack.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-queryPackName"><code>queryPackName</code></a>, <a href="#parameter-id"><code>id</code></a></td>
    <td></td>
    <td>Adds or Updates a specific Query within a Log Analytics QueryPack.</td>
</tr>
<tr>
    <td><a href="#put"><CopyableCode code="put" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-queryPackName"><code>queryPackName</code></a>, <a href="#parameter-id"><code>id</code></a></td>
    <td></td>
    <td>Adds or Updates a specific Query within a Log Analytics QueryPack.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-queryPackName"><code>queryPackName</code></a>, <a href="#parameter-id"><code>id</code></a></td>
    <td></td>
    <td>Deletes a specific Query defined within an Log Analytics QueryPack.</td>
</tr>
<tr>
    <td><a href="#search"><CopyableCode code="search" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-queryPackName"><code>queryPackName</code></a></td>
    <td><a href="#parameter-$top"><code>$top</code></a>, <a href="#parameter-includeBody"><code>includeBody</code></a>, <a href="#parameter-$skipToken"><code>$skipToken</code></a></td>
    <td>Search a list of Queries defined within a Log Analytics QueryPack according to given search properties.</td>
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
<tr id="parameter-id">
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>The id of a specific query defined in the Log Analytics QueryPack</td>
</tr>
<tr id="parameter-queryPackName">
    <td><CopyableCode code="queryPackName" /></td>
    <td><code>string</code></td>
    <td>The name of the Log Analytics QueryPack resource.</td>
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
<tr id="parameter-$skipToken">
    <td><CopyableCode code="$skipToken" /></td>
    <td><code>string</code></td>
    <td>Base64 encoded token used to fetch the next page of items. Default is null.</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int64)</code></td>
    <td>Maximum items returned in page.</td>
</tr>
<tr id="parameter-includeBody">
    <td><CopyableCode code="includeBody" /></td>
    <td><code>boolean</code></td>
    <td>Flag indicating whether or not to return the body of each applicable query. If false, only return the query information.</td>
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

Gets a specific Log Analytics Query defined within a Log Analytics QueryPack.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.log_analytics.queries
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND queryPackName = '{{ queryPackName }}' -- required
AND id = '{{ id }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets a list of Queries defined within a Log Analytics QueryPack.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.log_analytics.queries
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND queryPackName = '{{ queryPackName }}' -- required
AND $top = '{{ $top }}'
AND includeBody = '{{ includeBody }}'
AND $skipToken = '{{ $skipToken }}'
;
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

Adds or Updates a specific Query within a Log Analytics QueryPack.

```sql
UPDATE azure.log_analytics.queries
SET 
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND queryPackName = '{{ queryPackName }}' --required
AND id = '{{ id }}' --required
RETURNING
id,
name,
properties,
systemData,
type;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="put"
    values={[
        { label: 'put', value: 'put' }
    ]}
>
<TabItem value="put">

Adds or Updates a specific Query within a Log Analytics QueryPack.

```sql
REPLACE azure.log_analytics.queries
SET 
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND queryPackName = '{{ queryPackName }}' --required
AND id = '{{ id }}' --required
RETURNING
id,
name,
properties,
systemData,
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

Deletes a specific Query defined within an Log Analytics QueryPack.

```sql
DELETE FROM azure.log_analytics.queries
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND queryPackName = '{{ queryPackName }}' --required
AND id = '{{ id }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="search"
    values={[
        { label: 'search', value: 'search' }
    ]}
>
<TabItem value="search">

Search a list of Queries defined within a Log Analytics QueryPack according to given search properties.

```sql
EXEC azure.log_analytics.queries.search 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@queryPackName='{{ queryPackName }}' --required, 
@$top='{{ $top }}', 
@includeBody={{ includeBody }}, 
@$skipToken='{{ $skipToken }}' 
@@json=
'{
"related": "{{ related }}", 
"tags": "{{ tags }}"
}'
;
```
</TabItem>
</Tabs>
