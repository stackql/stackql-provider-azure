--- 
title: activity_runs
hide_title: false
hide_table_of_contents: false
keywords:
  - activity_runs
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

Creates, updates, deletes, gets or lists an <code>activity_runs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>activity_runs</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_factory.activity_runs" /></td></tr>
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
    <td><a href="#query_by_pipeline_run"><CopyableCode code="query_by_pipeline_run" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a>, <a href="#parameter-runId"><code>runId</code></a>, <a href="#parameter-lastUpdatedAfter"><code>lastUpdatedAfter</code></a>, <a href="#parameter-lastUpdatedBefore"><code>lastUpdatedBefore</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Query activity runs based on input filter conditions.</td>
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
</tbody>
</table>

## Lifecycle Methods

<Tabs
    defaultValue="query_by_pipeline_run"
    values={[
        { label: 'query_by_pipeline_run', value: 'query_by_pipeline_run' }
    ]}
>
<TabItem value="query_by_pipeline_run">

Query activity runs based on input filter conditions.

```sql
EXEC azure.data_factory.activity_runs.query_by_pipeline_run 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@factoryName='{{ factoryName }}' --required, 
@runId='{{ runId }}' --required, 
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
</Tabs>
