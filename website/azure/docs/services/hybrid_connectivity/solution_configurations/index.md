--- 
title: solution_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - solution_configurations
  - hybrid_connectivity
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

Creates, updates, deletes, gets or lists a <code>solution_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>solution_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hybrid_connectivity.solution_configurations" /></td></tr>
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

Azure operation completed successfully.

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
    <td>The resource-specific properties for this resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Azure operation completed successfully.

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
    <td>The resource-specific properties for this resource.</td>
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
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-solutionConfiguration"><code>solutionConfiguration</code></a></td>
    <td></td>
    <td>Get a SolutionConfiguration</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a></td>
    <td></td>
    <td>List SolutionConfiguration resources by parent</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-solutionConfiguration"><code>solutionConfiguration</code></a></td>
    <td></td>
    <td>Create a SolutionConfiguration</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-solutionConfiguration"><code>solutionConfiguration</code></a></td>
    <td></td>
    <td>Update a SolutionConfiguration</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-solutionConfiguration"><code>solutionConfiguration</code></a></td>
    <td></td>
    <td>Delete a SolutionConfiguration</td>
</tr>
<tr>
    <td><a href="#sync_now"><CopyableCode code="sync_now" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-solutionConfiguration"><code>solutionConfiguration</code></a></td>
    <td></td>
    <td>Trigger immediate sync with source cloud</td>
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
<tr id="parameter-resourceUri">
    <td><CopyableCode code="resourceUri" /></td>
    <td><code>string</code></td>
    <td>The fully qualified Azure Resource manager identifier of the resource.</td>
</tr>
<tr id="parameter-solutionConfiguration">
    <td><CopyableCode code="solutionConfiguration" /></td>
    <td><code>string</code></td>
    <td>Represent Solution Configuration Resource.</td>
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

Get a SolutionConfiguration

```sql
SELECT
properties
FROM azure.hybrid_connectivity.solution_configurations
WHERE resourceUri = '{{ resourceUri }}' -- required
AND solutionConfiguration = '{{ solutionConfiguration }}' -- required
;
```
</TabItem>
<TabItem value="list">

List SolutionConfiguration resources by parent

```sql
SELECT
properties
FROM azure.hybrid_connectivity.solution_configurations
WHERE resourceUri = '{{ resourceUri }}' -- required
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

Create a SolutionConfiguration

```sql
INSERT INTO azure.hybrid_connectivity.solution_configurations (
data__properties,
resourceUri,
solutionConfiguration
)
SELECT 
'{{ properties }}',
'{{ resourceUri }}',
'{{ solutionConfiguration }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: solution_configurations
  props:
    - name: resourceUri
      value: string
      description: Required parameter for the solution_configurations resource.
    - name: solutionConfiguration
      value: string
      description: Required parameter for the solution_configurations resource.
    - name: properties
      value: object
      description: |
        The resource-specific properties for this resource.
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

Update a SolutionConfiguration

```sql
UPDATE azure.hybrid_connectivity.solution_configurations
SET 
data__properties = '{{ properties }}'
WHERE 
resourceUri = '{{ resourceUri }}' --required
AND solutionConfiguration = '{{ solutionConfiguration }}' --required
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

Delete a SolutionConfiguration

```sql
DELETE FROM azure.hybrid_connectivity.solution_configurations
WHERE resourceUri = '{{ resourceUri }}' --required
AND solutionConfiguration = '{{ solutionConfiguration }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="sync_now"
    values={[
        { label: 'sync_now', value: 'sync_now' }
    ]}
>
<TabItem value="sync_now">

Trigger immediate sync with source cloud

```sql
EXEC azure.hybrid_connectivity.solution_configurations.sync_now 
@resourceUri='{{ resourceUri }}' --required, 
@solutionConfiguration='{{ solutionConfiguration }}' --required
;
```
</TabItem>
</Tabs>
