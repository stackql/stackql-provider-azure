--- 
title: jobs
hide_title: false
hide_table_of_contents: false
keywords:
  - jobs
  - media_services
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.media_services.jobs" /></td></tr>
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
    <td>The resource properties.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The system metadata relating to this resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

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
    <td>The resource properties.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The system metadata relating to this resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-transformName"><code>transformName</code></a>, <a href="#parameter-jobName"><code>jobName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Gets a Job.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-transformName"><code>transformName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$orderby"><code>$orderby</code></a></td>
    <td>Lists all of the Jobs for the Transform.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-transformName"><code>transformName</code></a>, <a href="#parameter-jobName"><code>jobName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Creates a Job.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-transformName"><code>transformName</code></a>, <a href="#parameter-jobName"><code>jobName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Update is only supported for description and priority. Updating Priority will take effect when the Job state is Queued or Scheduled and depending on the timing the priority update may be ignored.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-transformName"><code>transformName</code></a>, <a href="#parameter-jobName"><code>jobName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Deletes a Job.</td>
</tr>
<tr>
    <td><a href="#cancel_job"><CopyableCode code="cancel_job" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-transformName"><code>transformName</code></a>, <a href="#parameter-jobName"><code>jobName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Cancel a Job.</td>
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
<tr id="parameter-accountName">
    <td><CopyableCode code="accountName" /></td>
    <td><code>string</code></td>
    <td>The Media Services account name.</td>
</tr>
<tr id="parameter-jobName">
    <td><CopyableCode code="jobName" /></td>
    <td><code>string</code></td>
    <td>The Job name.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group within the Azure subscription.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The unique identifier for a Microsoft Azure subscription.</td>
</tr>
<tr id="parameter-transformName">
    <td><CopyableCode code="transformName" /></td>
    <td><code>string</code></td>
    <td>The Transform name.</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>Restricts the set of items returned.</td>
</tr>
<tr id="parameter-$orderby">
    <td><CopyableCode code="$orderby" /></td>
    <td><code>string</code></td>
    <td>Specifies the key by which the result collection should be ordered.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>The version of the API to be used with the client request.</td>
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

Gets a Job.

```sql
SELECT
properties,
systemData
FROM azure.media_services.jobs
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND transformName = '{{ transformName }}' -- required
AND jobName = '{{ jobName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list">

Lists all of the Jobs for the Transform.

```sql
SELECT
properties,
systemData
FROM azure.media_services.jobs
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND transformName = '{{ transformName }}' -- required
AND api-version = '{{ api-version }}'
AND $filter = '{{ $filter }}'
AND $orderby = '{{ $orderby }}'
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

Creates a Job.

```sql
INSERT INTO azure.media_services.jobs (
data__properties,
subscriptionId,
resourceGroupName,
accountName,
transformName,
jobName,
api-version
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ accountName }}',
'{{ transformName }}',
'{{ jobName }}',
'{{ api-version }}'
RETURNING
properties,
systemData
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: jobs
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the jobs resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the jobs resource.
    - name: accountName
      value: string
      description: Required parameter for the jobs resource.
    - name: transformName
      value: string
      description: Required parameter for the jobs resource.
    - name: jobName
      value: string
      description: Required parameter for the jobs resource.
    - name: properties
      value: object
      description: |
        The resource properties.
    - name: api-version
      value: string
      description: The version of the API to be used with the client request.
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

Update is only supported for description and priority. Updating Priority will take effect when the Job state is Queued or Scheduled and depending on the timing the priority update may be ignored.

```sql
UPDATE azure.media_services.jobs
SET 
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND accountName = '{{ accountName }}' --required
AND transformName = '{{ transformName }}' --required
AND jobName = '{{ jobName }}' --required
AND api-version = '{{ api-version}}'
RETURNING
properties,
systemData;
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

Deletes a Job.

```sql
DELETE FROM azure.media_services.jobs
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND accountName = '{{ accountName }}' --required
AND transformName = '{{ transformName }}' --required
AND jobName = '{{ jobName }}' --required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="cancel_job"
    values={[
        { label: 'cancel_job', value: 'cancel_job' }
    ]}
>
<TabItem value="cancel_job">

Cancel a Job.

```sql
EXEC azure.media_services.jobs.cancel_job 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@transformName='{{ transformName }}' --required, 
@jobName='{{ jobName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
</Tabs>
