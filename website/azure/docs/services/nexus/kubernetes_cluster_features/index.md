--- 
title: kubernetes_cluster_features
hide_title: false
hide_table_of_contents: false
keywords:
  - kubernetes_cluster_features
  - nexus
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

Creates, updates, deletes, gets or lists a <code>kubernetes_cluster_features</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>kubernetes_cluster_features</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.nexus.kubernetes_cluster_features" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_kubernetes_cluster', value: 'list_by_kubernetes_cluster' }
    ]}
>
<TabItem value="get">

The resource has been successfully retrieved.

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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The list of the resource properties. (title: KubernetesClusterFeatureProperties represents the properties of a Kubernetes cluster feature.)</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_kubernetes_cluster">

The resource list has been successfully retrieved.

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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The list of the resource properties. (title: KubernetesClusterFeatureProperties represents the properties of a Kubernetes cluster feature.)</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-kubernetesClusterName"><code>kubernetesClusterName</code></a>, <a href="#parameter-featureName"><code>featureName</code></a></td>
    <td></td>
    <td>Get properties of the provided the Kubernetes cluster feature.</td>
</tr>
<tr>
    <td><a href="#list_by_kubernetes_cluster"><CopyableCode code="list_by_kubernetes_cluster" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-kubernetesClusterName"><code>kubernetesClusterName</code></a></td>
    <td></td>
    <td>Get a list of features for the provided Kubernetes cluster.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-kubernetesClusterName"><code>kubernetesClusterName</code></a>, <a href="#parameter-featureName"><code>featureName</code></a></td>
    <td></td>
    <td>Create a new Kubernetes cluster feature or update properties of the Kubernetes cluster feature if it exists.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-kubernetesClusterName"><code>kubernetesClusterName</code></a>, <a href="#parameter-featureName"><code>featureName</code></a></td>
    <td></td>
    <td>Patch properties of the provided Kubernetes cluster feature.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-kubernetesClusterName"><code>kubernetesClusterName</code></a>, <a href="#parameter-featureName"><code>featureName</code></a></td>
    <td></td>
    <td>Delete the provided Kubernetes cluster feature.</td>
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
<tr id="parameter-featureName">
    <td><CopyableCode code="featureName" /></td>
    <td><code>string</code></td>
    <td>The name of the feature.</td>
</tr>
<tr id="parameter-kubernetesClusterName">
    <td><CopyableCode code="kubernetesClusterName" /></td>
    <td><code>string</code></td>
    <td>The name of the Kubernetes cluster.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
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
        { label: 'list_by_kubernetes_cluster', value: 'list_by_kubernetes_cluster' }
    ]}
>
<TabItem value="get">

Get properties of the provided the Kubernetes cluster feature.

```sql
SELECT
location,
properties,
tags
FROM azure.nexus.kubernetes_cluster_features
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND kubernetesClusterName = '{{ kubernetesClusterName }}' -- required
AND featureName = '{{ featureName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_kubernetes_cluster">

Get a list of features for the provided Kubernetes cluster.

```sql
SELECT
location,
properties,
tags
FROM azure.nexus.kubernetes_cluster_features
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND kubernetesClusterName = '{{ kubernetesClusterName }}' -- required
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

Create a new Kubernetes cluster feature or update properties of the Kubernetes cluster feature if it exists.

```sql
INSERT INTO azure.nexus.kubernetes_cluster_features (
data__properties,
data__tags,
data__location,
subscriptionId,
resourceGroupName,
kubernetesClusterName,
featureName
)
SELECT 
'{{ properties }}',
'{{ tags }}',
'{{ location }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ kubernetesClusterName }}',
'{{ featureName }}'
RETURNING
location,
properties,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: kubernetes_cluster_features
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the kubernetes_cluster_features resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the kubernetes_cluster_features resource.
    - name: kubernetesClusterName
      value: string
      description: Required parameter for the kubernetes_cluster_features resource.
    - name: featureName
      value: string
      description: Required parameter for the kubernetes_cluster_features resource.
    - name: properties
      value: object
      description: |
        The list of the resource properties.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        The geo-location where the resource lives
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

Patch properties of the provided Kubernetes cluster feature.

```sql
UPDATE azure.nexus.kubernetes_cluster_features
SET 
data__properties = '{{ properties }}',
data__tags = '{{ tags }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND kubernetesClusterName = '{{ kubernetesClusterName }}' --required
AND featureName = '{{ featureName }}' --required
RETURNING
location,
properties,
tags;
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

Delete the provided Kubernetes cluster feature.

```sql
DELETE FROM azure.nexus.kubernetes_cluster_features
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND kubernetesClusterName = '{{ kubernetesClusterName }}' --required
AND featureName = '{{ featureName }}' --required
;
```
</TabItem>
</Tabs>
