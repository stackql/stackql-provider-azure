--- 
title: labels
hide_title: false
hide_table_of_contents: false
keywords:
  - labels
  - defender
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

Creates, updates, deletes, gets or lists a <code>labels</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>labels</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.defender.labels" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get_by_workspace"
    values={[
        { label: 'get_by_workspace', value: 'get_by_workspace' },
        { label: 'list_by_workspace', value: 'list_by_workspace' }
    ]}
>
<TabItem value="get_by_workspace">

Label details.

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
    <td>Label properties</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_workspace">

Lists of labels.

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
    <td>Label properties</td>
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
    <td><a href="#get_by_workspace"><CopyableCode code="get_by_workspace" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-labelName"><code>labelName</code></a></td>
    <td></td>
    <td>Returns a label in the given workspace.</td>
</tr>
<tr>
    <td><a href="#list_by_workspace"><CopyableCode code="list_by_workspace" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a></td>
    <td></td>
    <td>Returns a list of labels in the given workspace.</td>
</tr>
<tr>
    <td><a href="#create_and_update"><CopyableCode code="create_and_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-labelName"><code>labelName</code></a></td>
    <td></td>
    <td>Create or update a Label.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-labelName"><code>labelName</code></a></td>
    <td></td>
    <td>Update a Label.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-workspaceName"><code>workspaceName</code></a>, <a href="#parameter-labelName"><code>labelName</code></a></td>
    <td></td>
    <td>Delete a Label.</td>
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
<tr id="parameter-labelName">
    <td><CopyableCode code="labelName" /></td>
    <td><code>string</code></td>
    <td>The name of the Label.</td>
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
    <td>The name of the Workspace.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get_by_workspace"
    values={[
        { label: 'get_by_workspace', value: 'get_by_workspace' },
        { label: 'list_by_workspace', value: 'list_by_workspace' }
    ]}
>
<TabItem value="get_by_workspace">

Returns a label in the given workspace.

```sql
SELECT
properties
FROM azure.defender.labels
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND workspaceName = '{{ workspaceName }}' -- required
AND labelName = '{{ labelName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_workspace">

Returns a list of labels in the given workspace.

```sql
SELECT
properties
FROM azure.defender.labels
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND workspaceName = '{{ workspaceName }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_and_update"
    values={[
        { label: 'create_and_update', value: 'create_and_update' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_and_update">

Create or update a Label.

```sql
INSERT INTO azure.defender.labels (
data__properties,
resourceGroupName,
subscriptionId,
workspaceName,
labelName
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ subscriptionId }}',
'{{ workspaceName }}',
'{{ labelName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: labels
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the labels resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the labels resource.
    - name: workspaceName
      value: string
      description: Required parameter for the labels resource.
    - name: labelName
      value: string
      description: Required parameter for the labels resource.
    - name: properties
      value: object
      description: |
        Label properties
```
</TabItem>
</Tabs>


## `UPDATE` examples

<Tabs
    defaultValue="update"
    values={[
        { label: 'update', value: 'update' }
    ]}
>
<TabItem value="update">

Update a Label.

```sql
UPDATE azure.defender.labels
SET 
data__properties = '{{ properties }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND workspaceName = '{{ workspaceName }}' --required
AND labelName = '{{ labelName }}' --required
RETURNING
properties;
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

Delete a Label.

```sql
DELETE FROM azure.defender.labels
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND workspaceName = '{{ workspaceName }}' --required
AND labelName = '{{ labelName }}' --required
;
```
</TabItem>
</Tabs>
