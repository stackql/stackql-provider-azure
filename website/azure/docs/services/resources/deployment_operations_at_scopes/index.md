--- 
title: deployment_operations_at_scopes
hide_title: false
hide_table_of_contents: false
keywords:
  - deployment_operations_at_scopes
  - resources
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

Creates, updates, deletes, gets or lists a <code>deployment_operations_at_scopes</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>deployment_operations_at_scopes</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.resources.deployment_operations_at_scopes" /></td></tr>
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

OK - Returns information about the deployment operation.

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
    <td>Full deployment operation ID.</td>
</tr>
<tr>
    <td><CopyableCode code="operationId" /></td>
    <td><code>string</code></td>
    <td>Deployment operation ID.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Deployment properties.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

OK - Return an array of deployment operations.

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
    <td>Full deployment operation ID.</td>
</tr>
<tr>
    <td><CopyableCode code="operationId" /></td>
    <td><code>string</code></td>
    <td>Deployment operation ID.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Deployment properties.</td>
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
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-deploymentName"><code>deploymentName</code></a>, <a href="#parameter-operationId"><code>operationId</code></a></td>
    <td></td>
    <td>Gets a deployments operation.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-scope"><code>scope</code></a>, <a href="#parameter-deploymentName"><code>deploymentName</code></a></td>
    <td><a href="#parameter-$top"><code>$top</code></a></td>
    <td>Gets all deployments operations for a deployment.</td>
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
<tr id="parameter-deploymentName">
    <td><CopyableCode code="deploymentName" /></td>
    <td><code>string</code></td>
    <td>The name of the deployment.</td>
</tr>
<tr id="parameter-operationId">
    <td><CopyableCode code="operationId" /></td>
    <td><code>string</code></td>
    <td>The ID of the operation to get.</td>
</tr>
<tr id="parameter-scope">
    <td><CopyableCode code="scope" /></td>
    <td><code>string</code></td>
    <td>The scope at which the operation is performed.</td>
</tr>
<tr id="parameter-$top">
    <td><CopyableCode code="$top" /></td>
    <td><code>integer (int32)</code></td>
    <td>The number of results to return.</td>
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

Gets a deployments operation.

```sql
SELECT
id,
operationId,
properties
FROM azure.resources.deployment_operations_at_scopes
WHERE scope = '{{ scope }}' -- required
AND deploymentName = '{{ deploymentName }}' -- required
AND operationId = '{{ operationId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Gets all deployments operations for a deployment.

```sql
SELECT
id,
operationId,
properties
FROM azure.resources.deployment_operations_at_scopes
WHERE scope = '{{ scope }}' -- required
AND deploymentName = '{{ deploymentName }}' -- required
AND $top = '{{ $top }}'
;
```
</TabItem>
</Tabs>
