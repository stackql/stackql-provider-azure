--- 
title: import_jobs
hide_title: false
hide_table_of_contents: false
keywords:
  - import_jobs
  - storage_cache
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

Creates, updates, deletes, gets or lists an <code>import_jobs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>import_jobs</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage_cache.import_jobs" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_aml_filesystem', value: 'list_by_aml_filesystem' }
    ]}
>
<TabItem value="get">

Returns the import job object corresponding to amlFilesystemName.

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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the import job.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_aml_filesystem">

A list of import jobs. Note that entity references might replace complete AmlFilesystem objects, as described in http://docs.oasis-open.org/odata/odata-json-format/v4.01/cs01/odata-json-format-v4.01-cs01.html#sec_EntityReference

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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the import job.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-amlFilesystemName"><code>amlFilesystemName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-importJobName"><code>importJobName</code></a></td>
    <td></td>
    <td>Returns an import job.</td>
</tr>
<tr>
    <td><a href="#list_by_aml_filesystem"><CopyableCode code="list_by_aml_filesystem" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-amlFilesystemName"><code>amlFilesystemName</code></a></td>
    <td></td>
    <td>Returns all import jobs the user has access to under an AML File System.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-amlFilesystemName"><code>amlFilesystemName</code></a>, <a href="#parameter-importJobName"><code>importJobName</code></a></td>
    <td></td>
    <td>Create or update an import job. Import jobs are automatically deleted 72 hours after completion.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-amlFilesystemName"><code>amlFilesystemName</code></a>, <a href="#parameter-importJobName"><code>importJobName</code></a></td>
    <td></td>
    <td>Update an import job instance.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-amlFilesystemName"><code>amlFilesystemName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-importJobName"><code>importJobName</code></a></td>
    <td></td>
    <td>Schedules an import job for deletion.</td>
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
<tr id="parameter-amlFilesystemName">
    <td><CopyableCode code="amlFilesystemName" /></td>
    <td><code>string</code></td>
    <td>Name for the AML file system. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.</td>
</tr>
<tr id="parameter-importJobName">
    <td><CopyableCode code="importJobName" /></td>
    <td><code>string</code></td>
    <td>Name for the import job. Allows alphanumerics, underscores, and hyphens. Start and end with alphanumeric.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_aml_filesystem', value: 'list_by_aml_filesystem' }
    ]}
>
<TabItem value="get">

Returns an import job.

```sql
SELECT
location,
properties,
tags
FROM azure.storage_cache.import_jobs
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND amlFilesystemName = '{{ amlFilesystemName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND importJobName = '{{ importJobName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_aml_filesystem">

Returns all import jobs the user has access to under an AML File System.

```sql
SELECT
location,
properties,
tags
FROM azure.storage_cache.import_jobs
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND amlFilesystemName = '{{ amlFilesystemName }}' -- required
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

Create or update an import job. Import jobs are automatically deleted 72 hours after completion.

```sql
INSERT INTO azure.storage_cache.import_jobs (
data__tags,
data__location,
data__properties,
resourceGroupName,
subscriptionId,
amlFilesystemName,
importJobName
)
SELECT 
'{{ tags }}',
'{{ location }}',
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ subscriptionId }}',
'{{ amlFilesystemName }}',
'{{ importJobName }}'
RETURNING
location,
properties,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: import_jobs
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the import_jobs resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the import_jobs resource.
    - name: amlFilesystemName
      value: string
      description: Required parameter for the import_jobs resource.
    - name: importJobName
      value: string
      description: Required parameter for the import_jobs resource.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        The geo-location where the resource lives
    - name: properties
      value: object
      description: |
        Properties of the import job.
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

Update an import job instance.

```sql
UPDATE azure.storage_cache.import_jobs
SET 
data__tags = '{{ tags }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND amlFilesystemName = '{{ amlFilesystemName }}' --required
AND importJobName = '{{ importJobName }}' --required
RETURNING
location,
properties,
tags;
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

Schedules an import job for deletion.

```sql
DELETE FROM azure.storage_cache.import_jobs
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND amlFilesystemName = '{{ amlFilesystemName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND importJobName = '{{ importJobName }}' --required
;
```
</TabItem>
</Tabs>
