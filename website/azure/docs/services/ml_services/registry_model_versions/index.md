--- 
title: registry_model_versions
hide_title: false
hide_table_of_contents: false
keywords:
  - registry_model_versions
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

Creates, updates, deletes, gets or lists a <code>registry_model_versions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>registry_model_versions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ml_services.registry_model_versions" /></td></tr>
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
    <td>[Required] Additional attributes of the entity. (x-ms-client-name: ModelVersionProperties)</td>
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
    <td>[Required] Additional attributes of the entity. (x-ms-client-name: ModelVersionProperties)</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-registryName"><code>registryName</code></a>, <a href="#parameter-modelName"><code>modelName</code></a>, <a href="#parameter-version"><code>version</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-registryName"><code>registryName</code></a>, <a href="#parameter-modelName"><code>modelName</code></a></td>
    <td><a href="#parameter-$skip"><code>$skip</code></a>, <a href="#parameter-$orderBy"><code>$orderBy</code></a>, <a href="#parameter-$top"><code>$top</code></a>, <a href="#parameter-version"><code>version</code></a>, <a href="#parameter-description"><code>description</code></a>, <a href="#parameter-tags"><code>tags</code></a>, <a href="#parameter-properties"><code>properties</code></a>, <a href="#parameter-listViewType"><code>listViewType</code></a></td>
    <td></td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-registryName"><code>registryName</code></a>, <a href="#parameter-modelName"><code>modelName</code></a>, <a href="#parameter-version"><code>version</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#create_or_get_start_pending_upload"><CopyableCode code="create_or_get_start_pending_upload" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-registryName"><code>registryName</code></a>, <a href="#parameter-modelName"><code>modelName</code></a>, <a href="#parameter-version"><code>version</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-registryName"><code>registryName</code></a>, <a href="#parameter-modelName"><code>modelName</code></a>, <a href="#parameter-version"><code>version</code></a></td>
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
<tr id="parameter-modelName">
    <td><CopyableCode code="modelName" /></td>
    <td><code>string</code></td>
    <td>Container name.</td>
</tr>
<tr id="parameter-registryName">
    <td><CopyableCode code="registryName" /></td>
    <td><code>string</code></td>
    <td>Name of Azure Machine Learning registry. This is case-insensitive</td>
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
    <td>Version identifier.</td>
</tr>
<tr id="parameter-$orderBy">
    <td><CopyableCode code="$orderBy" /></td>
    <td><code>string</code></td>
    <td>Ordering of list.</td>
</tr>
<tr id="parameter-$skip">
    <td><CopyableCode code="$skip" /></td>
    <td><code>string</code></td>
    <td>Continuation token for pagination.</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int32)</code></td>
    <td>Maximum number of records to return.</td>
</tr>
<tr id="parameter-description">
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Model description.</td>
</tr>
<tr id="parameter-listViewType">
    <td><CopyableCode code="listViewType" /></td>
    <td><code>string</code></td>
    <td>View type for including/excluding (for example) archived entities.</td>
</tr>
<tr id="parameter-properties">
    <td><CopyableCode code="properties" /></td>
    <td><code>string</code></td>
    <td>Comma-separated list of property names (and optionally values). Example: prop1,prop2=value2</td>
</tr>
<tr id="parameter-tags">
    <td><CopyableCode code="tags" /></td>
    <td><code>string</code></td>
    <td>Comma-separated list of tag names (and optionally values). Example: tag1,tag2=value2</td>
</tr>
<tr id="parameter-version">
    <td><CopyableCode code="version" /></td>
    <td><code>string</code></td>
    <td>Version identifier.</td>
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
FROM azure.ml_services.registry_model_versions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND registryName = '{{ registryName }}' -- required
AND modelName = '{{ modelName }}' -- required
AND version = '{{ version }}' -- required
;
```
</TabItem>
<TabItem value="list">

Success

```sql
SELECT
properties
FROM azure.ml_services.registry_model_versions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND registryName = '{{ registryName }}' -- required
AND modelName = '{{ modelName }}' -- required
AND $skip = '{{ $skip }}'
AND $orderBy = '{{ $orderBy }}'
AND $top = '{{ $top }}'
AND version = '{{ version }}'
AND description = '{{ description }}'
AND tags = '{{ tags }}'
AND properties = '{{ properties }}'
AND listViewType = '{{ listViewType }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_or_update"
    values={[
        { label: 'create_or_update', value: 'create_or_update' },
        { label: 'create_or_get_start_pending_upload', value: 'create_or_get_start_pending_upload' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_or_update">

No description available.

```sql
INSERT INTO azure.ml_services.registry_model_versions (
data__properties,
subscriptionId,
resourceGroupName,
registryName,
modelName,
version
)
SELECT 
'{{ properties }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ registryName }}',
'{{ modelName }}',
'{{ version }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="create_or_get_start_pending_upload">

No description available.

```sql
INSERT INTO azure.ml_services.registry_model_versions (
data__pendingUploadId,
data__pendingUploadType,
subscriptionId,
resourceGroupName,
registryName,
modelName,
version
)
SELECT 
'{{ pendingUploadId }}',
'{{ pendingUploadType }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ registryName }}',
'{{ modelName }}',
'{{ version }}'
RETURNING
blobReferenceForConsumption,
pendingUploadId,
pendingUploadType
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: registry_model_versions
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the registry_model_versions resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the registry_model_versions resource.
    - name: registryName
      value: string
      description: Required parameter for the registry_model_versions resource.
    - name: modelName
      value: string
      description: Required parameter for the registry_model_versions resource.
    - name: version
      value: string
      description: Required parameter for the registry_model_versions resource.
    - name: properties
      value: object
      description: |
        [Required] Additional attributes of the entity.
    - name: pendingUploadId
      value: string
      description: |
        If PendingUploadId = null then random guid will be used.
    - name: pendingUploadType
      value: string
      description: |
        TemporaryBlobReference is the only supported type
      valid_values: ['None', 'TemporaryBlobReference']
      default: TemporaryBlobReference
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
DELETE FROM azure.ml_services.registry_model_versions
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND registryName = '{{ registryName }}' --required
AND modelName = '{{ modelName }}' --required
AND version = '{{ version }}' --required
;
```
</TabItem>
</Tabs>
