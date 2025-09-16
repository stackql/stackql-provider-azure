--- 
title: files_no_subscriptions
hide_title: false
hide_table_of_contents: false
keywords:
  - files_no_subscriptions
  - support
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

Creates, updates, deletes, gets or lists a <code>files_no_subscriptions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>files_no_subscriptions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.support.files_no_subscriptions" /></td></tr>
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

Successfully retrieved file details.

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
    <td>Properties of the resource</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Successfully retrieved files under a file workspace.

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
    <td>Properties of the resource</td>
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
    <td><a href="#parameter-fileWorkspaceName"><code>fileWorkspaceName</code></a>, <a href="#parameter-fileName"><code>fileName</code></a></td>
    <td></td>
    <td>Returns details of a specific file in a work space.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-fileWorkspaceName"><code>fileWorkspaceName</code></a></td>
    <td></td>
    <td>Lists all the Files information under a workspace for an Azure subscription.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-fileWorkspaceName"><code>fileWorkspaceName</code></a>, <a href="#parameter-fileName"><code>fileName</code></a></td>
    <td></td>
    <td>Creates a new file under a workspace.</td>
</tr>
<tr>
    <td><a href="#upload"><CopyableCode code="upload" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-fileWorkspaceName"><code>fileWorkspaceName</code></a>, <a href="#parameter-fileName"><code>fileName</code></a></td>
    <td></td>
    <td>This API allows you to upload content to a file</td>
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
<tr id="parameter-fileName">
    <td><CopyableCode code="fileName" /></td>
    <td><code>string</code></td>
    <td>File Name</td>
</tr>
<tr id="parameter-fileWorkspaceName">
    <td><CopyableCode code="fileWorkspaceName" /></td>
    <td><code>string</code></td>
    <td>File WorkspaceName</td>
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

Returns details of a specific file in a work space.

```sql
SELECT
properties
FROM azure.support.files_no_subscriptions
WHERE fileWorkspaceName = '{{ fileWorkspaceName }}' -- required
AND fileName = '{{ fileName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists all the Files information under a workspace for an Azure subscription.

```sql
SELECT
properties
FROM azure.support.files_no_subscriptions
WHERE fileWorkspaceName = '{{ fileWorkspaceName }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

Creates a new file under a workspace.

```sql
INSERT INTO azure.support.files_no_subscriptions (
data__properties,
fileWorkspaceName,
fileName
)
SELECT 
'{{ properties }}',
'{{ fileWorkspaceName }}',
'{{ fileName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: files_no_subscriptions
  props:
    - name: fileWorkspaceName
      value: string
      description: Required parameter for the files_no_subscriptions resource.
    - name: fileName
      value: string
      description: Required parameter for the files_no_subscriptions resource.
    - name: properties
      value: object
      description: |
        Properties of the resource
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="upload"
    values={[
        { label: 'upload', value: 'upload' }
    ]}
>
<TabItem value="upload">

This API allows you to upload content to a file

```sql
EXEC azure.support.files_no_subscriptions.upload 
@fileWorkspaceName='{{ fileWorkspaceName }}' --required, 
@fileName='{{ fileName }}' --required 
@@json=
'{
"content": "{{ content }}", 
"chunkIndex": {{ chunkIndex }}
}'
;
```
</TabItem>
</Tabs>
