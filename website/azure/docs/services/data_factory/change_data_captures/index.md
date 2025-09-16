--- 
title: change_data_captures
hide_title: false
hide_table_of_contents: false
keywords:
  - change_data_captures
  - data_factory
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

Creates, updates, deletes, gets or lists a <code>change_data_captures</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>change_data_captures</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_factory.change_data_captures" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_factory', value: 'list_by_factory' }
    ]}
>
<TabItem value="get">

OK.

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
    <td>The resource identifier.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>Etag identifies change in the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the change data capture.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_factory">

OK.

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
    <td>The resource identifier.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>Etag identifies change in the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the change data capture.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The resource type.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a>, <a href="#parameter-changeDataCaptureName"><code>changeDataCaptureName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-If-None-Match"><code>If-None-Match</code></a></td>
    <td>Gets a change data capture.</td>
</tr>
<tr>
    <td><a href="#list_by_factory"><CopyableCode code="list_by_factory" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Lists all resources of type change data capture.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a>, <a href="#parameter-changeDataCaptureName"><code>changeDataCaptureName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-If-Match"><code>If-Match</code></a></td>
    <td>Creates or updates a change data capture resource.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a>, <a href="#parameter-changeDataCaptureName"><code>changeDataCaptureName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Deletes a change data capture.</td>
</tr>
<tr>
    <td><a href="#start"><CopyableCode code="start" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a>, <a href="#parameter-changeDataCaptureName"><code>changeDataCaptureName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Starts a change data capture.</td>
</tr>
<tr>
    <td><a href="#stop"><CopyableCode code="stop" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a>, <a href="#parameter-changeDataCaptureName"><code>changeDataCaptureName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Stops a change data capture.</td>
</tr>
<tr>
    <td><a href="#status"><CopyableCode code="status" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a>, <a href="#parameter-changeDataCaptureName"><code>changeDataCaptureName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Gets the current status for the change data capture resource.</td>
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
<tr id="parameter-changeDataCaptureName">
    <td><CopyableCode code="changeDataCaptureName" /></td>
    <td><code>string</code></td>
    <td>The change data capture name.</td>
</tr>
<tr id="parameter-factoryName">
    <td><CopyableCode code="factoryName" /></td>
    <td><code>string</code></td>
    <td>The factory name.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The resource group name.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription identifier.</td>
</tr>
<tr id="parameter-If-Match">
    <td><CopyableCode code="If-Match" /></td>
    <td><code>string</code></td>
    <td>ETag of the change data capture entity. Should only be specified for update, for which it should match existing entity or can be * for unconditional update.</td>
</tr>
<tr id="parameter-If-None-Match">
    <td><CopyableCode code="If-None-Match" /></td>
    <td><code>string</code></td>
    <td>ETag of the change data capture entity. Should only be specified for get. If the ETag matches the existing entity tag, or if * was provided, then no content will be returned.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>The API version.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_factory', value: 'list_by_factory' }
    ]}
>
<TabItem value="get">

Gets a change data capture.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.data_factory.change_data_captures
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND factoryName = '{{ factoryName }}' -- required
AND changeDataCaptureName = '{{ changeDataCaptureName }}' -- required
AND api-version = '{{ api-version }}'
AND If-None-Match = '{{ If-None-Match }}'
;
```
</TabItem>
<TabItem value="list_by_factory">

Lists all resources of type change data capture.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.data_factory.change_data_captures
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND factoryName = '{{ factoryName }}' -- required
AND api-version = '{{ api-version }}'
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

Creates or updates a change data capture resource.

```sql
INSERT INTO azure.data_factory.change_data_captures (
data__properties,
subscriptionId,
resourceGroupName,
factoryName,
changeDataCaptureName,
api-version,
If-Match
)
SELECT 
'{{ properties }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ factoryName }}',
'{{ changeDataCaptureName }}',
'{{ api-version }}',
'{{ If-Match }}'
RETURNING
id,
name,
etag,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: change_data_captures
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the change_data_captures resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the change_data_captures resource.
    - name: factoryName
      value: string
      description: Required parameter for the change_data_captures resource.
    - name: changeDataCaptureName
      value: string
      description: Required parameter for the change_data_captures resource.
    - name: properties
      value: object
      description: |
        Properties of the change data capture.
    - name: api-version
      value: string
      description: The API version.
    - name: If-Match
      value: string
      description: ETag of the change data capture entity. Should only be specified for update, for which it should match existing entity or can be * for unconditional update.
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

Deletes a change data capture.

```sql
DELETE FROM azure.data_factory.change_data_captures
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND factoryName = '{{ factoryName }}' --required
AND changeDataCaptureName = '{{ changeDataCaptureName }}' --required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="start"
    values={[
        { label: 'start', value: 'start' },
        { label: 'stop', value: 'stop' },
        { label: 'status', value: 'status' }
    ]}
>
<TabItem value="start">

Starts a change data capture.

```sql
EXEC azure.data_factory.change_data_captures.start 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@factoryName='{{ factoryName }}' --required, 
@changeDataCaptureName='{{ changeDataCaptureName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="stop">

Stops a change data capture.

```sql
EXEC azure.data_factory.change_data_captures.stop 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@factoryName='{{ factoryName }}' --required, 
@changeDataCaptureName='{{ changeDataCaptureName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="status">

Gets the current status for the change data capture resource.

```sql
EXEC azure.data_factory.change_data_captures.status 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@factoryName='{{ factoryName }}' --required, 
@changeDataCaptureName='{{ changeDataCaptureName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
</Tabs>
