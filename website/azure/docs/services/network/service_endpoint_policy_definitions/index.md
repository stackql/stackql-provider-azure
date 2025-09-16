--- 
title: service_endpoint_policy_definitions
hide_title: false
hide_table_of_contents: false
keywords:
  - service_endpoint_policy_definitions
  - network
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

Creates, updates, deletes, gets or lists a <code>service_endpoint_policy_definitions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>service_endpoint_policy_definitions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.network.service_endpoint_policy_definitions" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' }
    ]}
>
<TabItem value="get">

Request successful. The operation returns the resulting ServiceEndpointPolicyDefinition resource.

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
    <td>Resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource that is unique within a resource group. This name can be used to access the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the service endpoint policy definition.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group">

Request successful. The operation returns a list of ServiceEndpointPolicyDefinition resources.

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
    <td>Resource ID.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource that is unique within a resource group. This name can be used to access the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>A unique read-only string that changes whenever the resource is updated.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the service endpoint policy definition.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceEndpointPolicyName"><code>serviceEndpointPolicyName</code></a>, <a href="#parameter-serviceEndpointPolicyDefinitionName"><code>serviceEndpointPolicyDefinitionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Get the specified service endpoint policy definitions from service endpoint policy.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceEndpointPolicyName"><code>serviceEndpointPolicyName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets all service endpoint policy definitions in a service end point policy.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceEndpointPolicyName"><code>serviceEndpointPolicyName</code></a>, <a href="#parameter-serviceEndpointPolicyDefinitionName"><code>serviceEndpointPolicyDefinitionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates or updates a service endpoint policy definition in the specified service endpoint policy.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceEndpointPolicyName"><code>serviceEndpointPolicyName</code></a>, <a href="#parameter-serviceEndpointPolicyDefinitionName"><code>serviceEndpointPolicyDefinitionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes the specified ServiceEndpoint policy definitions.</td>
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
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group.</td>
</tr>
<tr id="parameter-serviceEndpointPolicyDefinitionName">
    <td><CopyableCode code="serviceEndpointPolicyDefinitionName" /></td>
    <td><code>string</code></td>
    <td>The name of the service endpoint policy definition.</td>
</tr>
<tr id="parameter-serviceEndpointPolicyName">
    <td><CopyableCode code="serviceEndpointPolicyName" /></td>
    <td><code>string</code></td>
    <td>The name of the Service Endpoint Policy.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string (uuid)</code></td>
    <td>The ID of the target subscription. The value must be an UUID.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' }
    ]}
>
<TabItem value="get">

Get the specified service endpoint policy definitions from service endpoint policy.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.network.service_endpoint_policy_definitions
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serviceEndpointPolicyName = '{{ serviceEndpointPolicyName }}' -- required
AND serviceEndpointPolicyDefinitionName = '{{ serviceEndpointPolicyDefinitionName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_resource_group">

Gets all service endpoint policy definitions in a service end point policy.

```sql
SELECT
id,
name,
etag,
properties,
type
FROM azure.network.service_endpoint_policy_definitions
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serviceEndpointPolicyName = '{{ serviceEndpointPolicyName }}' -- required
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

Creates or updates a service endpoint policy definition in the specified service endpoint policy.

```sql
INSERT INTO azure.network.service_endpoint_policy_definitions (
data__properties,
data__name,
data__type,
data__id,
resourceGroupName,
serviceEndpointPolicyName,
serviceEndpointPolicyDefinitionName,
subscriptionId
)
SELECT 
'{{ properties }}',
'{{ name }}',
'{{ type }}',
'{{ id }}',
'{{ resourceGroupName }}',
'{{ serviceEndpointPolicyName }}',
'{{ serviceEndpointPolicyDefinitionName }}',
'{{ subscriptionId }}'
RETURNING
id,
name,
etag,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: service_endpoint_policy_definitions
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the service_endpoint_policy_definitions resource.
    - name: serviceEndpointPolicyName
      value: string
      description: Required parameter for the service_endpoint_policy_definitions resource.
    - name: serviceEndpointPolicyDefinitionName
      value: string
      description: Required parameter for the service_endpoint_policy_definitions resource.
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the service_endpoint_policy_definitions resource.
    - name: properties
      value: object
      description: |
        Properties of the service endpoint policy definition.
    - name: name
      value: string
      description: |
        The name of the resource that is unique within a resource group. This name can be used to access the resource.
    - name: type
      value: string
      description: |
        The type of the resource.
    - name: id
      value: string
      description: |
        Resource ID.
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

Deletes the specified ServiceEndpoint policy definitions.

```sql
DELETE FROM azure.network.service_endpoint_policy_definitions
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND serviceEndpointPolicyName = '{{ serviceEndpointPolicyName }}' --required
AND serviceEndpointPolicyDefinitionName = '{{ serviceEndpointPolicyDefinitionName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
