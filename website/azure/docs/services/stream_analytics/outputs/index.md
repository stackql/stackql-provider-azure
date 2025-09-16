--- 
title: outputs
hide_title: false
hide_table_of_contents: false
keywords:
  - outputs
  - stream_analytics
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

Creates, updates, deletes, gets or lists an <code>outputs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>outputs</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.stream_analytics.outputs" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_streaming_job', value: 'list_by_streaming_job' }
    ]}
>
<TabItem value="get">

Successfully retrieved the specified output.

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
    <td>Resource Id</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource name</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties that are associated with an output. Required on PUT (CreateOrReplace) requests.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_streaming_job">

Successfully listed the outputs under the specified streaming job.

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
    <td>Resource Id</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Resource name</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The properties that are associated with an output. Required on PUT (CreateOrReplace) requests.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-jobName"><code>jobName</code></a>, <a href="#parameter-outputName"><code>outputName</code></a></td>
    <td></td>
    <td>Gets details about the specified output.</td>
</tr>
<tr>
    <td><a href="#list_by_streaming_job"><CopyableCode code="list_by_streaming_job" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-jobName"><code>jobName</code></a></td>
    <td><a href="#parameter-$select"><code>$select</code></a></td>
    <td>Lists all of the outputs under the specified streaming job.</td>
</tr>
<tr>
    <td><a href="#create_or_replace"><CopyableCode code="create_or_replace" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-jobName"><code>jobName</code></a>, <a href="#parameter-outputName"><code>outputName</code></a></td>
    <td><a href="#parameter-If-Match"><code>If-Match</code></a>, <a href="#parameter-If-None-Match"><code>If-None-Match</code></a></td>
    <td>Creates an output or replaces an already existing output under an existing streaming job.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-jobName"><code>jobName</code></a>, <a href="#parameter-outputName"><code>outputName</code></a></td>
    <td><a href="#parameter-If-Match"><code>If-Match</code></a></td>
    <td>Updates an existing output under an existing streaming job. This can be used to partially update (ie. update one or two properties) an output without affecting the rest the job or output definition.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-jobName"><code>jobName</code></a>, <a href="#parameter-outputName"><code>outputName</code></a></td>
    <td></td>
    <td>Deletes an output from the streaming job.</td>
</tr>
<tr>
    <td><a href="#test"><CopyableCode code="test" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-jobName"><code>jobName</code></a>, <a href="#parameter-outputName"><code>outputName</code></a></td>
    <td></td>
    <td>Tests whether an output’s datasource is reachable and usable by the Azure Stream Analytics service.</td>
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
    <td>The name of the streaming job.</td>
</tr>
<tr id="parameter-outputName">
    <td><CopyableCode code="outputName" /></td>
    <td><code>string</code></td>
    <td>The name of the output.</td>
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
<tr id="parameter-$select">
    <td><CopyableCode code="$select" /></td>
    <td><code>string</code></td>
    <td>The $select OData query parameter. This is a comma-separated list of structural properties to include in the response, or "*" to include all properties. By default, all properties are returned except diagnostics. Currently only accepts '*' as a valid value.</td>
</tr>
<tr id="parameter-If-Match">
    <td><CopyableCode code="If-Match" /></td>
    <td><code>string</code></td>
    <td>The ETag of the output. Omit this value to always overwrite the current output. Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes.</td>
</tr>
<tr id="parameter-If-None-Match">
    <td><CopyableCode code="If-None-Match" /></td>
    <td><code>string</code></td>
    <td>Set to '*' to allow a new output to be created, but to prevent updating an existing output. Other values will result in a 412 Pre-condition Failed response.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_streaming_job', value: 'list_by_streaming_job' }
    ]}
>
<TabItem value="get">

Gets details about the specified output.

```sql
SELECT
id,
name,
properties,
type
FROM azure.stream_analytics.outputs
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND jobName = '{{ jobName }}' -- required
AND outputName = '{{ outputName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_streaming_job">

Lists all of the outputs under the specified streaming job.

```sql
SELECT
id,
name,
properties,
type
FROM azure.stream_analytics.outputs
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND jobName = '{{ jobName }}' -- required
AND $select = '{{ $select }}'
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create_or_replace"
    values={[
        { label: 'create_or_replace', value: 'create_or_replace' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_or_replace">

Creates an output or replaces an already existing output under an existing streaming job.

```sql
INSERT INTO azure.stream_analytics.outputs (
data__name,
data__properties,
subscriptionId,
resourceGroupName,
jobName,
outputName,
If-Match,
If-None-Match
)
SELECT 
'{{ name }}',
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ jobName }}',
'{{ outputName }}',
'{{ If-Match }}',
'{{ If-None-Match }}'
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
- name: outputs
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the outputs resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the outputs resource.
    - name: jobName
      value: string
      description: Required parameter for the outputs resource.
    - name: outputName
      value: string
      description: Required parameter for the outputs resource.
    - name: name
      value: string
      description: |
        Resource name
    - name: properties
      value: object
      description: |
        The properties that are associated with an output. Required on PUT (CreateOrReplace) requests.
    - name: If-Match
      value: string
      description: The ETag of the output. Omit this value to always overwrite the current output. Specify the last-seen ETag value to prevent accidentally overwriting concurrent changes.
    - name: If-None-Match
      value: string
      description: Set to '*' to allow a new output to be created, but to prevent updating an existing output. Other values will result in a 412 Pre-condition Failed response.
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

Updates an existing output under an existing streaming job. This can be used to partially update (ie. update one or two properties) an output without affecting the rest the job or output definition.

```sql
UPDATE azure.stream_analytics.outputs
SET 
data__name = '{{ name }}',
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND jobName = '{{ jobName }}' --required
AND outputName = '{{ outputName }}' --required
AND If-Match = '{{ If-Match}}'
RETURNING
id,
name,
properties,
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

Deletes an output from the streaming job.

```sql
DELETE FROM azure.stream_analytics.outputs
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND jobName = '{{ jobName }}' --required
AND outputName = '{{ outputName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="test"
    values={[
        { label: 'test', value: 'test' }
    ]}
>
<TabItem value="test">

Tests whether an output’s datasource is reachable and usable by the Azure Stream Analytics service.

```sql
EXEC azure.stream_analytics.outputs.test 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@jobName='{{ jobName }}' --required, 
@outputName='{{ outputName }}' --required 
@@json=
'{
"name": "{{ name }}", 
"properties": "{{ properties }}"
}'
;
```
</TabItem>
</Tabs>
