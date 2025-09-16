--- 
title: extensions
hide_title: false
hide_table_of_contents: false
keywords:
  - extensions
  - kubernetes_configuration
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

Creates, updates, deletes, gets or lists an <code>extensions</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>extensions</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.kubernetes_configuration.extensions" /></td></tr>
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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Identity of the Extension resource</td>
</tr>
<tr>
    <td><CopyableCode code="plan" /></td>
    <td><code>object</code></td>
    <td>The plan information.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of an Extension resource</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Top level metadata https://github.com/Azure/azure-resource-manager-rpc/blob/master/v1.0/common-api-contracts.md#system-metadata-for-all-azure-resources</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

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
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Identity of the Extension resource</td>
</tr>
<tr>
    <td><CopyableCode code="plan" /></td>
    <td><code>object</code></td>
    <td>The plan information.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of an Extension resource</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Top level metadata https://github.com/Azure/azure-resource-manager-rpc/blob/master/v1.0/common-api-contracts.md#system-metadata-for-all-azure-resources</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterRp"><code>clusterRp</code></a>, <a href="#parameter-clusterResourceName"><code>clusterResourceName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-extensionName"><code>extensionName</code></a></td>
    <td></td>
    <td>Gets Kubernetes Cluster Extension.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterRp"><code>clusterRp</code></a>, <a href="#parameter-clusterResourceName"><code>clusterResourceName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a></td>
    <td></td>
    <td>List all Extensions in the cluster.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterRp"><code>clusterRp</code></a>, <a href="#parameter-clusterResourceName"><code>clusterResourceName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-extensionName"><code>extensionName</code></a></td>
    <td></td>
    <td>Create a new Kubernetes Cluster Extension.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterRp"><code>clusterRp</code></a>, <a href="#parameter-clusterResourceName"><code>clusterResourceName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-extensionName"><code>extensionName</code></a></td>
    <td></td>
    <td>Patch an existing Kubernetes Cluster Extension.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterRp"><code>clusterRp</code></a>, <a href="#parameter-clusterResourceName"><code>clusterResourceName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-extensionName"><code>extensionName</code></a></td>
    <td><a href="#parameter-forceDelete"><code>forceDelete</code></a></td>
    <td>Delete a Kubernetes Cluster Extension. This will cause the Agent to Uninstall the extension from the cluster.</td>
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
<tr id="parameter-clusterName">
    <td><CopyableCode code="clusterName" /></td>
    <td><code>string</code></td>
    <td>The name of the kubernetes cluster.</td>
</tr>
<tr id="parameter-clusterResourceName">
    <td><CopyableCode code="clusterResourceName" /></td>
    <td><code>string</code></td>
    <td>The Kubernetes cluster resource name - i.e. managedClusters, connectedClusters, provisionedClusters.</td>
</tr>
<tr id="parameter-clusterRp">
    <td><CopyableCode code="clusterRp" /></td>
    <td><code>string</code></td>
    <td>The Kubernetes cluster RP - i.e. Microsoft.ContainerService, Microsoft.Kubernetes, Microsoft.HybridContainerService.</td>
</tr>
<tr id="parameter-extensionName">
    <td><CopyableCode code="extensionName" /></td>
    <td><code>string</code></td>
    <td>Name of the Extension.</td>
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
<tr id="parameter-forceDelete">
    <td><CopyableCode code="forceDelete" /></td>
    <td><code>boolean</code></td>
    <td>Delete the extension resource in Azure - not the normal asynchronous delete.</td>
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

Gets Kubernetes Cluster Extension.

```sql
SELECT
identity,
plan,
properties,
systemData
FROM azure.kubernetes_configuration.extensions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND clusterRp = '{{ clusterRp }}' -- required
AND clusterResourceName = '{{ clusterResourceName }}' -- required
AND clusterName = '{{ clusterName }}' -- required
AND extensionName = '{{ extensionName }}' -- required
;
```
</TabItem>
<TabItem value="list">

List all Extensions in the cluster.

```sql
SELECT
identity,
plan,
properties,
systemData
FROM azure.kubernetes_configuration.extensions
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND clusterRp = '{{ clusterRp }}' -- required
AND clusterResourceName = '{{ clusterResourceName }}' -- required
AND clusterName = '{{ clusterName }}' -- required
;
```
</TabItem>
</Tabs>


## `INSERT` examples

<Tabs
    defaultValue="create"
    values={[
        { label: 'create', value: 'create' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create">

Create a new Kubernetes Cluster Extension.

```sql
INSERT INTO azure.kubernetes_configuration.extensions (
data__properties,
data__identity,
data__plan,
subscriptionId,
resourceGroupName,
clusterRp,
clusterResourceName,
clusterName,
extensionName
)
SELECT 
'{{ properties }}',
'{{ identity }}',
'{{ plan }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ clusterRp }}',
'{{ clusterResourceName }}',
'{{ clusterName }}',
'{{ extensionName }}'
RETURNING
identity,
plan,
properties,
systemData
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: extensions
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the extensions resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the extensions resource.
    - name: clusterRp
      value: string
      description: Required parameter for the extensions resource.
    - name: clusterResourceName
      value: string
      description: Required parameter for the extensions resource.
    - name: clusterName
      value: string
      description: Required parameter for the extensions resource.
    - name: extensionName
      value: string
      description: Required parameter for the extensions resource.
    - name: properties
      value: object
      description: |
        Properties of an Extension resource
    - name: identity
      value: object
      description: |
        Identity of the Extension resource
    - name: plan
      value: object
      description: |
        The plan information.
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

Patch an existing Kubernetes Cluster Extension.

```sql
UPDATE azure.kubernetes_configuration.extensions
SET 
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND clusterRp = '{{ clusterRp }}' --required
AND clusterResourceName = '{{ clusterResourceName }}' --required
AND clusterName = '{{ clusterName }}' --required
AND extensionName = '{{ extensionName }}' --required
RETURNING
identity,
plan,
properties,
systemData;
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

Delete a Kubernetes Cluster Extension. This will cause the Agent to Uninstall the extension from the cluster.

```sql
DELETE FROM azure.kubernetes_configuration.extensions
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND clusterRp = '{{ clusterRp }}' --required
AND clusterResourceName = '{{ clusterResourceName }}' --required
AND clusterName = '{{ clusterName }}' --required
AND extensionName = '{{ extensionName }}' --required
AND forceDelete = '{{ forceDelete }}'
;
```
</TabItem>
</Tabs>
