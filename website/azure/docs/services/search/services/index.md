--- 
title: services
hide_title: false
hide_table_of_contents: false
keywords:
  - services
  - search
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.search.services" /></td></tr>
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

The search service definition was successfully retrieved and is in the response. If you are polling for the completion of a provisioning or scale operation, you can check its status via the provisioningState property.

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
    <td>Details about the search service identity. A null value indicates that the search service has no identity assigned.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the search service.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>Defines the SKU of a search service, which determines billing rate and capacity limits.</td>
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

The operation succeeded. The response contains the list of all search service definitions for the given resource group.

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
    <td>Details about the search service identity. A null value indicates that the search service has no identity assigned.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the search service.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>Defines the SKU of a search service, which determines billing rate and capacity limits.</td>
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

The operation succeeded. The response contains the list of all search service definitions for the given subscription.

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
    <td>Details about the search service identity. A null value indicates that the search service has no identity assigned.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The geo-location where the resource lives</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the search service.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>Defines the SKU of a search service, which determines billing rate and capacity limits.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-searchServiceName"><code>searchServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-x-ms-client-request-id"><code>x-ms-client-request-id</code></a></td>
    <td>Gets the search service with the given name in the given resource group.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-x-ms-client-request-id"><code>x-ms-client-request-id</code></a></td>
    <td>Gets a list of all Search services in the given resource group.</td>
</tr>
<tr>
    <td><a href="#list_by_subscription"><CopyableCode code="list_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-x-ms-client-request-id"><code>x-ms-client-request-id</code></a></td>
    <td>Gets a list of all Search services in the given subscription.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-searchServiceName"><code>searchServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-x-ms-client-request-id"><code>x-ms-client-request-id</code></a></td>
    <td>Creates or updates a search service in the given resource group. If the search service already exists, all properties will be updated with the given values.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-searchServiceName"><code>searchServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-x-ms-client-request-id"><code>x-ms-client-request-id</code></a></td>
    <td>Updates an existing search service in the given resource group.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-searchServiceName"><code>searchServiceName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-x-ms-client-request-id"><code>x-ms-client-request-id</code></a></td>
    <td>Deletes a search service in the given resource group, along with its associated resources.</td>
</tr>
<tr>
    <td><a href="#check_name_availability"><CopyableCode code="check_name_availability" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-name"><code>name</code></a>, <a href="#parameter-type"><code>type</code></a></td>
    <td><a href="#parameter-x-ms-client-request-id"><code>x-ms-client-request-id</code></a></td>
    <td>Checks whether or not the given search service name is available for use. Search service names must be globally unique since they are part of the service URI (https://&lt;name&gt;.search.windows.net).</td>
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
    <td>The name of the resource group within the current subscription. You can obtain this value from the Azure Resource Manager API or the portal.</td>
</tr>
<tr id="parameter-searchServiceName">
    <td><CopyableCode code="searchServiceName" /></td>
    <td><code>string</code></td>
    <td>The name of the Azure AI Search service associated with the specified resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The unique identifier for a Microsoft Azure subscription. You can obtain this value from the Azure Resource Manager API or the portal.</td>
</tr>
<tr id="parameter-x-ms-client-request-id">
    <td><CopyableCode code="x-ms-client-request-id" /></td>
    <td><code>string (uuid)</code></td>
    <td>A client-generated GUID value that identifies this request. If specified, this will be included in response information as a way to track the request.</td>
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

Gets the search service with the given name in the given resource group.

```sql
SELECT
identity,
location,
properties,
sku,
tags
FROM azure.search.services
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND searchServiceName = '{{ searchServiceName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND x-ms-client-request-id = '{{ x-ms-client-request-id }}'
;
```
</TabItem>
<TabItem value="list_by_resource_group">

Gets a list of all Search services in the given resource group.

```sql
SELECT
identity,
location,
properties,
sku,
tags
FROM azure.search.services
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND x-ms-client-request-id = '{{ x-ms-client-request-id }}'
;
```
</TabItem>
<TabItem value="list_by_subscription">

Gets a list of all Search services in the given subscription.

```sql
SELECT
identity,
location,
properties,
sku,
tags
FROM azure.search.services
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND x-ms-client-request-id = '{{ x-ms-client-request-id }}'
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

Creates or updates a search service in the given resource group. If the search service already exists, all properties will be updated with the given values.

```sql
INSERT INTO azure.search.services (
data__properties,
data__sku,
data__identity,
data__tags,
data__location,
resourceGroupName,
searchServiceName,
subscriptionId,
x-ms-client-request-id
)
SELECT 
'{{ properties }}',
'{{ sku }}',
'{{ identity }}',
'{{ tags }}',
'{{ location }}',
'{{ resourceGroupName }}',
'{{ searchServiceName }}',
'{{ subscriptionId }}',
'{{ x-ms-client-request-id }}'
RETURNING
identity,
location,
properties,
sku,
tags
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
    - name: searchServiceName
      value: string
      description: Required parameter for the services resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the services resource.
    - name: properties
      value: object
      description: |
        Properties of the search service.
    - name: sku
      value: object
      description: |
        Defines the SKU of a search service, which determines billing rate and capacity limits.
    - name: identity
      value: object
      description: |
        Details about the search service identity. A null value indicates that the search service has no identity assigned.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        The geo-location where the resource lives
    - name: x-ms-client-request-id
      value: string (uuid)
      description: A client-generated GUID value that identifies this request. If specified, this will be included in response information as a way to track the request.
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

Updates an existing search service in the given resource group.

```sql
UPDATE azure.search.services
SET 
data__properties = '{{ properties }}',
data__sku = '{{ sku }}',
data__location = '{{ location }}',
data__tags = '{{ tags }}',
data__identity = '{{ identity }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND searchServiceName = '{{ searchServiceName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND x-ms-client-request-id = '{{ x-ms-client-request-id}}'
RETURNING
identity,
location,
properties,
sku,
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

Deletes a search service in the given resource group, along with its associated resources.

```sql
DELETE FROM azure.search.services
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND searchServiceName = '{{ searchServiceName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
AND x-ms-client-request-id = '{{ x-ms-client-request-id }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="check_name_availability"
    values={[
        { label: 'check_name_availability', value: 'check_name_availability' }
    ]}
>
<TabItem value="check_name_availability">

Checks whether or not the given search service name is available for use. Search service names must be globally unique since they are part of the service URI (https://&lt;name&gt;.search.windows.net).

```sql
EXEC azure.search.services.check_name_availability 
@subscriptionId='{{ subscriptionId }}' --required, 
@x-ms-client-request-id='{{ x-ms-client-request-id }}' 
@@json=
'{
"name": "{{ name }}", 
"type": "{{ type }}"
}'
;
```
</TabItem>
</Tabs>
