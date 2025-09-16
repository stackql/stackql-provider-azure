--- 
title: pipeline_topologies
hide_title: false
hide_table_of_contents: false
keywords:
  - pipeline_topologies
  - video_analyzer
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

Creates, updates, deletes, gets or lists a <code>pipeline_topologies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>pipeline_topologies</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.video_analyzer.pipeline_topologies" /></td></tr>
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

Pipeline topology was retrieved successfully.

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
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Topology kind.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The resource properties.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>Describes the properties of a SKU.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

Pipeline topologies were successfully retrieved.

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
    <td><CopyableCode code="kind" /></td>
    <td><code>string</code></td>
    <td>Topology kind.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The resource properties.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>Describes the properties of a SKU.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-pipelineTopologyName"><code>pipelineTopologyName</code></a></td>
    <td></td>
    <td>Retrieves a specific pipeline topology by name. If a topology with that name has been previously created, the call will return the JSON representation of that topology.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a></td>
    <td><a href="#parameter-$filter"><code>$filter</code></a>, <a href="#parameter-$top"><code>$top</code></a></td>
    <td>Retrieves a list of pipeline topologies that have been added to the account, if any, along with their JSON representation.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-pipelineTopologyName"><code>pipelineTopologyName</code></a>, <a href="#parameter-data__kind"><code>data__kind</code></a>, <a href="#parameter-data__sku"><code>data__sku</code></a></td>
    <td></td>
    <td>Creates a new pipeline topology or updates an existing one, with the given name. A pipeline topology describes the processing steps to be applied when processing content for a particular outcome. The topology should be defined according to the scenario to be achieved and can be reused across many pipeline instances which share the same processing characteristics.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-pipelineTopologyName"><code>pipelineTopologyName</code></a></td>
    <td></td>
    <td>Updates an existing pipeline topology with the given name. If the associated live pipelines or pipeline jobs are in active or processing state, respectively, then only the description can be updated. Else, the properties that can be updated include: description, parameter declarations, sources, processors, and sinks.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-pipelineTopologyName"><code>pipelineTopologyName</code></a></td>
    <td></td>
    <td>Deletes a pipeline topology with the given name. This method should be called after all instances of the topology have been stopped and deleted.</td>
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
    <td>The Azure Video Analyzer account name.</td>
</tr>
<tr id="parameter-pipelineTopologyName">
    <td><CopyableCode code="pipelineTopologyName" /></td>
    <td><code>string</code></td>
    <td>Pipeline topology unique identifier.</td>
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
<tr id="parameter-$filter">
    <td><CopyableCode code="$filter" /></td>
    <td><code>string</code></td>
    <td>Restricts the set of items returned.</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int32)</code></td>
    <td>Specifies a non-negative integer n that limits the number of items returned from a collection. The service returns the number of available items up to but not greater than the specified value n.</td>
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

Retrieves a specific pipeline topology by name. If a topology with that name has been previously created, the call will return the JSON representation of that topology.

```sql
SELECT
kind,
properties,
sku
FROM azure.video_analyzer.pipeline_topologies
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND pipelineTopologyName = '{{ pipelineTopologyName }}' -- required
;
```
</TabItem>
<TabItem value="list">

Retrieves a list of pipeline topologies that have been added to the account, if any, along with their JSON representation.

```sql
SELECT
kind,
properties,
sku
FROM azure.video_analyzer.pipeline_topologies
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND $filter = '{{ $filter }}'
AND $top = '{{ $top }}'
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

Creates a new pipeline topology or updates an existing one, with the given name. A pipeline topology describes the processing steps to be applied when processing content for a particular outcome. The topology should be defined according to the scenario to be achieved and can be reused across many pipeline instances which share the same processing characteristics.

```sql
INSERT INTO azure.video_analyzer.pipeline_topologies (
data__properties,
data__kind,
data__sku,
subscriptionId,
resourceGroupName,
accountName,
pipelineTopologyName
)
SELECT 
'{{ properties }}',
'{{ kind }}' /* required */,
'{{ sku }}' /* required */,
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ accountName }}',
'{{ pipelineTopologyName }}'
RETURNING
kind,
properties,
sku
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: pipeline_topologies
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the pipeline_topologies resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the pipeline_topologies resource.
    - name: accountName
      value: string
      description: Required parameter for the pipeline_topologies resource.
    - name: pipelineTopologyName
      value: string
      description: Required parameter for the pipeline_topologies resource.
    - name: properties
      value: object
      description: |
        The resource properties.
    - name: kind
      value: string
      description: |
        Topology kind.
      valid_values: ['Live', 'Batch']
    - name: sku
      value: object
      description: |
        Describes the properties of a SKU.
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

Updates an existing pipeline topology with the given name. If the associated live pipelines or pipeline jobs are in active or processing state, respectively, then only the description can be updated. Else, the properties that can be updated include: description, parameter declarations, sources, processors, and sinks.

```sql
UPDATE azure.video_analyzer.pipeline_topologies
SET 
data__properties = '{{ properties }}',
data__kind = '{{ kind }}',
data__sku = '{{ sku }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND accountName = '{{ accountName }}' --required
AND pipelineTopologyName = '{{ pipelineTopologyName }}' --required
RETURNING
kind,
properties,
sku;
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

Deletes a pipeline topology with the given name. This method should be called after all instances of the topology have been stopped and deleted.

```sql
DELETE FROM azure.video_analyzer.pipeline_topologies
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND accountName = '{{ accountName }}' --required
AND pipelineTopologyName = '{{ pipelineTopologyName }}' --required
;
```
</TabItem>
</Tabs>
