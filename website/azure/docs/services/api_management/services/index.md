--- 
title: services
hide_title: false
hide_table_of_contents: false
keywords:
  - services
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

Creates, updates, deletes, gets or lists a <code>services</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>services</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.services" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Successfully got the API Management Service Resource.

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
    <td>Resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>ETag of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Managed service identity of the Api Management service.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the API Management service.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>SKU properties of the API Management service.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type for API Management resource is set to Microsoft.ApiManagement.</td>
</tr>
<tr>
    <td><CopyableCode code="zones" /></td>
    <td><code>array</code></td>
    <td>A list of availability zones denoting where the resource needs to come from.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group">

The API Management service list.

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
    <td>Resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>ETag of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Managed service identity of the Api Management service.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the API Management service.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>SKU properties of the API Management service.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type for API Management resource is set to Microsoft.ApiManagement.</td>
</tr>
<tr>
    <td><CopyableCode code="zones" /></td>
    <td><code>array</code></td>
    <td>A list of availability zones denoting where the resource needs to come from.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

The API Management service list.

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
    <td>Resource name.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>ETag of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>Managed service identity of the Api Management service.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the API Management service.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>SKU properties of the API Management service.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>Metadata pertaining to creation and last modification of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type for API Management resource is set to Microsoft.ApiManagement.</td>
</tr>
<tr>
    <td><CopyableCode code="zones" /></td>
    <td><code>array</code></td>
    <td>A list of availability zones denoting where the resource needs to come from.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets an API Management service resource description.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>List all API Management services within a resource group.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Lists all API Management services within an Azure subscription.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-data__location"><code>data__location</code></a>, <a href="#parameter-data__sku"><code>data__sku</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Creates or updates an API Management service. This is long running operation and could take several minutes to complete.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Updates an existing API Management service.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes an existing API Management service.</td>
</tr>
<tr>
    <td><a href="#restore"><CopyableCode code="restore" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-storageAccount"><code>storageAccount</code></a>, <a href="#parameter-containerName"><code>containerName</code></a>, <a href="#parameter-backupName"><code>backupName</code></a></td>
    <td></td>
    <td>Restores a backup of an API Management service created using the ApiManagementService_Backup operation on the current service. This is a long running operation and could take several minutes to complete.</td>
</tr>
<tr>
    <td><a href="#backup"><CopyableCode code="backup" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-storageAccount"><code>storageAccount</code></a>, <a href="#parameter-containerName"><code>containerName</code></a>, <a href="#parameter-backupName"><code>backupName</code></a></td>
    <td></td>
    <td>Creates a backup of the API Management service to the given Azure Storage Account. This is long running operation and could take several minutes to complete.</td>
</tr>
<tr>
    <td><a href="#migrate_to_stv2"><CopyableCode code="migrate_to_stv2" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Upgrades an API Management service to the Stv2 platform. For details refer to https://aka.ms/apim-migrate-stv2. This change is not reversible. This is long running operation and could take several minutes to complete.</td>
</tr>
<tr>
    <td><a href="#check_name_availability"><CopyableCode code="check_name_availability" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td></td>
    <td>Checks availability and correctness of a name for an API Management service.</td>
</tr>
<tr>
    <td><a href="#apply_network_configuration_updates"><CopyableCode code="apply_network_configuration_updates" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-serviceName"><code>serviceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Updates the Microsoft.ApiManagement resource running in the Virtual network to pick the updated DNS changes.</td>
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
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource_group', value: 'list_by_resource_group' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Gets an API Management service resource description.

```sql
SELECT
id,
name,
etag,
identity,
location,
properties,
sku,
systemData,
tags,
type,
zones
FROM azure.api_management.services
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND serviceName = '{{ serviceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_resource_group">

List all API Management services within a resource group.

```sql
SELECT
id,
name,
etag,
identity,
location,
properties,
sku,
systemData,
tags,
type,
zones
FROM azure.api_management.services
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list">

Lists all API Management services within an Azure subscription.

```sql
SELECT
id,
name,
etag,
identity,
location,
properties,
sku,
systemData,
tags,
type,
zones
FROM azure.api_management.services
WHERE subscriptionId = '{{ subscriptionId }}' -- required
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

Creates or updates an API Management service. This is long running operation and could take several minutes to complete.

```sql
INSERT INTO azure.api_management.services (
data__properties,
data__sku,
data__identity,
data__location,
data__zones,
data__tags,
resourceGroupName,
serviceName,
subscriptionId
)
SELECT 
'{{ properties }}' /* required */,
'{{ sku }}' /* required */,
'{{ identity }}',
'{{ location }}' /* required */,
'{{ zones }}',
'{{ tags }}',
'{{ resourceGroupName }}',
'{{ serviceName }}',
'{{ subscriptionId }}'
RETURNING
id,
name,
etag,
identity,
location,
properties,
sku,
systemData,
tags,
type,
zones
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: services
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the services resource.
    - name: serviceName
      value: string
      description: Required parameter for the services resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the services resource.
    - name: properties
      value: object
      description: |
        Properties of the API Management service.
    - name: sku
      value: object
      description: |
        SKU properties of the API Management service.
    - name: identity
      value: object
      description: |
        Managed service identity of the Api Management service.
    - name: location
      value: string
      description: |
        Resource location.
    - name: zones
      value: array
      description: |
        A list of availability zones denoting where the resource needs to come from.
    - name: tags
      value: object
      description: |
        Resource tags.
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

Updates an existing API Management service.

```sql
UPDATE azure.api_management.services
SET 
data__properties = '{{ properties }}',
data__sku = '{{ sku }}',
data__identity = '{{ identity }}',
data__zones = '{{ zones }}',
data__tags = '{{ tags }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND serviceName = '{{ serviceName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
RETURNING
id,
name,
etag,
identity,
location,
properties,
sku,
systemData,
tags,
type,
zones;
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

Deletes an existing API Management service.

```sql
DELETE FROM azure.api_management.services
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND serviceName = '{{ serviceName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="restore"
    values={[
        { label: 'restore', value: 'restore' },
        { label: 'backup', value: 'backup' },
        { label: 'migrate_to_stv2', value: 'migrate_to_stv2' },
        { label: 'check_name_availability', value: 'check_name_availability' },
        { label: 'apply_network_configuration_updates', value: 'apply_network_configuration_updates' }
    ]}
>
<TabItem value="restore">

Restores a backup of an API Management service created using the ApiManagementService_Backup operation on the current service. This is a long running operation and could take several minutes to complete.

```sql
EXEC azure.api_management.services.restore 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"storageAccount": "{{ storageAccount }}", 
"containerName": "{{ containerName }}", 
"backupName": "{{ backupName }}", 
"accessType": "{{ accessType }}", 
"accessKey": "{{ accessKey }}", 
"clientId": "{{ clientId }}"
}'
;
```
</TabItem>
<TabItem value="backup">

Creates a backup of the API Management service to the given Azure Storage Account. This is long running operation and could take several minutes to complete.

```sql
EXEC azure.api_management.services.backup 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"storageAccount": "{{ storageAccount }}", 
"containerName": "{{ containerName }}", 
"backupName": "{{ backupName }}", 
"accessType": "{{ accessType }}", 
"accessKey": "{{ accessKey }}", 
"clientId": "{{ clientId }}"
}'
;
```
</TabItem>
<TabItem value="migrate_to_stv2">

Upgrades an API Management service to the Stv2 platform. For details refer to https://aka.ms/apim-migrate-stv2. This change is not reversible. This is long running operation and could take several minutes to complete.

```sql
EXEC azure.api_management.services.migrate_to_stv2 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"mode": "{{ mode }}"
}'
;
```
</TabItem>
<TabItem value="check_name_availability">

Checks availability and correctness of a name for an API Management service.

```sql
EXEC azure.api_management.services.check_name_availability 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"name": "{{ name }}"
}'
;
```
</TabItem>
<TabItem value="apply_network_configuration_updates">

Updates the Microsoft.ApiManagement resource running in the Virtual network to pick the updated DNS changes.

```sql
EXEC azure.api_management.services.apply_network_configuration_updates 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@serviceName='{{ serviceName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"location": "{{ location }}"
}'
;
```
</TabItem>
</Tabs>
