--- 
title: source_controls
hide_title: false
hide_table_of_contents: false
keywords:
  - source_controls
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

Creates, updates, deletes, gets or lists a <code>source_controls</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>source_controls</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.container_apps.source_controls" /></td></tr>
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
    <td>SourceControl resource specific properties</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_container_app">

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
    <td>SourceControl resource specific properties</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-containerAppName"><code>containerAppName</code></a>, <a href="#parameter-sourceControlName"><code>sourceControlName</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#list_by_container_app"><CopyableCode code="list_by_container_app" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-containerAppName"><code>containerAppName</code></a></td>
    <td></td>
    <td></td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-containerAppName"><code>containerAppName</code></a>, <a href="#parameter-sourceControlName"><code>sourceControlName</code></a>, <a href="#parameter-x-ms-github-auxiliary"><code>x-ms-github-auxiliary</code></a></td>
    <td></td>
    <td>Create or update the SourceControl for a Container App.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-containerAppName"><code>containerAppName</code></a>, <a href="#parameter-sourceControlName"><code>sourceControlName</code></a>, <a href="#parameter-x-ms-github-auxiliary"><code>x-ms-github-auxiliary</code></a></td>
    <td><a href="#parameter-ignoreWorkflowDeletionFailure"><code>ignoreWorkflowDeletionFailure</code></a>, <a href="#parameter-deleteWorkflow"><code>deleteWorkflow</code></a></td>
    <td>Delete a Container App SourceControl.</td>
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
    <td>Name of the Container App.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-sourceControlName">
    <td><CopyableCode code="sourceControlName" /></td>
    <td><code>string</code></td>
    <td>Name of the Container App SourceControl.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
<tr id="parameter-x-ms-github-auxiliary">
    <td><CopyableCode code="x-ms-github-auxiliary" /></td>
    <td><code>string</code></td>
    <td>Github personal access token used for SourceControl.</td>
</tr>
<tr id="parameter-deleteWorkflow">
    <td><CopyableCode code="deleteWorkflow" /></td>
    <td><code>boolean</code></td>
    <td>Delete workflow.</td>
</tr>
<tr id="parameter-ignoreWorkflowDeletionFailure">
    <td><CopyableCode code="ignoreWorkflowDeletionFailure" /></td>
    <td><code>boolean</code></td>
    <td>Ignore Workflow Deletion Failure.</td>
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

OK

```sql
SELECT
properties
FROM azure.container_apps.source_controls
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND containerAppName = '{{ containerAppName }}' -- required
AND sourceControlName = '{{ sourceControlName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_container_app">

OK

```sql
SELECT
properties
FROM azure.container_apps.source_controls
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND containerAppName = '{{ containerAppName }}' -- required
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

Create or update the SourceControl for a Container App.

```sql
INSERT INTO azure.container_apps.source_controls (
data__properties,
subscriptionId,
resourceGroupName,
containerAppName,
sourceControlName,
x-ms-github-auxiliary
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ containerAppName }}',
'{{ sourceControlName }}',
'{{ x-ms-github-auxiliary }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: source_controls
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the source_controls resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the source_controls resource.
    - name: containerAppName
      value: string
      description: Required parameter for the source_controls resource.
    - name: sourceControlName
      value: string
      description: Required parameter for the source_controls resource.
    - name: x-ms-github-auxiliary
      value: string
      description: Required parameter for the source_controls resource.
    - name: properties
      value: object
      description: |
        SourceControl resource specific properties
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

Delete a Container App SourceControl.

```sql
DELETE FROM azure.container_apps.source_controls
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND containerAppName = '{{ containerAppName }}' --required
AND sourceControlName = '{{ sourceControlName }}' --required
AND x-ms-github-auxiliary = '{{ x-ms-github-auxiliary }}' --required
AND ignoreWorkflowDeletionFailure = '{{ ignoreWorkflowDeletionFailure }}'
AND deleteWorkflow = '{{ deleteWorkflow }}'
;
```
</TabItem>
</Tabs>
