--- 
title: workbooks
hide_title: false
hide_table_of_contents: false
keywords:
  - workbooks
  - application_insights
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

Creates, updates, deletes, gets or lists a <code>workbooks</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>workbooks</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.application_insights.workbooks" /></td></tr>
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

A workbook definition.

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
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>Resource etag</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Managed service identity (system assigned and/or user assigned identities)</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The kind of workbook. Only valid value is shared.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Metadata describing a workbook for an Azure resource.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group">

A list containing 0 or more workbook definitions.

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
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>Resource etag</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Managed service identity (system assigned and/or user assigned identities)</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The kind of workbook. Only valid value is shared.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Metadata describing a workbook for an Azure resource.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_subscription">

A list containing 0 or more workbook definitions.

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
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>Resource etag</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Managed service identity (system assigned and/or user assigned identities)</td>
</tr>
<tr>
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>The kind of workbook. Only valid value is shared.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Metadata describing a workbook for an Azure resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a></td>
    <td><a href="#parameter-canFetchContent"><code>canFetchContent</code></a></td>
    <td>Get a single workbook by its resourceName.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-category"><code>category</code></a></td>
    <td><a href="#parameter-tags"><code>tags</code></a>, <a href="#parameter-sourceId"><code>sourceId</code></a>, <a href="#parameter-canFetchContent"><code>canFetchContent</code></a></td>
    <td>Get all Workbooks defined within a specified resource group and category.</td>
</tr>
<tr>
    <td><a href="#list_by_subscription"><CopyableCode code="list_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-category"><code>category</code></a></td>
    <td><a href="#parameter-tags"><code>tags</code></a>, <a href="#parameter-canFetchContent"><code>canFetchContent</code></a></td>
    <td>Get all Workbooks defined within a specified subscription and category.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a></td>
    <td><a href="#parameter-sourceId"><code>sourceId</code></a></td>
    <td>Create a new workbook.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a></td>
    <td><a href="#parameter-sourceId"><code>sourceId</code></a></td>
    <td>Updates a workbook that has already been added.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a></td>
    <td></td>
    <td>Delete a workbook.</td>
</tr>
<tr>
    <td><a href="#revisions_list"><CopyableCode code="revisions_list" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a></td>
    <td></td>
    <td>Get the revisions for the workbook defined by its resourceName.</td>
</tr>
<tr>
    <td><a href="#revision_get"><CopyableCode code="revision_get" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-revisionId"><code>revisionId</code></a></td>
    <td></td>
    <td>Get a single workbook revision defined by its revisionId.</td>
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
<tr id="parameter-category">
    <td><CopyableCode code="category" /></td>
    <td><code>string</code></td>
    <td>Category of workbook to return.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-resourceName">
    <td><CopyableCode code="resourceName" /></td>
    <td><code>string</code></td>
    <td>The name of the workbook resource. The value must be an UUID.</td>
</tr>
<tr id="parameter-revisionId">
    <td><CopyableCode code="revisionId" /></td>
    <td><code>string</code></td>
    <td>The id of the workbook's revision.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-canFetchContent">
    <td><CopyableCode code="canFetchContent" /></td>
    <td><code>boolean</code></td>
    <td>Flag indicating whether or not to return the full content for each applicable workbook. If false, only return summary content for workbooks.</td>
</tr>
<tr id="parameter-sourceId">
    <td><CopyableCode code="sourceId" /></td>
    <td><code>string</code></td>
    <td>Azure Resource Id that will fetch all linked workbooks.</td>
</tr>
<tr id="parameter-tags">
    <td><CopyableCode code="tags" /></td>
    <td><code>array</code></td>
    <td>Tags presents on each workbook returned.</td>
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

Get a single workbook by its resourceName.

```sql
SELECT
etag,
identity,
kind,
properties,
systemData
FROM azure.application_insights.workbooks
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND resourceName = '{{ resourceName }}' -- required
AND canFetchContent = '{{ canFetchContent }}'
;
```
</TabItem>
<TabItem value="list_by_resource_group">

Get all Workbooks defined within a specified resource group and category.

```sql
SELECT
etag,
identity,
kind,
properties,
systemData
FROM azure.application_insights.workbooks
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND category = '{{ category }}' -- required
AND tags = '{{ tags }}'
AND sourceId = '{{ sourceId }}'
AND canFetchContent = '{{ canFetchContent }}'
;
```
</TabItem>
<TabItem value="list_by_subscription">

Get all Workbooks defined within a specified subscription and category.

```sql
SELECT
etag,
identity,
kind,
properties,
systemData
FROM azure.application_insights.workbooks
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND category = '{{ category }}' -- required
AND tags = '{{ tags }}'
AND canFetchContent = '{{ canFetchContent }}'
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

Create a new workbook.

```sql
INSERT INTO azure.application_insights.workbooks (
data__identity,
data__kind,
data__etag,
data__properties,
subscriptionId,
resourceGroupName,
resourceName,
sourceId
)
SELECT 
'{{ identity }}',
'{{ kind }}',
'{{ etag }}',
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ resourceName }}',
'{{ sourceId }}'
RETURNING
etag,
identity,
kind,
properties,
systemData
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: workbooks
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the workbooks resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the workbooks resource.
    - name: resourceName
      value: string
      description: Required parameter for the workbooks resource.
    - name: identity
      value: object
      description: |
        Managed service identity (system assigned and/or user assigned identities)
    - name: kind
      value: string
      description: |
        The kind of workbook. Only valid value is shared.
      valid_values: ['shared']
    - name: etag
      value: string
      description: |
        Resource etag
    - name: properties
      value: object
      description: |
        Metadata describing a workbook for an Azure resource.
    - name: sourceId
      value: string
      description: Azure Resource Id that will fetch all linked workbooks.
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

Updates a workbook that has already been added.

```sql
UPDATE azure.application_insights.workbooks
SET 
data__kind = '{{ kind }}',
data__tags = '{{ tags }}',
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND resourceName = '{{ resourceName }}' --required
AND sourceId = '{{ sourceId}}'
RETURNING
etag,
identity,
kind,
properties,
systemData;
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

Delete a workbook.

```sql
DELETE FROM azure.application_insights.workbooks
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND resourceName = '{{ resourceName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="revisions_list"
    values={[
        { label: 'revisions_list', value: 'revisions_list' },
        { label: 'revision_get', value: 'revision_get' }
    ]}
>
<TabItem value="revisions_list">

Get the revisions for the workbook defined by its resourceName.

```sql
EXEC azure.application_insights.workbooks.revisions_list 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@resourceName='{{ resourceName }}' --required
;
```
</TabItem>
<TabItem value="revision_get">

Get a single workbook revision defined by its revisionId.

```sql
EXEC azure.application_insights.workbooks.revision_get 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@resourceName='{{ resourceName }}' --required, 
@revisionId='{{ revisionId }}' --required
;
```
</TabItem>
</Tabs>
