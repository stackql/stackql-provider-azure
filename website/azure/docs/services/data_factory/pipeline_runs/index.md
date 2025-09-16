--- 
title: pipeline_runs
hide_title: false
hide_table_of_contents: false
keywords:
  - pipeline_runs
  - data_factory
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

Creates, updates, deletes, gets or lists a <code>pipeline_runs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>pipeline_runs</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_factory.pipeline_runs" /></td></tr>
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

OK.

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
    <td><CopyableCode code="durationInMs" /></td>
    <td><code>integer</code></td>
    <td>The duration of a pipeline run.</td>
</tr>
<tr>
    <td><CopyableCode code="invokedBy" /></td>
    <td><code>object</code></td>
    <td>Entity that started the pipeline run.</td>
</tr>
<tr>
    <td><CopyableCode code="isLatest" /></td>
    <td><code>boolean</code></td>
    <td>Indicates if the recovered pipeline run is the latest in its group.</td>
</tr>
<tr>
    <td><CopyableCode code="lastUpdated" /></td>
    <td><code>string (date-time)</code></td>
    <td>The last updated timestamp for the pipeline run event in ISO8601 format.</td>
</tr>
<tr>
    <td><CopyableCode code="message" /></td>
    <td><code>string</code></td>
    <td>The message from a pipeline run.</td>
</tr>
<tr>
    <td><CopyableCode code="parameters" /></td>
    <td><code>object</code></td>
    <td>The full or partial list of parameter name, value pair used in the pipeline run.</td>
</tr>
<tr>
    <td><CopyableCode code="pipelineName" /></td>
    <td><code>string</code></td>
    <td>The pipeline name.</td>
</tr>
<tr>
    <td><CopyableCode code="runDimensions" /></td>
    <td><code>object</code></td>
    <td>Run dimensions emitted by Pipeline run.</td>
</tr>
<tr>
    <td><CopyableCode code="runEnd" /></td>
    <td><code>string (date-time)</code></td>
    <td>The end time of a pipeline run in ISO8601 format.</td>
</tr>
<tr>
    <td><CopyableCode code="runGroupId" /></td>
    <td><code>string</code></td>
    <td>Identifier that correlates all the recovery runs of a pipeline run.</td>
</tr>
<tr>
    <td><CopyableCode code="runId" /></td>
    <td><code>string</code></td>
    <td>Identifier of a run.</td>
</tr>
<tr>
    <td><CopyableCode code="runStart" /></td>
    <td><code>string (date-time)</code></td>
    <td>The start time of a pipeline run in ISO8601 format.</td>
</tr>
<tr>
    <td><CopyableCode code="status" /></td>
    <td><code>string</code></td>
    <td>The status of a pipeline run. Possible values: Queued, InProgress, Succeeded, Failed, Canceling, Cancelled</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a>, <a href="#parameter-runId"><code>runId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Get a pipeline run by its run ID.</td>
</tr>
<tr>
    <td><a href="#query_by_factory"><CopyableCode code="query_by_factory" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a>, <a href="#parameter-lastUpdatedAfter"><code>lastUpdatedAfter</code></a>, <a href="#parameter-lastUpdatedBefore"><code>lastUpdatedBefore</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Query pipeline runs in the factory based on input filter conditions.</td>
</tr>
<tr>
    <td><a href="#cancel"><CopyableCode code="cancel" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a>, <a href="#parameter-runId"><code>runId</code></a></td>
    <td><a href="#parameter-isRecursive"><code>isRecursive</code></a>, <a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Cancel a pipeline run by its run ID.</td>
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
<tr id="parameter-factoryName">
    <td><CopyableCode code="factoryName" /></td>
    <td><code>string</code></td>
    <td>The factory name.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The resource group name.</td>
</tr>
<tr id="parameter-runId">
    <td><CopyableCode code="runId" /></td>
    <td><code>string</code></td>
    <td>The pipeline run identifier.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription identifier.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>The API version.</td>
</tr>
<tr id="parameter-isRecursive">
    <td><CopyableCode code="isRecursive" /></td>
    <td><code>boolean</code></td>
    <td>If true, cancel all the Child pipelines that are triggered by the current pipeline.</td>
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

Get a pipeline run by its run ID.

```sql
SELECT
durationInMs,
invokedBy,
isLatest,
lastUpdated,
message,
parameters,
pipelineName,
runDimensions,
runEnd,
runGroupId,
runId,
runStart,
status
FROM azure.data_factory.pipeline_runs
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND factoryName = '{{ factoryName }}' -- required
AND runId = '{{ runId }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="query_by_factory"
    values={[
        { label: 'query_by_factory', value: 'query_by_factory' },
        { label: 'cancel', value: 'cancel' }
    ]}
>
<TabItem value="query_by_factory">

Query pipeline runs in the factory based on input filter conditions.

```sql
EXEC azure.data_factory.pipeline_runs.query_by_factory 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@factoryName='{{ factoryName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"continuationToken": "{{ continuationToken }}", 
"lastUpdatedAfter": "{{ lastUpdatedAfter }}", 
"lastUpdatedBefore": "{{ lastUpdatedBefore }}", 
"filters": "{{ filters }}", 
"orderBy": "{{ orderBy }}"
}'
;
```
</TabItem>
<TabItem value="cancel">

Cancel a pipeline run by its run ID.

```sql
EXEC azure.data_factory.pipeline_runs.cancel 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@factoryName='{{ factoryName }}' --required, 
@runId='{{ runId }}' --required, 
@isRecursive={{ isRecursive }}, 
@api-version='{{ api-version }}'
;
```
</TabItem>
</Tabs>
