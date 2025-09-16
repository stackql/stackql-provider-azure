--- 
title: azure_bare_metal_instances
hide_title: false
hide_table_of_contents: false
keywords:
  - azure_bare_metal_instances
  - bare_metal_infrastructure
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

Creates, updates, deletes, gets or lists an <code>azure_bare_metal_instances</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>azure_bare_metal_instances</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.bare_metal_infrastructure.azure_bare_metal_instances" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
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
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>AzureBareMetal instance properties</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group">

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
    <td>AzureBareMetal instance properties</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_subscription">

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
    <td>AzureBareMetal instance properties</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-azureBareMetalInstanceName"><code>azureBareMetalInstanceName</code></a></td>
    <td></td>
    <td>Gets an Azure Bare Metal Instance for the specified subscription, resource group, and instance name.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td></td>
    <td>Gets a list of Azure Bare Metal Instances in the specified subscription and resource group. The operations returns various properties of each Azure Bare Metal Instance.</td>
</tr>
<tr>
    <td><a href="#list_by_subscription"><CopyableCode code="list_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Returns a list of Azure Bare Metal Instances in the specified subscription. The operations returns various properties of each Azure Bare Metal Instance.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-azureBareMetalInstanceName"><code>azureBareMetalInstanceName</code></a></td>
    <td></td>
    <td>Creates an Azure Bare Metal Instance for the specified subscription, resource group, and instance name.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-azureBareMetalInstanceName"><code>azureBareMetalInstanceName</code></a></td>
    <td></td>
    <td>Patches the Tags field of a Azure Bare Metal Instance for the specified subscription, resource group, and instance name.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-azureBareMetalInstanceName"><code>azureBareMetalInstanceName</code></a></td>
    <td></td>
    <td>Deletes an Azure Bare Metal Instance for the specified subscription, resource group, and instance name.</td>
</tr>
<tr>
    <td><a href="#start"><CopyableCode code="start" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-azureBareMetalInstanceName"><code>azureBareMetalInstanceName</code></a></td>
    <td></td>
    <td>The operation to start an Azure Bare Metal instance</td>
</tr>
<tr>
    <td><a href="#restart"><CopyableCode code="restart" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-azureBareMetalInstanceName"><code>azureBareMetalInstanceName</code></a></td>
    <td></td>
    <td>The operation to restart an Azure Bare Metal Instance</td>
</tr>
<tr>
    <td><a href="#shutdown"><CopyableCode code="shutdown" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-azureBareMetalInstanceName"><code>azureBareMetalInstanceName</code></a></td>
    <td></td>
    <td>The operation to shutdown an Azure Bare Metal Instance</td>
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
<tr id="parameter-azureBareMetalInstanceName">
    <td><CopyableCode code="azureBareMetalInstanceName" /></td>
    <td><code>string</code></td>
    <td>Name of the Azure Bare Metal Instance, also known as the ResourceName.</td>
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
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list_by_subscription', value: 'list_by_subscription' }
    ]}
>
<TabItem value="get">

Gets an Azure Bare Metal Instance for the specified subscription, resource group, and instance name.

```sql
SELECT
location,
properties,
tags
FROM azure.bare_metal_infrastructure.azure_bare_metal_instances
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND azureBareMetalInstanceName = '{{ azureBareMetalInstanceName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_resource_group">

Gets a list of Azure Bare Metal Instances in the specified subscription and resource group. The operations returns various properties of each Azure Bare Metal Instance.

```sql
SELECT
location,
properties,
tags
FROM azure.bare_metal_infrastructure.azure_bare_metal_instances
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_subscription">

Returns a list of Azure Bare Metal Instances in the specified subscription. The operations returns various properties of each Azure Bare Metal Instance.

```sql
SELECT
location,
properties,
tags
FROM azure.bare_metal_infrastructure.azure_bare_metal_instances
WHERE subscriptionId = '{{ subscriptionId }}' -- required
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

Creates an Azure Bare Metal Instance for the specified subscription, resource group, and instance name.

```sql
INSERT INTO azure.bare_metal_infrastructure.azure_bare_metal_instances (
data__properties,
data__tags,
data__location,
subscriptionId,
resourceGroupName,
azureBareMetalInstanceName
)
SELECT 
'{{ properties }}',
'{{ tags }}',
'{{ location }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ azureBareMetalInstanceName }}'
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
- name: azure_bare_metal_instances
  props:
    - name: subscriptionId
      value: string (uuid)
      description: Required parameter for the azure_bare_metal_instances resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the azure_bare_metal_instances resource.
    - name: azureBareMetalInstanceName
      value: string
      description: Required parameter for the azure_bare_metal_instances resource.
    - name: properties
      value: object
      description: |
        AzureBareMetal instance properties
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

Patches the Tags field of a Azure Bare Metal Instance for the specified subscription, resource group, and instance name.

```sql
UPDATE azure.bare_metal_infrastructure.azure_bare_metal_instances
SET 
data__tags = '{{ tags }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND azureBareMetalInstanceName = '{{ azureBareMetalInstanceName }}' --required
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

Deletes an Azure Bare Metal Instance for the specified subscription, resource group, and instance name.

```sql
DELETE FROM azure.bare_metal_infrastructure.azure_bare_metal_instances
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND azureBareMetalInstanceName = '{{ azureBareMetalInstanceName }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="start"
    values={[
        { label: 'start', value: 'start' },
        { label: 'restart', value: 'restart' },
        { label: 'shutdown', value: 'shutdown' }
    ]}
>
<TabItem value="start">

The operation to start an Azure Bare Metal instance

```sql
EXEC azure.bare_metal_infrastructure.azure_bare_metal_instances.start 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@azureBareMetalInstanceName='{{ azureBareMetalInstanceName }}' --required
;
```
</TabItem>
<TabItem value="restart">

The operation to restart an Azure Bare Metal Instance

```sql
EXEC azure.bare_metal_infrastructure.azure_bare_metal_instances.restart 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@azureBareMetalInstanceName='{{ azureBareMetalInstanceName }}' --required 
@@json=
'{
"forceState": "{{ forceState }}"
}'
;
```
</TabItem>
<TabItem value="shutdown">

The operation to shutdown an Azure Bare Metal Instance

```sql
EXEC azure.bare_metal_infrastructure.azure_bare_metal_instances.shutdown 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@azureBareMetalInstanceName='{{ azureBareMetalInstanceName }}' --required
;
```
</TabItem>
</Tabs>
