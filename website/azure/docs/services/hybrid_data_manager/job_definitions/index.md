--- 
title: job_definitions
hide_title: false
hide_table_of_contents: false
keywords:
  - job_definitions
  - hybrid_data_manager
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

Creates, updates, deletes, gets or lists a <code>job_definitions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>job_definitions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hybrid_data_manager.job_definitions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_data_service', value: 'list_by_data_service' },
        { label: 'list_by_data_manager', value: 'list_by_data_manager' }
    ]}
>
<TabItem value="get">

The job definition that matches the criteria.

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
    <td>Id of the object.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the object.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>JobDefinition properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of the object.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_data_service">

The list of job definitions of the given data service type.

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
    <td>Id of the object.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the object.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>JobDefinition properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of the object.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_data_manager">

The list of job definitions in that resource.

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
    <td>Id of the object.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the object.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>JobDefinition properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Type of the object.</td>
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
    <td><a href="#parameter-dataServiceName"><code>dataServiceName</code></a>, <a href="#parameter-jobDefinitionName"><code>jobDefinitionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataManagerName"><code>dataManagerName</code></a></td>
    <td></td>
    <td>This method gets job definition object by name.</td>
</tr>
<tr>
    <td><a href="#list_by_data_service"><CopyableCode code="list_by_data_service" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-dataServiceName"><code>dataServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataManagerName"><code>dataManagerName</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>This method gets all the job definitions of the given data service name.</td>
</tr>
<tr>
    <td><a href="#list_by_data_manager"><CopyableCode code="list_by_data_manager" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataManagerName"><code>dataManagerName</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a></td>
    <td>This method gets all the job definitions of the given data manager resource.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-dataServiceName"><code>dataServiceName</code></a>, <a href="#parameter-jobDefinitionName"><code>jobDefinitionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataManagerName"><code>dataManagerName</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Creates or updates a job definition.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-dataServiceName"><code>dataServiceName</code></a>, <a href="#parameter-jobDefinitionName"><code>jobDefinitionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataManagerName"><code>dataManagerName</code></a></td>
    <td></td>
    <td>This method deletes the given job definition.</td>
</tr>
<tr>
    <td><a href="#run"><CopyableCode code="run" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-dataServiceName"><code>dataServiceName</code></a>, <a href="#parameter-jobDefinitionName"><code>jobDefinitionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-dataManagerName"><code>dataManagerName</code></a></td>
    <td></td>
    <td>This method runs a job instance of the given job definition.</td>
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
<tr id="parameter-dataManagerName">
    <td><CopyableCode code="dataManagerName" /></td>
    <td><code>string</code></td>
    <td>The name of the DataManager Resource within the specified resource group. DataManager names must be between 3 and 24 characters in length and use any alphanumeric and underscore only</td>
</tr>
<tr id="parameter-dataServiceName">
    <td><CopyableCode code="dataServiceName" /></td>
    <td><code>string</code></td>
    <td>The data service type of the job definition.</td>
</tr>
<tr id="parameter-jobDefinitionName">
    <td><CopyableCode code="jobDefinitionName" /></td>
    <td><code>string</code></td>
    <td>Name of the job definition.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The Resource Group Name</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The Subscription Id</td>
</tr>
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>OData Filter options</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_data_service', value: 'list_by_data_service' },
        { label: 'list_by_data_manager', value: 'list_by_data_manager' }
    ]}
>
<TabItem value="get">

This method gets job definition object by name.

```sql
SELECT
id,
name,
properties,
type
FROM azure.hybrid_data_manager.job_definitions
WHERE dataServiceName = '{{ dataServiceName }}' -- required
AND jobDefinitionName = '{{ jobDefinitionName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND dataManagerName = '{{ dataManagerName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_data_service">

This method gets all the job definitions of the given data service name.

```sql
SELECT
id,
name,
properties,
type
FROM azure.hybrid_data_manager.job_definitions
WHERE dataServiceName = '{{ dataServiceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND dataManagerName = '{{ dataManagerName }}' -- required
AND $filter = '{{ $filter }}'
;
```
</TabItem>
<TabItem value="list_by_data_manager">

This method gets all the job definitions of the given data manager resource.

```sql
SELECT
id,
name,
properties,
type
FROM azure.hybrid_data_manager.job_definitions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND dataManagerName = '{{ dataManagerName }}' -- required
AND $filter = '{{ $filter }}'
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

Creates or updates a job definition.

```sql
INSERT INTO azure.hybrid_data_manager.job_definitions (
data__properties,
dataServiceName,
jobDefinitionName,
subscriptionId,
resourceGroupName,
dataManagerName
)
SELECT 
'{{ properties }}' /* required */,
'{{ dataServiceName }}',
'{{ jobDefinitionName }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ dataManagerName }}'
RETURNING
id,
name,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: job_definitions
  props:
    - name: dataServiceName
      value: string
      description: Required parameter for the job_definitions resource.
    - name: jobDefinitionName
      value: string
      description: Required parameter for the job_definitions resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the job_definitions resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the job_definitions resource.
    - name: dataManagerName
      value: string
      description: Required parameter for the job_definitions resource.
    - name: properties
      value: object
      description: |
        JobDefinition properties.
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

This method deletes the given job definition.

```sql
DELETE FROM azure.hybrid_data_manager.job_definitions
WHERE dataServiceName = '{{ dataServiceName }}' --required
AND jobDefinitionName = '{{ jobDefinitionName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND dataManagerName = '{{ dataManagerName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="run"
    values={[
        { label: 'run', value: 'run' }
    ]}
>
<TabItem value="run">

This method runs a job instance of the given job definition.

```sql
EXEC azure.hybrid_data_manager.job_definitions.run 
@dataServiceName='{{ dataServiceName }}' --required, 
@jobDefinitionName='{{ jobDefinitionName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@dataManagerName='{{ dataManagerName }}' --required 
@@json=
'{
"userConfirmation": "{{ userConfirmation }}", 
"dataServiceInput": "{{ dataServiceInput }}", 
"customerSecrets": "{{ customerSecrets }}"
}'
;
```
</TabItem>
</Tabs>
