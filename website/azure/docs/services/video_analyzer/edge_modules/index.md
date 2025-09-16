--- 
title: edge_modules
hide_title: false
hide_table_of_contents: false
keywords:
  - edge_modules
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

Creates, updates, deletes, gets or lists an <code>edge_modules</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>edge_modules</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.video_analyzer.edge_modules" /></td></tr>
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
    <td>The resource properties.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-edgeModuleName"><code>edgeModuleName</code></a></td>
    <td></td>
    <td>Retrieves an existing edge module resource with the given name.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a></td>
    <td><a href="#parameter-$top"><code>$top</code></a></td>
    <td>List all existing edge module resources, along with their JSON representations.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-edgeModuleName"><code>edgeModuleName</code></a></td>
    <td></td>
    <td>Creates a new edge module or updates an existing one. An edge module resource enables a single instance of an Azure Video Analyzer IoT edge module to interact with the Video Analyzer Account. This is used for authorization and also to make sure that the particular edge module instance only has access to the data it requires from the Azure Video Analyzer service. A new edge module resource should be created for every new instance of an Azure Video Analyzer edge module deployed to you Azure IoT edge environment. Edge module resources can be deleted if the specific module is not in use anymore.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-edgeModuleName"><code>edgeModuleName</code></a></td>
    <td></td>
    <td>Deletes an existing edge module resource. Deleting the edge module resource will prevent an Azure Video Analyzer IoT edge module which was previously initiated with the module provisioning token from communicating with the cloud.</td>
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
<tr id="parameter-edgeModuleName">
    <td><CopyableCode code="edgeModuleName" /></td>
    <td><code>string</code></td>
    <td>The Edge Module name.</td>
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

Retrieves an existing edge module resource with the given name.

```sql
SELECT
properties
FROM azure.video_analyzer.edge_modules
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND edgeModuleName = '{{ edgeModuleName }}' -- required
;
```
</TabItem>
<TabItem value="list">

List all existing edge module resources, along with their JSON representations.

```sql
SELECT
properties
FROM azure.video_analyzer.edge_modules
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
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

Creates a new edge module or updates an existing one. An edge module resource enables a single instance of an Azure Video Analyzer IoT edge module to interact with the Video Analyzer Account. This is used for authorization and also to make sure that the particular edge module instance only has access to the data it requires from the Azure Video Analyzer service. A new edge module resource should be created for every new instance of an Azure Video Analyzer edge module deployed to you Azure IoT edge environment. Edge module resources can be deleted if the specific module is not in use anymore.

```sql
INSERT INTO azure.video_analyzer.edge_modules (
data__properties,
subscriptionId,
resourceGroupName,
accountName,
edgeModuleName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ accountName }}',
'{{ edgeModuleName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: edge_modules
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the edge_modules resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the edge_modules resource.
    - name: accountName
      value: string
      description: Required parameter for the edge_modules resource.
    - name: edgeModuleName
      value: string
      description: Required parameter for the edge_modules resource.
    - name: properties
      value: object
      description: |
        The resource properties.
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

Deletes an existing edge module resource. Deleting the edge module resource will prevent an Azure Video Analyzer IoT edge module which was previously initiated with the module provisioning token from communicating with the cloud.

```sql
DELETE FROM azure.video_analyzer.edge_modules
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND accountName = '{{ accountName }}' --required
AND edgeModuleName = '{{ edgeModuleName }}' --required
;
```
</TabItem>
</Tabs>
