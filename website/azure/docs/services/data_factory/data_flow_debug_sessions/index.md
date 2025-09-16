--- 
title: data_flow_debug_sessions
hide_title: false
hide_table_of_contents: false
keywords:
  - data_flow_debug_sessions
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

Creates, updates, deletes, gets or lists a <code>data_flow_debug_sessions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>data_flow_debug_sessions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.data_factory.data_flow_debug_sessions" /></td></tr>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Creates a data flow debug session.</td>
</tr>
<tr>
    <td><a href="#query_by_factory"><CopyableCode code="query_by_factory" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Query all active data flow debug sessions.</td>
</tr>
<tr>
    <td><a href="#add_data_flow"><CopyableCode code="add_data_flow" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Add a data flow into debug session.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Deletes a data flow debug session.</td>
</tr>
<tr>
    <td><a href="#execute_command"><CopyableCode code="execute_command" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-factoryName"><code>factoryName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Execute a data flow debug command.</td>
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

## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

Creates a data flow debug session.

```sql
INSERT INTO azure.data_factory.data_flow_debug_sessions (
data__computeType,
data__coreCount,
data__timeToLive,
data__integrationRuntime,
subscriptionId,
resourceGroupName,
factoryName,
api-version
)
SELECT 
'{{ computeType }}',
{{ coreCount }},
{{ timeToLive }},
'{{ integrationRuntime }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ factoryName }}',
'{{ api-version }}'
RETURNING
sessionId,
status
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: data_flow_debug_sessions
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the data_flow_debug_sessions resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the data_flow_debug_sessions resource.
    - name: factoryName
      value: string
      description: Required parameter for the data_flow_debug_sessions resource.
    - name: computeType
      value: string
      description: |
        Compute type of the cluster. The value will be overwritten by the same setting in integration runtime if provided.
    - name: coreCount
      value: integer
      description: |
        Core count of the cluster. The value will be overwritten by the same setting in integration runtime if provided.
    - name: timeToLive
      value: integer
      description: |
        Time to live setting of the cluster in minutes.
    - name: integrationRuntime
      value: object
      description: |
        Set to use integration runtime setting for data flow debug session.
    - name: api-version
      value: string
      description: The API version.
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="query_by_factory"
    values={[
        { label: 'query_by_factory', value: 'query_by_factory' },
        { label: 'add_data_flow', value: 'add_data_flow' },
        { label: 'delete', value: 'delete' },
        { label: 'execute_command', value: 'execute_command' }
    ]}
>
<TabItem value="query_by_factory">

Query all active data flow debug sessions.

```sql
EXEC azure.data_factory.data_flow_debug_sessions.query_by_factory 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@factoryName='{{ factoryName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="add_data_flow">

Add a data flow into debug session.

```sql
EXEC azure.data_factory.data_flow_debug_sessions.add_data_flow 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@factoryName='{{ factoryName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"sessionId": "{{ sessionId }}", 
"dataFlow": "{{ dataFlow }}", 
"dataFlows": "{{ dataFlows }}", 
"datasets": "{{ datasets }}", 
"linkedServices": "{{ linkedServices }}", 
"staging": "{{ staging }}", 
"debugSettings": "{{ debugSettings }}"
}'
;
```
</TabItem>
<TabItem value="delete">

Deletes a data flow debug session.

```sql
EXEC azure.data_factory.data_flow_debug_sessions.delete 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@factoryName='{{ factoryName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"sessionId": "{{ sessionId }}"
}'
;
```
</TabItem>
<TabItem value="execute_command">

Execute a data flow debug command.

```sql
EXEC azure.data_factory.data_flow_debug_sessions.execute_command 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@factoryName='{{ factoryName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"sessionId": "{{ sessionId }}", 
"command": "{{ command }}", 
"commandPayload": "{{ commandPayload }}"
}'
;
```
</TabItem>
</Tabs>
