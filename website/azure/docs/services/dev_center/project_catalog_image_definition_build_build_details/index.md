--- 
title: project_catalog_image_definition_build_build_details
hide_title: false
hide_table_of_contents: false
keywords:
  - project_catalog_image_definition_build_build_details
  - dev_center
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

Creates, updates, deletes, gets or lists a <code>project_catalog_image_definition_build_build_details</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>project_catalog_image_definition_build_build_details</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.dev_center.project_catalog_image_definition_build_build_details" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

OK. The request has succeeded.

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
    <td><CopyableCode code="endTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>End time of the task group.</td>
</tr>
<tr>
    <td><CopyableCode code="errorDetails" /></td>
    <td><code>object</code></td>
    <td>Details for image creation error. Populated when the image creation is not successful.</td>
</tr>
<tr>
    <td><CopyableCode code="imageReference" /></td>
    <td><code>object</code></td>
    <td>The specific image version used by the build.</td>
</tr>
<tr>
    <td><CopyableCode code="startTime" /></td>
    <td><code>string (date-time)</code></td>
    <td>Start time of the task group.</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>The status of the build.</td>
</tr>
<tr>
    <td><CopyableCode code="taskGroups" /></td>
    <td><code>array</code></td>
    <td>The list of task groups executed during the image definition build.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-projectName"><code>projectName</code></a>, <a href="#parameter-catalogName"><code>catalogName</code></a>, <a href="#parameter-imageDefinitionName"><code>imageDefinitionName</code></a>, <a href="#parameter-buildName"><code>buildName</code></a></td>
    <td></td>
    <td>Gets Build details</td>
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
<tr id="parameter-buildName">
    <td><CopyableCode code="buildName" /></td>
    <td><code>string</code></td>
    <td>The ID of the Image Definition Build.</td>
</tr>
<tr id="parameter-catalogName">
    <td><CopyableCode code="catalogName" /></td>
    <td><code>string</code></td>
    <td>The name of the Catalog.</td>
</tr>
<tr id="parameter-imageDefinitionName">
    <td><CopyableCode code="imageDefinitionName" /></td>
    <td><code>string</code></td>
    <td>The name of the Image Definition.</td>
</tr>
<tr id="parameter-projectName">
    <td><CopyableCode code="projectName" /></td>
    <td><code>string</code></td>
    <td>The name of the project.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' }
    ]}
>
<TabItem value="get">

Gets Build details

```sql
SELECT
endTime,
errorDetails,
imageReference,
startTime,
status,
taskGroups
FROM azure.dev_center.project_catalog_image_definition_build_build_details
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND projectName = '{{ projectName }}' -- required
AND catalogName = '{{ catalogName }}' -- required
AND imageDefinitionName = '{{ imageDefinitionName }}' -- required
AND buildName = '{{ buildName }}' -- required
;
```
</TabItem>
</Tabs>
