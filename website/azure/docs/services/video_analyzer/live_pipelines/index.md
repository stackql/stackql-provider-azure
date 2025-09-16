--- 
title: live_pipelines
hide_title: false
hide_table_of_contents: false
keywords:
  - live_pipelines
  - video_analyzer
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

Creates, updates, deletes, gets or lists a <code>live_pipelines</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>live_pipelines</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.video_analyzer.live_pipelines" /></td></tr>
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

The live pipeline was retrieved successfully.

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
    <td>The resource properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

List of live pipelines that were successfully retrieved.

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
    <td>The resource properties.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-livePipelineName"><code>livePipelineName</code></a></td>
    <td></td>
    <td>Retrieves a specific live pipeline by name. If a live pipeline with that name has been previously created, the call will return the JSON representation of that instance.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$top"><code>$top</code></a></td>
    <td>Retrieves a list of live pipelines that have been created, along with their JSON representations.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-livePipelineName"><code>livePipelineName</code></a></td>
    <td></td>
    <td>Creates a new live pipeline or updates an existing one, with the given name.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-livePipelineName"><code>livePipelineName</code></a></td>
    <td></td>
    <td>Updates an existing live pipeline with the given name. Properties that can be updated include: description, bitrateKbps, and parameter definitions. Only the description can be updated while the live pipeline is active.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-livePipelineName"><code>livePipelineName</code></a></td>
    <td></td>
    <td>Deletes a live pipeline with the given name.</td>
</tr>
<tr>
    <td><a href="#activate"><CopyableCode code="activate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-livePipelineName"><code>livePipelineName</code></a></td>
    <td></td>
    <td>Activates a live pipeline with the given name.</td>
</tr>
<tr>
    <td><a href="#deactivate"><CopyableCode code="deactivate" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-livePipelineName"><code>livePipelineName</code></a></td>
    <td></td>
    <td>Deactivates a live pipeline with the given name.</td>
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
<tr id="parameter-accountName">
    <td><CopyableCode code="accountName" /></td>
    <td><code>string</code></td>
    <td>The Azure Video Analyzer account name.</td>
</tr>
<tr id="parameter-livePipelineName">
    <td><CopyableCode code="livePipelineName" /></td>
    <td><code>string</code></td>
    <td>Live pipeline unique identifier.</td>
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
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>Restricts the set of items returned.</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int32)</code></td>
    <td>Specifies a non-negative integer n that limits the number of items returned from a collection. The service returns the number of available items up to but not greater than the specified value n.</td>
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

Retrieves a specific live pipeline by name. If a live pipeline with that name has been previously created, the call will return the JSON representation of that instance.

```sql
SELECT
properties
FROM azure.video_analyzer.live_pipelines
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND livePipelineName = '{{ livePipelineName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Retrieves a list of live pipelines that have been created, along with their JSON representations.

```sql
SELECT
properties
FROM azure.video_analyzer.live_pipelines
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND $filter = '{{ $filter }}'
AND $top = '{{ $top }}'
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

Creates a new live pipeline or updates an existing one, with the given name.

```sql
INSERT INTO azure.video_analyzer.live_pipelines (
data__properties,
subscriptionId,
resourceGroupName,
accountName,
livePipelineName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ accountName }}',
'{{ livePipelineName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: live_pipelines
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the live_pipelines resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the live_pipelines resource.
    - name: accountName
      value: string
      description: Required parameter for the live_pipelines resource.
    - name: livePipelineName
      value: string
      description: Required parameter for the live_pipelines resource.
    - name: properties
      value: object
      description: |
        The resource properties.
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

Updates an existing live pipeline with the given name. Properties that can be updated include: description, bitrateKbps, and parameter definitions. Only the description can be updated while the live pipeline is active.

```sql
UPDATE azure.video_analyzer.live_pipelines
SET 
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND accountName = '{{ accountName }}' --required
AND livePipelineName = '{{ livePipelineName }}' --required
RETURNING
properties;
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

Deletes a live pipeline with the given name.

```sql
DELETE FROM azure.video_analyzer.live_pipelines
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND accountName = '{{ accountName }}' --required
AND livePipelineName = '{{ livePipelineName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="activate"
    values={[
        { label: 'activate', value: 'activate' },
        { label: 'deactivate', value: 'deactivate' }
    ]}
>
<TabItem value="activate">

Activates a live pipeline with the given name.

```sql
EXEC azure.video_analyzer.live_pipelines.activate 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@livePipelineName='{{ livePipelineName }}' --required
;
```
</TabItem>
<TabItem value="deactivate">

Deactivates a live pipeline with the given name.

```sql
EXEC azure.video_analyzer.live_pipelines.deactivate 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@livePipelineName='{{ livePipelineName }}' --required
;
```
</TabItem>
</Tabs>
