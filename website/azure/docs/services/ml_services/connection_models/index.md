--- 
title: connection_models
hide_title: false
hide_table_of_contents: false
keywords:
  - connection_models
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

Creates, updates, deletes, gets or lists a <code>connection_models</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>connection_models</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.ml_services.connection_models" /></td></tr>
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

The request was successful; the request was well-formed and received properly.

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
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Deployment model name.</td>
</tr>
<tr>
    <td><CopyableCode code="capabilities" /></td>
    <td><code>object</code></td>
    <td>The capabilities.</td>
</tr>
<tr>
    <td><CopyableCode code="deprecation" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="finetuneCapabilities" /></td>
    <td><code>object</code></td>
    <td>The capabilities for finetune models.</td>
</tr>
<tr>
    <td><CopyableCode code="format" /></td>
    <td><code>string</code></td>
    <td>Deployment model format.</td>
</tr>
<tr>
    <td><CopyableCode code="isDefaultVersion" /></td>
    <td><code>boolean</code></td>
    <td>If the model is default version.</td>
</tr>
<tr>
    <td><CopyableCode code="lifecycleStatus" /></td>
    <td><code>string</code></td>
    <td>Model lifecycle status.</td>
</tr>
<tr>
    <td><CopyableCode code="maxCapacity" /></td>
    <td><code>integer (int32)</code></td>
    <td>The max capacity.</td>
</tr>
<tr>
    <td><CopyableCode code="skus" /></td>
    <td><code>array</code></td>
    <td>The list of Model Sku.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="version" /></td>
    <td><code>string</code></td>
    <td>Optional. Deployment model version. If version is not specified, a default version will be assigned. The default version is different for different models and might change when there is new version available for a model. Default version for a model could be found from list models API.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

The request was successful; the request was well-formed and received properly.

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
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Deployment model name.</td>
</tr>
<tr>
    <td><CopyableCode code="capabilities" /></td>
    <td><code>object</code></td>
    <td>The capabilities.</td>
</tr>
<tr>
    <td><CopyableCode code="deprecation" /></td>
    <td><code>object</code></td>
    <td></td>
</tr>
<tr>
    <td><CopyableCode code="finetuneCapabilities" /></td>
    <td><code>object</code></td>
    <td>The capabilities for finetune models.</td>
</tr>
<tr>
    <td><CopyableCode code="format" /></td>
    <td><code>string</code></td>
    <td>Deployment model format.</td>
</tr>
<tr>
    <td><CopyableCode code="isDefaultVersion" /></td>
    <td><code>boolean</code></td>
    <td>If the model is default version.</td>
</tr>
<tr>
    <td><CopyableCode code="lifecycleStatus" /></td>
    <td><code>string</code></td>
    <td>Model lifecycle status.</td>
</tr>
<tr>
    <td><CopyableCode code="maxCapacity" /></td>
    <td><code>integer (int32)</code></td>
    <td>The max capacity.</td>
</tr>
<tr>
    <td><CopyableCode code="skus" /></td>
    <td><code>array</code></td>
    <td>The list of Model Sku.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="version" /></td>
    <td><code>string</code></td>
    <td>Optional. Deployment model version. If version is not specified, a default version will be assigned. The default version is different for different models and might change when there is new version available for a model. Default version for a model could be found from list models API.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-connectionName"><code>connectionName</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a></td>
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
<tr id="parameter-connectionName">
    <td><CopyableCode code="connectionName" /></td>
    <td><code>string</code></td>
    <td>Friendly name of the workspace connection</td>
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

The request was successful; the request was well-formed and received properly.

```sql
SELECT
name,
capabilities,
deprecation,
finetuneCapabilities,
format,
isDefaultVersion,
lifecycleStatus,
maxCapacity,
skus,
systemData,
version
FROM azure.ml_services.connection_models
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND workspaceName = '{{ workspaceName }}' -- required
AND connectionName = '{{ connectionName }}' -- required
;
```
</TabItem>
<TabItem value="list">

The request was successful; the request was well-formed and received properly.

```sql
SELECT
name,
capabilities,
deprecation,
finetuneCapabilities,
format,
isDefaultVersion,
lifecycleStatus,
maxCapacity,
skus,
systemData,
version
FROM azure.ml_services.connection_models
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND workspaceName = '{{ workspaceName }}' -- required
;
```
</TabItem>
</Tabs>
