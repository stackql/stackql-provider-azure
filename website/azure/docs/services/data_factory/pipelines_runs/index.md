--- 
title: pipelines_runs
hide_title: false
hide_table_of_contents: false
keywords:
  - pipelines_runs
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

Creates, updates, deletes, gets or lists a <code>pipelines_runs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>pipelines_runs</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_factory.pipelines_runs" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

`SELECT` not supported for this resource, use `SHOW METHODS` to view available operations for the resource.


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
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a>, <a href="#parameter-pipelineName"><code>pipelineName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-referencePipelineRunId"><code>referencePipelineRunId</code></a>, <a href="#parameter-isRecovery"><code>isRecovery</code></a>, <a href="#parameter-startActivityName"><code>startActivityName</code></a>, <a href="#parameter-startFromFailure"><code>startFromFailure</code></a></td>
    <td>Creates a run of a pipeline.</td>
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
<tr id="parameter-pipelineName">
    <td><CopyableCode code="pipelineName" /></td>
    <td><code>string</code></td>
    <td>The pipeline name.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The resource group name.</td>
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
<tr id="parameter-isRecovery">
    <td><CopyableCode code="isRecovery" /></td>
    <td><code>boolean</code></td>
    <td>Recovery mode flag. If recovery mode is set to true, the specified referenced pipeline run and the new run will be grouped under the same groupId.</td>
</tr>
<tr id="parameter-referencePipelineRunId">
    <td><CopyableCode code="referencePipelineRunId" /></td>
    <td><code>string</code></td>
    <td>The pipeline run identifier. If run ID is specified the parameters of the specified run will be used to create a new run.</td>
</tr>
<tr id="parameter-startActivityName">
    <td><CopyableCode code="startActivityName" /></td>
    <td><code>string</code></td>
    <td>In recovery mode, the rerun will start from this activity. If not specified, all activities will run.</td>
</tr>
<tr id="parameter-startFromFailure">
    <td><CopyableCode code="startFromFailure" /></td>
    <td><code>boolean</code></td>
    <td>In recovery mode, if set to true, the rerun will start from failed activities. The property will be used only if startActivityName is not specified.</td>
</tr>
</tbody>
</table>

## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

Creates a run of a pipeline.

```sql
INSERT INTO azure.data_factory.pipelines_runs (
subscriptionId,
resourceGroupName,
factoryName,
pipelineName,
api-version,
referencePipelineRunId,
isRecovery,
startActivityName,
startFromFailure
)
SELECT 
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ factoryName }}',
'{{ pipelineName }}',
'{{ api-version }}',
'{{ referencePipelineRunId }}',
'{{ isRecovery }}',
'{{ startActivityName }}',
'{{ startFromFailure }}'
RETURNING
runId
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: pipelines_runs
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the pipelines_runs resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the pipelines_runs resource.
    - name: factoryName
      value: string
      description: Required parameter for the pipelines_runs resource.
    - name: pipelineName
      value: string
      description: Required parameter for the pipelines_runs resource.
    - name: api-version
      value: string
      description: The API version.
    - name: referencePipelineRunId
      value: string
      description: The pipeline run identifier. If run ID is specified the parameters of the specified run will be used to create a new run.
    - name: isRecovery
      value: boolean
      description: Recovery mode flag. If recovery mode is set to true, the specified referenced pipeline run and the new run will be grouped under the same groupId.
    - name: startActivityName
      value: string
      description: In recovery mode, the rerun will start from this activity. If not specified, all activities will run.
    - name: startFromFailure
      value: boolean
      description: In recovery mode, if set to true, the rerun will start from failed activities. The property will be used only if startActivityName is not specified.
```
</TabItem>
</Tabs>
