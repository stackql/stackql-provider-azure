--- 
title: projects_job_status
hide_title: false
hide_table_of_contents: false
keywords:
  - projects_job_status
  - visual_studio
  - azure_extras
  - infrastructure-as-code
  - configuration-as-data
  - cloud inventory
description: Query, deploy and manage azure_extras resources using SQL
custom_edit_url: null
image: /img/stackql-azure_extras-provider-featured-image.png
---

import CopyableCode from '@site/src/components/CopyableCode/CopyableCode';
import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Creates, updates, deletes, gets or lists a <code>projects_job_status</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>projects_job_status</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.visual_studio.projects_job_status" /></td></tr>
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

The operation succeeded. The response contains the details of the newly created team project resource.

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
    <td>Unique identifier of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Key/value pair of resource properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-rootResourceName"><code>rootResourceName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-subContainerName"><code>subContainerName</code></a>, <a href="#parameter-operation"><code>operation</code></a></td>
    <td><a href="#parameter-jobId"><code>jobId</code></a></td>
    <td>Gets the status of the project resource creation job.</td>
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
<tr id="parameter-operation">
    <td><CopyableCode code="operation" /></td>
    <td><code>string</code></td>
    <td>The operation type. The only supported value is 'put'.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group within the Azure subscription.</td>
</tr>
<tr id="parameter-resourceName">
    <td><CopyableCode code="resourceName" /></td>
    <td><code>string</code></td>
    <td>Name of the Team Services project.</td>
</tr>
<tr id="parameter-rootResourceName">
    <td><CopyableCode code="rootResourceName" /></td>
    <td><code>string</code></td>
    <td>Name of the Team Services account.</td>
</tr>
<tr id="parameter-subContainerName">
    <td><CopyableCode code="subContainerName" /></td>
    <td><code>string</code></td>
    <td>This parameter should be set to the resourceName.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The Azure subscription identifier.</td>
</tr>
<tr id="parameter-jobId">
    <td><CopyableCode code="jobId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The job identifier.</td>
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

Gets the status of the project resource creation job.

```sql
SELECT
id,
name,
location,
properties,
tags,
type
FROM azure_extras.visual_studio.projects_job_status
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND rootResourceName = '{{ rootResourceName }}' -- required
AND resourceName = '{{ resourceName }}' -- required
AND subContainerName = '{{ subContainerName }}' -- required
AND operation = '{{ operation }}' -- required
AND jobId = '{{ jobId }}'
;
```
</TabItem>
</Tabs>
