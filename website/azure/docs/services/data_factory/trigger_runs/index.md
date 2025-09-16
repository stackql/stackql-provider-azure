--- 
title: trigger_runs
hide_title: false
hide_table_of_contents: false
keywords:
  - trigger_runs
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

Creates, updates, deletes, gets or lists a <code>trigger_runs</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>trigger_runs</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_factory.trigger_runs" /></td></tr>
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
    <td><a href="#rerun"><CopyableCode code="rerun" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a>, <a href="#parameter-triggerName"><code>triggerName</code></a>, <a href="#parameter-runId"><code>runId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Rerun single trigger instance by runId.</td>
</tr>
<tr>
    <td><a href="#cancel"><CopyableCode code="cancel" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a>, <a href="#parameter-triggerName"><code>triggerName</code></a>, <a href="#parameter-runId"><code>runId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Cancel a single trigger instance by runId.</td>
</tr>
<tr>
    <td><a href="#query_by_factory"><CopyableCode code="query_by_factory" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a>, <a href="#parameter-lastUpdatedAfter"><code>lastUpdatedAfter</code></a>, <a href="#parameter-lastUpdatedBefore"><code>lastUpdatedBefore</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Query trigger runs.</td>
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
<tr id="parameter-triggerName">
    <td><CopyableCode code="triggerName" /></td>
    <td><code>string</code></td>
    <td>The trigger name.</td>
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
    defaultValue="rerun"
    values={[
        { label: 'rerun', value: 'rerun' },
        { label: 'cancel', value: 'cancel' },
        { label: 'query_by_factory', value: 'query_by_factory' }
    ]}
>
<TabItem value="rerun">

Rerun single trigger instance by runId.

```sql
EXEC azure.data_factory.trigger_runs.rerun 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@factoryName='{{ factoryName }}' --required, 
@triggerName='{{ triggerName }}' --required, 
@runId='{{ runId }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="cancel">

Cancel a single trigger instance by runId.

```sql
EXEC azure.data_factory.trigger_runs.cancel 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@factoryName='{{ factoryName }}' --required, 
@triggerName='{{ triggerName }}' --required, 
@runId='{{ runId }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="query_by_factory">

Query trigger runs.

```sql
EXEC azure.data_factory.trigger_runs.query_by_factory 
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
</Tabs>
