--- 
title: features
hide_title: false
hide_table_of_contents: false
keywords:
  - features
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

Creates, updates, deletes, gets or lists a <code>features</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>features</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ml_services.features" /></td></tr>
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
    <td>[Required] Additional attributes of the entity. (x-ms-client-name: FeatureProperties)</td>
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
    <td>[Required] Additional attributes of the entity. (x-ms-client-name: FeatureProperties)</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-featuresetName"><code>featuresetName</code></a>, <a href="#parameter-featuresetVersion"><code>featuresetVersion</code></a>, <a href="#parameter-featureName"><code>featureName</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-featuresetName"><code>featuresetName</code></a>, <a href="#parameter-featuresetVersion"><code>featuresetVersion</code></a></td>
    <td><a href="#parameter-$skip"><code>$skip</code></a>, <a href="#parameter-tags"><code>tags</code></a>, <a href="#parameter-featureName"><code>featureName</code></a>, <a href="#parameter-description"><code>description</code></a>, <a href="#parameter-listViewType"><code>listViewType</code></a>, <a href="#parameter-pageSize"><code>pageSize</code></a></td>
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
<tr id="parameter-featureName">
    <td><CopyableCode code="featureName" /></td>
    <td><code>string</code></td>
    <td>Feature Name. This is case-sensitive.</td>
</tr>
<tr id="parameter-featuresetName">
    <td><CopyableCode code="featuresetName" /></td>
    <td><code>string</code></td>
    <td>Featureset name. This is case-sensitive.</td>
</tr>
<tr id="parameter-featuresetVersion">
    <td><CopyableCode code="featuresetVersion" /></td>
    <td><code>string</code></td>
    <td>Featureset Version identifier. This is case-sensitive.</td>
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
<tr id="parameter-description">
    <td><CopyableCode code="description" /></td>
    <td><code>string</code></td>
    <td>Description of the featureset.</td>
</tr>
<tr id="parameter-featureName">
    <td><CopyableCode code="featureName" /></td>
    <td><code>string</code></td>
    <td>feature name.</td>
</tr>
<tr id="parameter-listViewType">
    <td><CopyableCode code="listViewType" /></td>
    <td><code>string</code></td>
    <td>[ListViewType.ActiveOnly, ListViewType.ArchivedOnly, ListViewType.All]View type for including/excluding (for example) archived entities.</td>
</tr>
<tr id="parameter-pageSize">
    <td><CopyableCode code="pageSize" /></td>
    <td><code>integer (int32)</code></td>
    <td>Page size.</td>
</tr>
<tr id="parameter-tags">
    <td><CopyableCode code="tags" /></td>
    <td><code>string</code></td>
    <td>Comma-separated list of tag names (and optionally values). Example: tag1,tag2=value2</td>
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
FROM azure.ml_services.features
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND workspaceName = '{{ workspaceName }}' -- required
AND featuresetName = '{{ featuresetName }}' -- required
AND featuresetVersion = '{{ featuresetVersion }}' -- required
AND featureName = '{{ featureName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Success

```sql
SELECT
properties
FROM azure.ml_services.features
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND workspaceName = '{{ workspaceName }}' -- required
AND featuresetName = '{{ featuresetName }}' -- required
AND featuresetVersion = '{{ featuresetVersion }}' -- required
AND $skip = '{{ $skip }}'
AND tags = '{{ tags }}'
AND featureName = '{{ featureName }}'
AND description = '{{ description }}'
AND listViewType = '{{ listViewType }}'
AND pageSize = '{{ pageSize }}'
;
```
</TabItem>
</Tabs>
