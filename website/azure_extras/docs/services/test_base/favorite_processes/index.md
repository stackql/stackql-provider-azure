--- 
title: favorite_processes
hide_title: false
hide_table_of_contents: false
keywords:
  - favorite_processes
  - test_base
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

Creates, updates, deletes, gets or lists a <code>favorite_processes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>favorite_processes</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure_extras.test_base.favorite_processes" /></td></tr>
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

The operation is completed.

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
    <td>Properties of a favorite process identifier.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

The operation is completed.

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
    <td>Properties of a favorite process identifier.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-testBaseAccountName"><code>testBaseAccountName</code></a>, <a href="#parameter-packageName"><code>packageName</code></a>, <a href="#parameter-favoriteProcessResourceName"><code>favoriteProcessResourceName</code></a></td>
    <td></td>
    <td>Gets a favorite process for a Test Base Package.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-testBaseAccountName"><code>testBaseAccountName</code></a>, <a href="#parameter-packageName"><code>packageName</code></a></td>
    <td></td>
    <td>Lists the favorite processes for a specific package.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-testBaseAccountName"><code>testBaseAccountName</code></a>, <a href="#parameter-packageName"><code>packageName</code></a>, <a href="#parameter-favoriteProcessResourceName"><code>favoriteProcessResourceName</code></a></td>
    <td></td>
    <td>Create or replace a favorite process for a Test Base Package.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-testBaseAccountName"><code>testBaseAccountName</code></a>, <a href="#parameter-packageName"><code>packageName</code></a>, <a href="#parameter-favoriteProcessResourceName"><code>favoriteProcessResourceName</code></a></td>
    <td></td>
    <td>Deletes a favorite process for a specific package.</td>
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
<tr id="parameter-favoriteProcessResourceName">
    <td><CopyableCode code="favoriteProcessResourceName" /></td>
    <td><code>string</code></td>
    <td>The resource name of a favorite process in a package. If the process name contains characters that are not allowed in Azure Resource Name, we use 'actualProcessName' in request body to submit the name.</td>
</tr>
<tr id="parameter-packageName">
    <td><CopyableCode code="packageName" /></td>
    <td><code>string</code></td>
    <td>The resource name of the Test Base Package.</td>
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
<tr id="parameter-testBaseAccountName">
    <td><CopyableCode code="testBaseAccountName" /></td>
    <td><code>string</code></td>
    <td>The resource name of the Test Base Account.</td>
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

Gets a favorite process for a Test Base Package.

```sql
SELECT
properties
FROM azure_extras.test_base.favorite_processes
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND testBaseAccountName = '{{ testBaseAccountName }}' -- required
AND packageName = '{{ packageName }}' -- required
AND favoriteProcessResourceName = '{{ favoriteProcessResourceName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists the favorite processes for a specific package.

```sql
SELECT
properties
FROM azure_extras.test_base.favorite_processes
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND testBaseAccountName = '{{ testBaseAccountName }}' -- required
AND packageName = '{{ packageName }}' -- required
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

Create or replace a favorite process for a Test Base Package.

```sql
INSERT INTO azure_extras.test_base.favorite_processes (
data__properties,
subscriptionId,
resourceGroupName,
testBaseAccountName,
packageName,
favoriteProcessResourceName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ testBaseAccountName }}',
'{{ packageName }}',
'{{ favoriteProcessResourceName }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: favorite_processes
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the favorite_processes resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the favorite_processes resource.
    - name: testBaseAccountName
      value: string
      description: Required parameter for the favorite_processes resource.
    - name: packageName
      value: string
      description: Required parameter for the favorite_processes resource.
    - name: favoriteProcessResourceName
      value: string
      description: Required parameter for the favorite_processes resource.
    - name: properties
      value: object
      description: |
        Properties of a favorite process identifier.
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

Deletes a favorite process for a specific package.

```sql
DELETE FROM azure_extras.test_base.favorite_processes
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND testBaseAccountName = '{{ testBaseAccountName }}' --required
AND packageName = '{{ packageName }}' --required
AND favoriteProcessResourceName = '{{ favoriteProcessResourceName }}' --required
;
```
</TabItem>
</Tabs>
