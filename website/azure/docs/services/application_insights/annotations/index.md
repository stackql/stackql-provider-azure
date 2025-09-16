--- 
title: annotations
hide_title: false
hide_table_of_contents: false
keywords:
  - annotations
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

Creates, updates, deletes, gets or lists an <code>annotations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>annotations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.application_insights.annotations" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

successful operation

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
    <td><CopyableCode code="AnnotationName" /></td>
    <td><code>string</code></td>
    <td>Name of annotation</td>
</tr>
<tr>
    <td><CopyableCode code="Category" /></td>
    <td><code>string</code></td>
    <td>Category of annotation, free form</td>
</tr>
<tr>
    <td><CopyableCode code="EventTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Time when event occurred</td>
</tr>
<tr>
    <td><CopyableCode code="Id" /></td>
    <td><code>string</code></td>
    <td>Unique Id for annotation</td>
</tr>
<tr>
    <td><CopyableCode code="Properties" /></td>
    <td><code>string</code></td>
    <td>Serialized JSON object for detailed properties</td>
</tr>
<tr>
    <td><CopyableCode code="RelatedAnnotation" /></td>
    <td><code>string</code></td>
    <td>Related parent annotation if any (default: null)</td>
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
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-start"><code>start</code></a>, <a href="#parameter-end"><code>end</code></a></td>
    <td></td>
    <td>Gets the list of annotations for a component for given time range</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a></td>
    <td></td>
    <td>Create an Annotation of an Application Insights component.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-annotationId"><code>annotationId</code></a></td>
    <td></td>
    <td>Delete an Annotation of an Application Insights component.</td>
</tr>
<tr>
    <td><a href="#get"><CopyableCode code="get" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-annotationId"><code>annotationId</code></a></td>
    <td></td>
    <td>Get the annotation for given id.</td>
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
<tr id="parameter-annotationId">
    <td><CopyableCode code="annotationId" /></td>
    <td><code>string</code></td>
    <td>The unique annotation ID. This is unique within a Application Insights component.</td>
</tr>
<tr id="parameter-end">
    <td><CopyableCode code="end" /></td>
    <td><code>string</code></td>
    <td>The end time to query for annotations.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-resourceName">
    <td><CopyableCode code="resourceName" /></td>
    <td><code>string</code></td>
    <td>The name of the Application Insights component resource.</td>
</tr>
<tr id="parameter-start">
    <td><CopyableCode code="start" /></td>
    <td><code>string</code></td>
    <td>The start time to query from for annotations, cannot be older than 90 days from current date.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="list"
    values={[
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="list">

Gets the list of annotations for a component for given time range

```sql
SELECT
AnnotationName,
Category,
EventTime,
Id,
Properties,
RelatedAnnotation
FROM azure.application_insights.annotations
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceName = '{{ resourceName }}' -- required
AND start = '{{ start }}' -- required
AND end = '{{ end }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

Create an Annotation of an Application Insights component.

```sql
INSERT INTO azure.application_insights.annotations (
data__AnnotationName,
data__Category,
data__EventTime,
data__Id,
data__Properties,
data__RelatedAnnotation,
resourceGroupName,
subscriptionId,
resourceName
)
SELECT 
'{{ AnnotationName }}',
'{{ Category }}',
'{{ EventTime }}',
'{{ Id }}',
'{{ Properties }}',
'{{ RelatedAnnotation }}',
'{{ resourceGroupName }}',
'{{ subscriptionId }}',
'{{ resourceName }}'
RETURNING
AnnotationName,
Category,
EventTime,
Id,
Properties,
RelatedAnnotation
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: annotations
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the annotations resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the annotations resource.
    - name: resourceName
      value: string
      description: Required parameter for the annotations resource.
    - name: AnnotationName
      value: string
      description: |
        Name of annotation
    - name: Category
      value: string
      description: |
        Category of annotation, free form
    - name: EventTime
      value: string
      description: |
        Time when event occurred
    - name: Id
      value: string
      description: |
        Unique Id for annotation
    - name: Properties
      value: string
      description: |
        Serialized JSON object for detailed properties
    - name: RelatedAnnotation
      value: string
      description: |
        Related parent annotation if any
      default: null
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

Delete an Annotation of an Application Insights component.

```sql
DELETE FROM azure.application_insights.annotations
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND resourceName = '{{ resourceName }}' --required
AND annotationId = '{{ annotationId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Get the annotation for given id.

```sql
EXEC azure.application_insights.annotations.get 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceName='{{ resourceName }}' --required, 
@annotationId='{{ annotationId }}' --required
;
```
</TabItem>
</Tabs>
