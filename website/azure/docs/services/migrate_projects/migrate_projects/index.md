--- 
title: migrate_projects
hide_title: false
hide_table_of_contents: false
keywords:
  - migrate_projects
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

Creates, updates, deletes, gets or lists a <code>migrate_projects</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>migrate_projects</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.migrate_projects.migrate_projects" /></td></tr>
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
    <td>Gets the relative URL to get this migrate project.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Gets the name of the migrate project.</td>
</tr>
<tr>
    <td><CopyableCode code="eTag" /></td>
    <td><code>string</code></td>
    <td>Gets or sets the eTag for concurrency control.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Gets or sets the Azure location in which migrate project is created.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Gets or sets the nested properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Gets or sets the tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Handled by resource provider. Type = Microsoft.Migrate/MigrateProject.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-migrateProjectName"><code>migrateProjectName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td></td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-migrateProjectName"><code>migrateProjectName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-Accept-Language"><code>Accept-Language</code></a></td>
    <td>Delete the migrate project. Deleting non-existent project is a no-operation.</td>
</tr>
<tr>
    <td><a href="#put_migrate_project"><CopyableCode code="put_migrate_project" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-migrateProjectName"><code>migrateProjectName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-Accept-Language"><code>Accept-Language</code></a></td>
    <td></td>
</tr>
<tr>
    <td><a href="#patch_migrate_project"><CopyableCode code="patch_migrate_project" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-migrateProjectName"><code>migrateProjectName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-Accept-Language"><code>Accept-Language</code></a></td>
    <td>Update a migrate project with specified name. Supports partial updates, for example only tags can be provided.</td>
</tr>
<tr>
    <td><a href="#register_tool"><CopyableCode code="register_tool" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-migrateProjectName"><code>migrateProjectName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-Accept-Language"><code>Accept-Language</code></a></td>
    <td></td>
</tr>
<tr>
    <td><a href="#refresh_migrate_project_summary"><CopyableCode code="refresh_migrate_project_summary" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-migrateProjectName"><code>migrateProjectName</code></a></td>
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
eTag,
location,
properties,
tags,
type
FROM azure.migrate_projects.migrate_projects
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND migrateProjectName = '{{ migrateProjectName }}' -- required
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

Delete the migrate project. Deleting non-existent project is a no-operation.

```sql
DELETE FROM azure.migrate_projects.migrate_projects
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND migrateProjectName = '{{ migrateProjectName }}' --required
AND api-version = '{{ api-version }}'
AND Accept-Language = '{{ Accept-Language }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="put_migrate_project"
    values={[
        { label: 'put_migrate_project', value: 'put_migrate_project' },
        { label: 'patch_migrate_project', value: 'patch_migrate_project' },
        { label: 'register_tool', value: 'register_tool' },
        { label: 'refresh_migrate_project_summary', value: 'refresh_migrate_project_summary' }
    ]}
>
<TabItem value="put_migrate_project">

OK

```sql
EXEC azure.migrate_projects.migrate_projects.put_migrate_project 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@migrateProjectName='{{ migrateProjectName }}' --required, 
@api-version='{{ api-version }}', 
@Accept-Language='{{ Accept-Language }}' 
@@json=
'{
"eTag": "{{ eTag }}", 
"location": "{{ location }}", 
"properties": "{{ properties }}", 
"tags": "{{ tags }}"
}'
;
```
</TabItem>
<TabItem value="patch_migrate_project">

Update a migrate project with specified name. Supports partial updates, for example only tags can be provided.

```sql
EXEC azure.migrate_projects.migrate_projects.patch_migrate_project 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@migrateProjectName='{{ migrateProjectName }}' --required, 
@api-version='{{ api-version }}', 
@Accept-Language='{{ Accept-Language }}' 
@@json=
'{
"eTag": "{{ eTag }}", 
"location": "{{ location }}", 
"properties": "{{ properties }}", 
"tags": "{{ tags }}"
}'
;
```
</TabItem>
<TabItem value="register_tool">

OK

```sql
EXEC azure.migrate_projects.migrate_projects.register_tool 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@migrateProjectName='{{ migrateProjectName }}' --required, 
@api-version='{{ api-version }}', 
@Accept-Language='{{ Accept-Language }}' 
@@json=
'{
"tool": "{{ tool }}"
}'
;
```
</TabItem>
<TabItem value="refresh_migrate_project_summary">

OK

```sql
EXEC azure.migrate_projects.migrate_projects.refresh_migrate_project_summary 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@migrateProjectName='{{ migrateProjectName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"goal": "{{ goal }}"
}'
;
```
</TabItem>
</Tabs>
