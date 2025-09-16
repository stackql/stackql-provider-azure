--- 
title: patches
hide_title: false
hide_table_of_contents: false
keywords:
  - patches
  - container_apps
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

Creates, updates, deletes, gets or lists a <code>patches</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>patches</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.container_apps.patches" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_container_app', value: 'list_by_container_app' }
    ]}
>
<TabItem value="get">

Patch information retrieved successfully.

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
    <td>Properties that describes current states of the patch resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_container_app">

ARM operation completed successfully.

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
    <td>Properties that describes current states of the patch resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-containerAppName"><code>containerAppName</code></a>, <a href="#parameter-patchName"><code>patchName</code></a></td>
    <td></td>
    <td>Get details for specific Container Apps Patch by patch name.</td>
</tr>
<tr>
    <td><a href="#list_by_container_app"><CopyableCode code="list_by_container_app" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-containerAppName"><code>containerAppName</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>List Container Apps Patch resources by ContainerApp.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-containerAppName"><code>containerAppName</code></a>, <a href="#parameter-patchName"><code>patchName</code></a></td>
    <td></td>
    <td>Delete specific Container Apps Patch by patch name.</td>
</tr>
<tr>
    <td><a href="#skip_configure"><CopyableCode code="skip_configure" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-containerAppName"><code>containerAppName</code></a>, <a href="#parameter-patchName"><code>patchName</code></a></td>
    <td></td>
    <td>Configure the Container Apps Patch skip option by patch name.</td>
</tr>
<tr>
    <td><a href="#apply"><CopyableCode code="apply" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-containerAppName"><code>containerAppName</code></a>, <a href="#parameter-patchName"><code>patchName</code></a></td>
    <td></td>
    <td>Apply a Container Apps Patch resource with patch name.</td>
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
<tr id="parameter-containerAppName">
    <td><CopyableCode code="containerAppName" /></td>
    <td><code>string</code></td>
    <td>Name of the Container App the Build is associated.</td>
</tr>
<tr id="parameter-patchName">
    <td><CopyableCode code="patchName" /></td>
    <td><code>string</code></td>
    <td>The name of the patch</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>The filter to apply on the operation. For example, $filter=properties/patchApplyStatus eq 'Succeeded'</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_container_app', value: 'list_by_container_app' }
    ]}
>
<TabItem value="get">

Get details for specific Container Apps Patch by patch name.

```sql
SELECT
properties
FROM azure.container_apps.patches
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND containerAppName = '{{ containerAppName }}' -- required
AND patchName = '{{ patchName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_container_app">

List Container Apps Patch resources by ContainerApp.

```sql
SELECT
properties
FROM azure.container_apps.patches
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND containerAppName = '{{ containerAppName }}' -- required
AND $filter = '{{ $filter }}'
;
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

Delete specific Container Apps Patch by patch name.

```sql
DELETE FROM azure.container_apps.patches
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND containerAppName = '{{ containerAppName }}' --required
AND patchName = '{{ patchName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="skip_configure"
    values={[
        { label: 'skip_configure', value: 'skip_configure' },
        { label: 'apply', value: 'apply' }
    ]}
>
<TabItem value="skip_configure">

Configure the Container Apps Patch skip option by patch name.

```sql
EXEC azure.container_apps.patches.skip_configure 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@containerAppName='{{ containerAppName }}' --required, 
@patchName='{{ patchName }}' --required 
@@json=
'{
"skip": {{ skip }}
}'
;
```
</TabItem>
<TabItem value="apply">

Apply a Container Apps Patch resource with patch name.

```sql
EXEC azure.container_apps.patches.apply 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@containerAppName='{{ containerAppName }}' --required, 
@patchName='{{ patchName }}' --required
;
```
</TabItem>
</Tabs>
