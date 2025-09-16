--- 
title: solutions
hide_title: false
hide_table_of_contents: false
keywords:
  - solutions
  - migrate_projects
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

Creates, updates, deletes, gets or lists a <code>solutions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>solutions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.migrate_projects.solutions" /></td></tr>
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
    <td>Gets the relative URL to get to this REST resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Gets the name of this REST resource.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>Gets or sets the ETAG for optimistic concurrency control.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Gets or sets the properties of the solution.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Gets the type of this REST resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-migrateProjectName"><code>migrateProjectName</code></a>, <a href="#parameter-solutionName"><code>solutionName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td></td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-migrateProjectName"><code>migrateProjectName</code></a>, <a href="#parameter-solutionName"><code>solutionName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-Accept-Language"><code>Accept-Language</code></a></td>
    <td>Delete the solution. Deleting non-existent project is a no-operation.</td>
</tr>
<tr>
    <td><a href="#put_solution"><CopyableCode code="put_solution" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-migrateProjectName"><code>migrateProjectName</code></a>, <a href="#parameter-solutionName"><code>solutionName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td></td>
</tr>
<tr>
    <td><a href="#patch_solution"><CopyableCode code="patch_solution" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-migrateProjectName"><code>migrateProjectName</code></a>, <a href="#parameter-solutionName"><code>solutionName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Update a solution with specified name. Supports partial updates, for example only tags can be provided.</td>
</tr>
<tr>
    <td><a href="#enumerate_solutions"><CopyableCode code="enumerate_solutions" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-migrateProjectName"><code>migrateProjectName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td></td>
</tr>
<tr>
    <td><a href="#cleanup_solution_data"><CopyableCode code="cleanup_solution_data" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-migrateProjectName"><code>migrateProjectName</code></a>, <a href="#parameter-solutionName"><code>solutionName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
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
<tr id="parameter-migrateProjectName">
    <td><CopyableCode code="migrateProjectName" /></td>
    <td><code>string</code></td>
    <td>Name of the Azure Migrate project.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the Azure Resource Group that migrate project is part of.</td>
</tr>
<tr id="parameter-solutionName">
    <td><CopyableCode code="solutionName" /></td>
    <td><code>string</code></td>
    <td>Unique name of a migration solution within a migrate project.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Azure Subscription Id in which migrate project was created.</td>
</tr>
<tr id="parameter-Accept-Language">
    <td><CopyableCode code="Accept-Language" /></td>
    <td><code>string</code></td>
    <td>Standard request header. Used by service to respond to client in appropriate language.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>Standard request header. Used by service to identify API version used by client.</td>
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

OK

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.migrate_projects.solutions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND migrateProjectName = '{{ migrateProjectName }}' -- required
AND solutionName = '{{ solutionName }}' -- required
AND api-version = '{{ api-version }}'
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

Delete the solution. Deleting non-existent project is a no-operation.

```sql
DELETE FROM azure.migrate_projects.solutions
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND migrateProjectName = '{{ migrateProjectName }}' --required
AND solutionName = '{{ solutionName }}' --required
AND api-version = '{{ api-version }}'
AND Accept-Language = '{{ Accept-Language }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="put_solution"
    values={[
        { label: 'put_solution', value: 'put_solution' },
        { label: 'patch_solution', value: 'patch_solution' },
        { label: 'enumerate_solutions', value: 'enumerate_solutions' },
        { label: 'cleanup_solution_data', value: 'cleanup_solution_data' }
    ]}
>
<TabItem value="put_solution">

OK

```sql
EXEC azure.migrate_projects.solutions.put_solution 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@migrateProjectName='{{ migrateProjectName }}' --required, 
@solutionName='{{ solutionName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"etag": "{{ etag }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="patch_solution">

Update a solution with specified name. Supports partial updates, for example only tags can be provided.

```sql
EXEC azure.migrate_projects.solutions.patch_solution 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@migrateProjectName='{{ migrateProjectName }}' --required, 
@solutionName='{{ solutionName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"etag": "{{ etag }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
<TabItem value="enumerate_solutions">

OK

```sql
EXEC azure.migrate_projects.solutions.enumerate_solutions 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@migrateProjectName='{{ migrateProjectName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="cleanup_solution_data">

OK

```sql
EXEC azure.migrate_projects.solutions.cleanup_solution_data 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@migrateProjectName='{{ migrateProjectName }}' --required, 
@solutionName='{{ solutionName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
</Tabs>
