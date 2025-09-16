--- 
title: private_endpoint_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - private_endpoint_connections
  - time_series_insights
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

Creates, updates, deletes, gets or lists a <code>private_endpoint_connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>private_endpoint_connections</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.time_series_insights.private_endpoint_connections" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_environment', value: 'list_by_environment' }
    ]}
>
<TabItem value="get">

The definition of the private endpoint connection was successfully retrieved and is in the response.

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
    <td>Fully qualified resource ID for the resource. Ex - /subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Resource properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_environment">

The operation succeeded. The response contains the list of all private endpoint connections for the given environment.

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
    <td>Fully qualified resource ID for the resource. Ex - /subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The name of the resource</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Resource properties.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-environmentName"><code>environmentName</code></a>, <a href="#parameter-privateEndpointConnectionName"><code>privateEndpointConnectionName</code></a></td>
    <td></td>
    <td>Gets the details of the private endpoint connection of the environment in the given resource group.</td>
</tr>
<tr>
    <td><a href="#list_by_environment"><CopyableCode code="list_by_environment" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-environmentName"><code>environmentName</code></a></td>
    <td></td>
    <td>Gets a list of all private endpoint connections in the given environment.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-environmentName"><code>environmentName</code></a>, <a href="#parameter-privateEndpointConnectionName"><code>privateEndpointConnectionName</code></a></td>
    <td></td>
    <td>Updates a Private Endpoint connection of the environment in the given resource group.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-environmentName"><code>environmentName</code></a>, <a href="#parameter-privateEndpointConnectionName"><code>privateEndpointConnectionName</code></a></td>
    <td></td>
    <td>Disconnects the private endpoint connection and deletes it from the environment.</td>
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
<tr id="parameter-environmentName">
    <td><CopyableCode code="environmentName" /></td>
    <td><code>string</code></td>
    <td>The name of the Time Series Insights environment associated with the specified resource group.</td>
</tr>
<tr id="parameter-privateEndpointConnectionName">
    <td><CopyableCode code="privateEndpointConnectionName" /></td>
    <td><code>string</code></td>
    <td>The name of the private endpoint connection associated with the Azure resource</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_environment', value: 'list_by_environment' }
    ]}
>
<TabItem value="get">

Gets the details of the private endpoint connection of the environment in the given resource group.

```sql
SELECT
id,
name,
properties,
type
FROM azure.time_series_insights.private_endpoint_connections
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND environmentName = '{{ environmentName }}' -- required
AND privateEndpointConnectionName = '{{ privateEndpointConnectionName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_environment">

Gets a list of all private endpoint connections in the given environment.

```sql
SELECT
id,
name,
properties,
type
FROM azure.time_series_insights.private_endpoint_connections
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND environmentName = '{{ environmentName }}' -- required
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

Updates a Private Endpoint connection of the environment in the given resource group.

```sql
INSERT INTO azure.time_series_insights.private_endpoint_connections (
data__properties,
subscriptionId,
resourceGroupName,
environmentName,
privateEndpointConnectionName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ environmentName }}',
'{{ privateEndpointConnectionName }}'
RETURNING
id,
name,
properties,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: private_endpoint_connections
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the private_endpoint_connections resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the private_endpoint_connections resource.
    - name: environmentName
      value: string
      description: Required parameter for the private_endpoint_connections resource.
    - name: privateEndpointConnectionName
      value: string
      description: Required parameter for the private_endpoint_connections resource.
    - name: properties
      value: object
      description: |
        Resource properties.
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

Disconnects the private endpoint connection and deletes it from the environment.

```sql
DELETE FROM azure.time_series_insights.private_endpoint_connections
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND environmentName = '{{ environmentName }}' --required
AND privateEndpointConnectionName = '{{ privateEndpointConnectionName }}' --required
;
```
</TabItem>
</Tabs>
