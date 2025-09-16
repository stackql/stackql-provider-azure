--- 
title: workspace_api_operation_policies
hide_title: false
hide_table_of_contents: false
keywords:
  - workspace_api_operation_policies
  - api_management
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

Creates, updates, deletes, gets or lists a <code>workspace_api_operation_policies</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>workspace_api_operation_policies</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.workspace_api_operation_policies" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_operation', value: 'list_by_operation' }
    ]}
>
<TabItem value="get">

Api Operation Policy information.

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
    <td>Properties of the Policy.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_operation">

Api Operations Policy Collection.

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
    <td>Properties of the Policy.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-workspaceId"><code>workspaceId</code></a>, <a href="#parameter-apiId"><code>apiId</code></a>, <a href="#parameter-operationId"><code>operationId</code></a>, <a href="#parameter-policyId"><code>policyId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-format"><code>format</code></a></td>
    <td>Get the policy configuration at the API Operation level.</td>
</tr>
<tr>
    <td><a href="#list_by_operation"><CopyableCode code="list_by_operation" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-workspaceId"><code>workspaceId</code></a>, <a href="#parameter-apiId"><code>apiId</code></a>, <a href="#parameter-operationId"><code>operationId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Get the list of policy configuration at the API Operation level.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-workspaceId"><code>workspaceId</code></a>, <a href="#parameter-apiId"><code>apiId</code></a>, <a href="#parameter-operationId"><code>operationId</code></a>, <a href="#parameter-policyId"><code>policyId</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-If-Match"><code>If-Match</code></a></td>
    <td>Creates or updates policy configuration for the API Operation level.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-workspaceId"><code>workspaceId</code></a>, <a href="#parameter-apiId"><code>apiId</code></a>, <a href="#parameter-operationId"><code>operationId</code></a>, <a href="#parameter-policyId"><code>policyId</code></a>, <a href="#parameter-If-Match"><code>If-Match</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes the policy configuration at the Api Operation.</td>
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
<tr id="parameter-If-Match">
    <td><CopyableCode code="If-Match" /></td>
    <td><code>string</code></td>
    <td>ETag of the Entity. ETag should match the current entity state from the header response of the GET request or it should be * for unconditional update.</td>
</tr>
<tr id="parameter-apiId">
    <td><CopyableCode code="apiId" /></td>
    <td><code>string</code></td>
    <td>API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.</td>
</tr>
<tr id="parameter-operationId">
    <td><CopyableCode code="operationId" /></td>
    <td><code>string</code></td>
    <td>The ID of an ongoing async operation.</td>
</tr>
<tr id="parameter-policyId">
    <td><CopyableCode code="policyId" /></td>
    <td><code>string</code></td>
    <td>The identifier of the Policy.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-serviceName">
    <td><CopyableCode code="serviceName" /></td>
    <td><code>string</code></td>
    <td>The name of the API Management service.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The ID of the target subscription.</td>
</tr>
<tr id="parameter-workspaceId">
    <td><CopyableCode code="workspaceId" /></td>
    <td><code>string</code></td>
    <td>Workspace identifier. Must be unique in the current API Management service instance.</td>
</tr>
<tr id="parameter-If-Match">
    <td><CopyableCode code="If-Match" /></td>
    <td><code>string</code></td>
    <td>ETag of the Entity. Not required when creating an entity, but required when updating an entity.</td>
</tr>
<tr id="parameter-format">
    <td><CopyableCode code="format" /></td>
    <td><code>string</code></td>
    <td>Policy Export Format.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_operation', value: 'list_by_operation' }
    ]}
>
<TabItem value="get">

Get the policy configuration at the API Operation level.

```sql
SELECT
properties
FROM azure.api_management.workspace_api_operation_policies
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serviceName = '{{ serviceName }}' -- required
AND workspaceId = '{{ workspaceId }}' -- required
AND apiId = '{{ apiId }}' -- required
AND operationId = '{{ operationId }}' -- required
AND policyId = '{{ policyId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND format = '{{ format }}'
;
```
</TabItem>
<TabItem value="list_by_operation">

Get the list of policy configuration at the API Operation level.

```sql
SELECT
properties
FROM azure.api_management.workspace_api_operation_policies
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serviceName = '{{ serviceName }}' -- required
AND workspaceId = '{{ workspaceId }}' -- required
AND apiId = '{{ apiId }}' -- required
AND operationId = '{{ operationId }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
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

Creates or updates policy configuration for the API Operation level.

```sql
INSERT INTO azure.api_management.workspace_api_operation_policies (
data__properties,
resourceGroupName,
serviceName,
workspaceId,
apiId,
operationId,
policyId,
subscriptionId,
If-Match
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ serviceName }}',
'{{ workspaceId }}',
'{{ apiId }}',
'{{ operationId }}',
'{{ policyId }}',
'{{ subscriptionId }}',
'{{ If-Match }}'
RETURNING
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: workspace_api_operation_policies
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the workspace_api_operation_policies resource.
    - name: serviceName
      value: string
      description: Required parameter for the workspace_api_operation_policies resource.
    - name: workspaceId
      value: string
      description: Required parameter for the workspace_api_operation_policies resource.
    - name: apiId
      value: string
      description: Required parameter for the workspace_api_operation_policies resource.
    - name: operationId
      value: string
      description: Required parameter for the workspace_api_operation_policies resource.
    - name: policyId
      value: string
      description: Required parameter for the workspace_api_operation_policies resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the workspace_api_operation_policies resource.
    - name: properties
      value: object
      description: |
        Properties of the Policy.
    - name: If-Match
      value: string
      description: ETag of the Entity. Not required when creating an entity, but required when updating an entity.
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

Deletes the policy configuration at the Api Operation.

```sql
DELETE FROM azure.api_management.workspace_api_operation_policies
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND serviceName = '{{ serviceName }}' --required
AND workspaceId = '{{ workspaceId }}' --required
AND apiId = '{{ apiId }}' --required
AND operationId = '{{ operationId }}' --required
AND policyId = '{{ policyId }}' --required
AND If-Match = '{{ If-Match }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
