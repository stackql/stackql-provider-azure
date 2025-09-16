--- 
title: jobs
hide_title: false
hide_table_of_contents: false
keywords:
  - jobs
  - storage_import_export
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

Creates, updates, deletes, gets or lists a <code>jobs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>jobs</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage_import_export.jobs" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
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
    <td>Specifies the resource identifier of the job.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Specifies the name of the job.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Specifies the job identity details</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Specifies the Azure location where the job is created.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Specifies the job properties</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>SystemData of ImportExport Jobs.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Specifies the tags that are assigned to the job.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Specifies the type of the job resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group">

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
    <td>Specifies the resource identifier of the job.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Specifies the name of the job.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Specifies the job identity details</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Specifies the Azure location where the job is created.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Specifies the job properties</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>SystemData of ImportExport Jobs.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Specifies the tags that are assigned to the job.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Specifies the type of the job resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_subscription">

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
    <td>Specifies the resource identifier of the job.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Specifies the name of the job.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Specifies the job identity details</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Specifies the Azure location where the job is created.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Specifies the job properties</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>SystemData of ImportExport Jobs.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Specifies the tags that are assigned to the job.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Specifies the type of the job resource.</td>
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
    <td><a href="#parameter-jobName"><code>jobName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-Accept-Language"><code>Accept-Language</code></a></td>
    <td>Gets information about an existing job.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td><a href="#parameter-$top"><code>$top</code></a>, <a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-Accept-Language"><code>Accept-Language</code></a></td>
    <td>Returns all active and completed jobs in a resource group.</td>
</tr>
<tr>
    <td><a href="#list_by_subscription"><CopyableCode code="list_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-$top"><code>$top</code></a>, <a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-Accept-Language"><code>Accept-Language</code></a></td>
    <td>Returns all active and completed jobs in a subscription.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-jobName"><code>jobName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-Accept-Language"><code>Accept-Language</code></a>, <a href="#parameter-x-ms-client-tenant-id"><code>x-ms-client-tenant-id</code></a></td>
    <td>Creates a new job or updates an existing job in the specified subscription.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-jobName"><code>jobName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-Accept-Language"><code>Accept-Language</code></a></td>
    <td>Updates specific properties of a job. You can call this operation to notify the Import/Export service that the hard drives comprising the import or export job have been shipped to the Microsoft data center. It can also be used to cancel an existing job.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-jobName"><code>jobName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-Accept-Language"><code>Accept-Language</code></a></td>
    <td>Deletes an existing job. Only jobs in the Creating or Completed states can be deleted.</td>
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
<tr id="parameter-jobName">
    <td><CopyableCode code="jobName" /></td>
    <td><code>string</code></td>
    <td>The name of the import/export job.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The resource group name uniquely identifies the resource group within the user subscription.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription ID for the Azure user.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>Can be used to restrict the results to certain conditions.</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int64)</code></td>
    <td>An integer value that specifies how many jobs at most should be returned. The value cannot exceed 100.</td>
</tr>
<tr id="parameter-Accept-Language">
    <td><CopyableCode code="Accept-Language" /></td>
    <td><code>string</code></td>
    <td>Specifies the preferred language for the response.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>Specifies the API version to use for this request.</td>
</tr>
<tr id="parameter-x-ms-client-tenant-id">
    <td><CopyableCode code="x-ms-client-tenant-id" /></td>
    <td><code>string</code></td>
    <td>The tenant ID of the client making the request.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
    ]}
>
<TabItem value="get">

Gets information about an existing job.

```sql
SELECT
id,
name,
identity,
location,
properties,
systemData,
tags,
type
FROM azure.storage_import_export.jobs
WHERE jobName = '{{ jobName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND api-version = '{{ api-version }}'
AND Accept-Language = '{{ Accept-Language }}'
;
```
</TabItem>
<TabItem value="list_by_resource_group">

Returns all active and completed jobs in a resource group.

```sql
SELECT
id,
name,
identity,
location,
properties,
systemData,
tags,
type
FROM azure.storage_import_export.jobs
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND $top = '{{ $top }}'
AND $filter = '{{ $filter }}'
AND api-version = '{{ api-version }}'
AND Accept-Language = '{{ Accept-Language }}'
;
```
</TabItem>
<TabItem value="list_by_subscription">

Returns all active and completed jobs in a subscription.

```sql
SELECT
id,
name,
identity,
location,
properties,
systemData,
tags,
type
FROM azure.storage_import_export.jobs
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND $top = '{{ $top }}'
AND $filter = '{{ $filter }}'
AND api-version = '{{ api-version }}'
AND Accept-Language = '{{ Accept-Language }}'
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

Creates a new job or updates an existing job in the specified subscription.

```sql
INSERT INTO azure.storage_import_export.jobs (
data__location,
data__tags,
data__properties,
jobName,
subscriptionId,
resourceGroupName,
api-version,
Accept-Language,
x-ms-client-tenant-id
)
SELECT 
'{{ location }}',
'{{ tags }}',
'{{ properties }}',
'{{ jobName }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ api-version }}',
'{{ Accept-Language }}',
'{{ x-ms-client-tenant-id }}'
RETURNING
id,
name,
identity,
location,
properties,
systemData,
tags,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: jobs
  props:
    - name: jobName
      value: string
      description: Required parameter for the jobs resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the jobs resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the jobs resource.
    - name: location
      value: string
      description: |
        Specifies the supported Azure location where the job should be created
    - name: tags
      value: object
      description: |
        Specifies the tags that will be assigned to the job.
    - name: properties
      value: object
      description: |
        Specifies the job properties
    - name: api-version
      value: string
      description: Specifies the API version to use for this request.
    - name: Accept-Language
      value: string
      description: Specifies the preferred language for the response.
    - name: x-ms-client-tenant-id
      value: string
      description: The tenant ID of the client making the request.
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

Updates specific properties of a job. You can call this operation to notify the Import/Export service that the hard drives comprising the import or export job have been shipped to the Microsoft data center. It can also be used to cancel an existing job.

```sql
UPDATE azure.storage_import_export.jobs
SET 
data__tags = '{{ tags }}',
data__properties = '{{ properties }}'
WHERE 
jobName = '{{ jobName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND api-version = '{{ api-version}}'
AND Accept-Language = '{{ Accept-Language}}'
RETURNING
id,
name,
identity,
location,
properties,
systemData,
tags,
type;
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

Deletes an existing job. Only jobs in the Creating or Completed states can be deleted.

```sql
DELETE FROM azure.storage_import_export.jobs
WHERE jobName = '{{ jobName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND api-version = '{{ api-version }}'
AND Accept-Language = '{{ Accept-Language }}'
;
```
</TabItem>
</Tabs>
