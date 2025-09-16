--- 
title: featureset_versions
hide_title: false
hide_table_of_contents: false
keywords:
  - featureset_versions
  - ml_services
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

Creates, updates, deletes, gets or lists a <code>featureset_versions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>featureset_versions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ml_services.featureset_versions" /></td></tr>
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
    <td>[Required] Additional attributes of the entity. (x-ms-client-name: FeaturesetVersionProperties)</td>
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
    <td>[Required] Additional attributes of the entity. (x-ms-client-name: FeaturesetVersionProperties)</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-version"><code>version</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td><a href="#parameter-$skip"><code>$skip</code></a>, <a href="#parameter-tags"><code>tags</code></a>, <a href="#parameter-listViewType"><code>listViewType</code></a>, <a href="#parameter-pageSize"><code>pageSize</code></a>, <a href="#parameter-versionName"><code>versionName</code></a>, <a href="#parameter-version"><code>version</code></a>, <a href="#parameter-description"><code>description</code></a>, <a href="#parameter-createdBy"><code>createdBy</code></a>, <a href="#parameter-stage"><code>stage</code></a></td>
    <td></td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-version"><code>version</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-version"><code>version</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#backfill"><CopyableCode code="backfill" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-version"><code>version</code></a></td>
    <td></td>
    <td></td>
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
<tr id="parameter-name">
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Container name. This is case-sensitive.</td>
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
<tr id="parameter-version">
    <td><CopyableCode code="version" /></td>
    <td><code>string</code></td>
    <td>Version identifier. This is case-sensitive.</td>
</tr>
<tr id="parameter-workspaceName">
    <td><CopyableCode code="workspaceName" /></td>
    <td><code>string</code></td>
    <td>Azure Machine Learning Workspace Name</td>
</tr>
<tr id="parameter-$skip">
    <td><CopyableCode code="$skip" /></td>
    <td><code>string</code></td>
    <td>Continuation token for pagination.</td>
</tr>
<tr id="parameter-createdBy">
    <td><CopyableCode code="createdBy" /></td>
    <td><code>string</code></td>
    <td>createdBy user name</td>
</tr>
<tr id="parameter-description">
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>description for the feature set version</td>
</tr>
<tr id="parameter-listViewType">
    <td><CopyableCode code="listViewType" /></td>
    <td><code>string</code></td>
    <td>[ListViewType.ActiveOnly, ListViewType.ArchivedOnly, ListViewType.All]View type for including/excluding (for example) archived entities.</td>
</tr>
<tr id="parameter-pageSize">
    <td><CopyableCode code="pageSize" /></td>
    <td><code>integer (int32)</code></td>
    <td>page size</td>
</tr>
<tr id="parameter-stage">
    <td><CopyableCode code="stage" /></td>
    <td><code>string</code></td>
    <td>Specifies the featurestore stage</td>
</tr>
<tr id="parameter-tags">
    <td><CopyableCode code="tags" /></td>
    <td><code>string</code></td>
    <td>Comma-separated list of tag names (and optionally values). Example: tag1,tag2=value2</td>
</tr>
<tr id="parameter-version">
    <td><CopyableCode code="version" /></td>
    <td><code>string</code></td>
    <td>featureset version</td>
</tr>
<tr id="parameter-versionName">
    <td><CopyableCode code="versionName" /></td>
    <td><code>string</code></td>
    <td>name for the featureset version</td>
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

Success

```sql
SELECT
properties
FROM azure.ml_services.featureset_versions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND workspaceName = '{{ workspaceName }}' -- required
AND name = '{{ name }}' -- required
AND version = '{{ version }}' -- required
;
```
</TabItem>
<TabItem value="list">

Success

```sql
SELECT
properties
FROM azure.ml_services.featureset_versions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND workspaceName = '{{ workspaceName }}' -- required
AND name = '{{ name }}' -- required
AND $skip = '{{ $skip }}'
AND tags = '{{ tags }}'
AND listViewType = '{{ listViewType }}'
AND pageSize = '{{ pageSize }}'
AND versionName = '{{ versionName }}'
AND version = '{{ version }}'
AND description = '{{ description }}'
AND createdBy = '{{ createdBy }}'
AND stage = '{{ stage }}'
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

No description available.

```sql
INSERT INTO azure.ml_services.featureset_versions (
data__properties,
subscriptionId,
resourceGroupName,
workspaceName,
name,
version
)
SELECT 
'{{ properties }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ workspaceName }}',
'{{ name }}',
'{{ version }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: featureset_versions
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the featureset_versions resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the featureset_versions resource.
    - name: workspaceName
      value: string
      description: Required parameter for the featureset_versions resource.
    - name: name
      value: string
      description: Required parameter for the featureset_versions resource.
    - name: version
      value: string
      description: Required parameter for the featureset_versions resource.
    - name: properties
      value: object
      description: |
        [Required] Additional attributes of the entity.
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

No description available.

```sql
DELETE FROM azure.ml_services.featureset_versions
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND workspaceName = '{{ workspaceName }}' --required
AND name = '{{ name }}' --required
AND version = '{{ version }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="backfill"
    values={[
        { label: 'backfill', value: 'backfill' }
    ]}
>
<TabItem value="backfill">

Success

```sql
EXEC azure.ml_services.featureset_versions.backfill 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@workspaceName='{{ workspaceName }}' --required, 
@name='{{ name }}' --required, 
@version='{{ version }}' --required 
@@json=
'{
"dataAvailabilityStatus": "{{ dataAvailabilityStatus }}", 
"description": "{{ description }}", 
"displayName": "{{ displayName }}", 
"featureWindow": "{{ featureWindow }}", 
"jobId": "{{ jobId }}", 
"properties": "{{ properties }}", 
"resource": "{{ resource }}", 
"sparkConfiguration": "{{ sparkConfiguration }}", 
"tags": "{{ tags }}"
}'
;
```
</TabItem>
</Tabs>
