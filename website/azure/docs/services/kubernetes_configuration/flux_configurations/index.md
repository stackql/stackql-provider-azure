--- 
title: flux_configurations
hide_title: false
hide_table_of_contents: false
keywords:
  - flux_configurations
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

Creates, updates, deletes, gets or lists a <code>flux_configurations</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>flux_configurations</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.kubernetes_configuration.flux_configurations" /></td></tr>
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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties to create a Flux Configuration resource</td>
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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties to create a Flux Configuration resource</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterRp"><code>clusterRp</code></a>, <a href="#parameter-clusterResourceName"><code>clusterResourceName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-fluxConfigurationName"><code>fluxConfigurationName</code></a></td>
    <td></td>
    <td>Gets details of the Flux Configuration.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterRp"><code>clusterRp</code></a>, <a href="#parameter-clusterResourceName"><code>clusterResourceName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a></td>
    <td></td>
    <td>List all Flux Configurations.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterRp"><code>clusterRp</code></a>, <a href="#parameter-clusterResourceName"><code>clusterResourceName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-fluxConfigurationName"><code>fluxConfigurationName</code></a></td>
    <td></td>
    <td>Create a new Kubernetes Flux Configuration.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterRp"><code>clusterRp</code></a>, <a href="#parameter-clusterResourceName"><code>clusterResourceName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-fluxConfigurationName"><code>fluxConfigurationName</code></a></td>
    <td></td>
    <td>Update an existing Kubernetes Flux Configuration.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-clusterRp"><code>clusterRp</code></a>, <a href="#parameter-clusterResourceName"><code>clusterResourceName</code></a>, <a href="#parameter-clusterName"><code>clusterName</code></a>, <a href="#parameter-fluxConfigurationName"><code>fluxConfigurationName</code></a></td>
    <td><a href="#parameter-forceDelete"><code>forceDelete</code></a></td>
    <td>This will delete the YAML file used to set up the Flux Configuration, thus stopping future sync from the source repo.</td>
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
<tr id="parameter-fluxConfigurationName">
    <td><CopyableCode code="fluxConfigurationName" /></td>
    <td><code>string</code></td>
    <td>Name of the Flux Configuration.</td>
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

Gets details of the Flux Configuration.

```sql
SELECT
properties,
systemData
FROM azure.kubernetes_configuration.flux_configurations
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND clusterRp = '{{ clusterRp }}' -- required
AND clusterResourceName = '{{ clusterResourceName }}' -- required
AND clusterName = '{{ clusterName }}' -- required
AND fluxConfigurationName = '{{ fluxConfigurationName }}' -- required
;
```
</TabItem>
<TabItem value="list">

List all Flux Configurations.

```sql
SELECT
properties,
systemData
FROM azure.kubernetes_configuration.flux_configurations
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
    defaultValue="create_or_update"
    values={[
        { label: 'create_or_update', value: 'create_or_update' },
        { label: 'Manifest', value: 'manifest' }
    ]}
>
<TabItem value="create_or_update">

Create a new Kubernetes Flux Configuration.

```sql
INSERT INTO azure.kubernetes_configuration.flux_configurations (
data__properties,
subscriptionId,
resourceGroupName,
clusterRp,
clusterResourceName,
clusterName,
fluxConfigurationName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ clusterRp }}',
'{{ clusterResourceName }}',
'{{ clusterName }}',
'{{ fluxConfigurationName }}'
RETURNING
properties,
systemData
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: flux_configurations
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the flux_configurations resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the flux_configurations resource.
    - name: clusterRp
      value: string
      description: Required parameter for the flux_configurations resource.
    - name: clusterResourceName
      value: string
      description: Required parameter for the flux_configurations resource.
    - name: clusterName
      value: string
      description: Required parameter for the flux_configurations resource.
    - name: fluxConfigurationName
      value: string
      description: Required parameter for the flux_configurations resource.
    - name: properties
      value: object
      description: |
        Properties to create a Flux Configuration resource
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

Update an existing Kubernetes Flux Configuration.

```sql
UPDATE azure.kubernetes_configuration.flux_configurations
SET 
data__properties = '{{ properties }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND clusterRp = '{{ clusterRp }}' --required
AND clusterResourceName = '{{ clusterResourceName }}' --required
AND clusterName = '{{ clusterName }}' --required
AND fluxConfigurationName = '{{ fluxConfigurationName }}' --required
RETURNING
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

This will delete the YAML file used to set up the Flux Configuration, thus stopping future sync from the source repo.

```sql
DELETE FROM azure.kubernetes_configuration.flux_configurations
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND clusterRp = '{{ clusterRp }}' --required
AND clusterResourceName = '{{ clusterResourceName }}' --required
AND clusterName = '{{ clusterName }}' --required
AND fluxConfigurationName = '{{ fluxConfigurationName }}' --required
AND forceDelete = '{{ forceDelete }}'
;
```
</TabItem>
</Tabs>
