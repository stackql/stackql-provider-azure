--- 
title: private_endpoint_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - private_endpoint_connections
  - storage_sync
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.storage_sync.private_endpoint_connections" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_storage_sync_service', value: 'list_by_storage_sync_service' }
    ]}
>
<TabItem value="get">

OK -- Get the private endpoint connection properties successfully.

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
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
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
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_storage_sync_service">

Array of Sync Group resources in Storage Sync Service

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
    <td><code>string (arm-id)</code></td>
    <td>Fully qualified resource ID for the resource. E.g. "/subscriptions/&#123;subscriptionId&#125;/resourceGroups/&#123;resourceGroupName&#125;/providers/&#123;resourceProviderNamespace&#125;/&#123;resourceType&#125;/&#123;resourceName&#125;"</td>
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
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Azure Resource Manager metadata containing createdBy and modifiedBy information.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageSyncServiceName"><code>storageSyncServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-privateEndpointConnectionName"><code>privateEndpointConnectionName</code></a></td>
    <td></td>
    <td>Gets the specified private endpoint connection associated with the storage sync service.</td>
</tr>
<tr>
    <td><a href="#list_by_storage_sync_service"><CopyableCode code="list_by_storage_sync_service" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageSyncServiceName"><code>storageSyncServiceName</code></a></td>
    <td></td>
    <td>Get a PrivateEndpointConnection List.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageSyncServiceName"><code>storageSyncServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-privateEndpointConnectionName"><code>privateEndpointConnectionName</code></a></td>
    <td></td>
    <td>Update the state of specified private endpoint connection associated with the storage sync service.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-storageSyncServiceName"><code>storageSyncServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-privateEndpointConnectionName"><code>privateEndpointConnectionName</code></a></td>
    <td></td>
    <td>Deletes the specified private endpoint connection associated with the storage sync service.</td>
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
<tr id="parameter-privateEndpointConnectionName">
    <td><CopyableCode code="privateEndpointConnectionName" /></td>
    <td><code>string</code></td>
    <td>The name of the private endpoint connection associated with the Azure resource.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group. The name is case insensitive.</td>
</tr>
<tr id="parameter-storageSyncServiceName">
    <td><CopyableCode code="storageSyncServiceName" /></td>
    <td><code>string</code></td>
    <td>The name of the storage sync service name within the specified resource group.</td>
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
        { label: 'list_by_storage_sync_service', value: 'list_by_storage_sync_service' }
    ]}
>
<TabItem value="get">

Gets the specified private endpoint connection associated with the storage sync service.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.storage_sync.private_endpoint_connections
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND storageSyncServiceName = '{{ storageSyncServiceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND privateEndpointConnectionName = '{{ privateEndpointConnectionName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_storage_sync_service">

Get a PrivateEndpointConnection List.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.storage_sync.private_endpoint_connections
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND storageSyncServiceName = '{{ storageSyncServiceName }}' -- required
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

Update the state of specified private endpoint connection associated with the storage sync service.

```sql
INSERT INTO azure.storage_sync.private_endpoint_connections (
data__properties,
resourceGroupName,
storageSyncServiceName,
subscriptionId,
privateEndpointConnectionName
)
SELECT 
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ storageSyncServiceName }}',
'{{ subscriptionId }}',
'{{ privateEndpointConnectionName }}'
RETURNING
id,
name,
properties,
systemData,
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: private_endpoint_connections
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the private_endpoint_connections resource.
    - name: storageSyncServiceName
      value: string
      description: Required parameter for the private_endpoint_connections resource.
    - name: subscriptionId
      value: string (uuid)
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

Deletes the specified private endpoint connection associated with the storage sync service.

```sql
DELETE FROM azure.storage_sync.private_endpoint_connections
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND storageSyncServiceName = '{{ storageSyncServiceName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND privateEndpointConnectionName = '{{ privateEndpointConnectionName }}' --required
;
```
</TabItem>
</Tabs>
