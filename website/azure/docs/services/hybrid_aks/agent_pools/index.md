--- 
title: agent_pools
hide_title: false
hide_table_of_contents: false
keywords:
  - agent_pools
  - hybrid_aks
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

Creates, updates, deletes, gets or lists an <code>agent_pools</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>agent_pools</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hybrid_aks.agent_pools" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_provisioned_cluster', value: 'list_by_provisioned_cluster' }
    ]}
>
<TabItem value="get">

Gets the agentPool resource.

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
    <td><CopyableCode code="extendedLocation" /></td>
    <td><code>object</code></td>
    <td>Extended location pointing to the underlying infrastructure</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the agent pool resource</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_provisioned_cluster">

Gets the list of agentPools in the provisionedClusterInstances resource.

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
    <td><CopyableCode code="extendedLocation" /></td>
    <td><code>object</code></td>
    <td>Extended location pointing to the underlying infrastructure</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the agent pool resource</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags</td>
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
    <td><a href="#parameter-connectedClusterResourceUri"><code>connectedClusterResourceUri</code></a>, <a href="#parameter-agentPoolName"><code>agentPoolName</code></a></td>
    <td></td>
    <td>Gets the specified agent pool in the provisioned cluster</td>
</tr>
<tr>
    <td><a href="#list_by_provisioned_cluster"><CopyableCode code="list_by_provisioned_cluster" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-connectedClusterResourceUri"><code>connectedClusterResourceUri</code></a></td>
    <td></td>
    <td>Gets the list of agent pools in the specified provisioned cluster</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-connectedClusterResourceUri"><code>connectedClusterResourceUri</code></a>, <a href="#parameter-agentPoolName"><code>agentPoolName</code></a></td>
    <td></td>
    <td>Creates or updates the agent pool in the provisioned cluster</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-connectedClusterResourceUri"><code>connectedClusterResourceUri</code></a>, <a href="#parameter-agentPoolName"><code>agentPoolName</code></a></td>
    <td></td>
    <td>Deletes the specified agent pool in the provisioned cluster</td>
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
<tr id="parameter-agentPoolName">
    <td><CopyableCode code="agentPoolName" /></td>
    <td><code>string</code></td>
    <td>Parameter for the name of the agent pool in the provisioned cluster.</td>
</tr>
<tr id="parameter-connectedClusterResourceUri">
    <td><CopyableCode code="connectedClusterResourceUri" /></td>
    <td><code>string</code></td>
    <td>The fully qualified Azure Resource Manager identifier of the connected cluster resource.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_provisioned_cluster', value: 'list_by_provisioned_cluster' }
    ]}
>
<TabItem value="get">

Gets the specified agent pool in the provisioned cluster

```sql
SELECT
extendedLocation,
properties,
tags
FROM azure.hybrid_aks.agent_pools
WHERE connectedClusterResourceUri = '{{ connectedClusterResourceUri }}' -- required
AND agentPoolName = '{{ agentPoolName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_provisioned_cluster">

Gets the list of agent pools in the specified provisioned cluster

```sql
SELECT
extendedLocation,
properties,
tags
FROM azure.hybrid_aks.agent_pools
WHERE connectedClusterResourceUri = '{{ connectedClusterResourceUri }}' -- required
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

Creates or updates the agent pool in the provisioned cluster

```sql
INSERT INTO azure.hybrid_aks.agent_pools (
data__properties,
data__tags,
data__extendedLocation,
connectedClusterResourceUri,
agentPoolName
)
SELECT 
'{{ properties }}',
'{{ tags }}',
'{{ extendedLocation }}',
'{{ connectedClusterResourceUri }}',
'{{ agentPoolName }}'
RETURNING
extendedLocation,
properties,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: agent_pools
  props:
    - name: connectedClusterResourceUri
      value: string
      description: Required parameter for the agent_pools resource.
    - name: agentPoolName
      value: string
      description: Required parameter for the agent_pools resource.
    - name: properties
      value: object
      description: |
        Properties of the agent pool resource
    - name: tags
      value: object
      description: |
        Resource tags
    - name: extendedLocation
      value: object
      description: |
        Extended location pointing to the underlying infrastructure
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

Deletes the specified agent pool in the provisioned cluster

```sql
DELETE FROM azure.hybrid_aks.agent_pools
WHERE connectedClusterResourceUri = '{{ connectedClusterResourceUri }}' --required
AND agentPoolName = '{{ agentPoolName }}' --required
;
```
</TabItem>
</Tabs>
