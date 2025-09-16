--- 
title: resources
hide_title: false
hide_table_of_contents: false
keywords:
  - resources
  - iot_hub
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

Creates, updates, deletes, gets or lists a <code>resources</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>resources</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.iot_hub.resources" /></td></tr>
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

The body contains all the non-security properties of the IoT hub. Security-related properties are set to null.

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
    <td>The resource identifier.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The resource name. (pattern: <code>^(?![0-9]+$)(?!-)[a-zA-Z0-9-]&#123;2,49&#125;[a-zA-Z0-9]$</code>)</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>The Etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal ETag convention.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The managed identities for the IotHub.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>IotHub properties</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>IotHub SKU info</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The system meta data relating to this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>The resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource_group">

This is a synchronous operation. The body contains a JSON-serialized array of the metadata from all the IoT hubs in the resource group.

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
    <td>The resource identifier.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The resource name. (pattern: <code>^(?![0-9]+$)(?!-)[a-zA-Z0-9-]&#123;2,49&#125;[a-zA-Z0-9]$</code>)</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>The Etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal ETag convention.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The managed identities for the IotHub.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>IotHub properties</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>IotHub SKU info</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The system meta data relating to this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>The resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The resource type.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_subscription">

This is a synchronous operation. The body contains a JSON-serialized array of the metadata from all the IoT hubs in the subscription.

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
    <td>The resource identifier.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>The resource name. (pattern: <code>^(?![0-9]+$)(?!-)[a-zA-Z0-9-]&#123;2,49&#125;[a-zA-Z0-9]$</code>)</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>The Etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal ETag convention.</td>
</tr>
<tr>
    <td><CopyableCode code="identity" /></td>
    <td><code>object</code></td>
    <td>The managed identities for the IotHub.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>The resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>IotHub properties</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>IotHub SKU info</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The system meta data relating to this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>The resource tags.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>The resource type.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Get the non-security related metadata of an IoT hub.</td>
</tr>
<tr>
    <td><a href="#list_by_resource_group"><CopyableCode code="list_by_resource_group" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Get all the IoT hubs in a resource group.</td>
</tr>
<tr>
    <td><a href="#list_by_subscription"><CopyableCode code="list_by_subscription" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Get all the IoT hubs in a subscription.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-data__sku"><code>data__sku</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-If-Match"><code>If-Match</code></a></td>
    <td>Create or update the metadata of an Iot hub. The usual pattern to modify a property is to retrieve the IoT hub metadata and security metadata, and then combine them with the modified values in a new body to update the IoT hub. If certain properties are missing in the JSON, updating IoT Hub may cause these values to fallback to default, which may lead to unexpected behavior.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Update an existing IoT Hub tags. to update other fields use the CreateOrUpdate method</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Delete an IoT hub.</td>
</tr>
<tr>
    <td><a href="#check_name_availability"><CopyableCode code="check_name_availability" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-name"><code>name</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Check if an IoT hub name is available.</td>
</tr>
<tr>
    <td><a href="#test_all_routes"><CopyableCode code="test_all_routes" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-iotHubName"><code>iotHubName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Test all routes configured in this Iot Hub</td>
</tr>
<tr>
    <td><a href="#test_route"><CopyableCode code="test_route" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-iotHubName"><code>iotHubName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-route"><code>route</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Test the new route for this Iot Hub</td>
</tr>
<tr>
    <td><a href="#export_devices"><CopyableCode code="export_devices" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-exportBlobContainerUri"><code>exportBlobContainerUri</code></a>, <a href="#parameter-excludeKeys"><code>excludeKeys</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Exports all the device identities in the IoT hub identity registry to an Azure Storage blob container. For more information, see: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-identity-registry#import-and-export-device-identities.</td>
</tr>
<tr>
    <td><a href="#import_devices"><CopyableCode code="import_devices" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-resourceName"><code>resourceName</code></a>, <a href="#parameter-inputBlobContainerUri"><code>inputBlobContainerUri</code></a>, <a href="#parameter-outputBlobContainerUri"><code>outputBlobContainerUri</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Import, update, or delete device identities in the IoT hub identity registry from a blob. For more information, see: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-identity-registry#import-and-export-device-identities.</td>
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
<tr id="parameter-iotHubName">
    <td><CopyableCode code="iotHubName" /></td>
    <td><code>string</code></td>
    <td>IotHub to be tested</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group that contains the IoT hub.</td>
</tr>
<tr id="parameter-resourceName">
    <td><CopyableCode code="resourceName" /></td>
    <td><code>string</code></td>
    <td>The name of the IoT hub.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The subscription identifier.</td>
</tr>
<tr id="parameter-If-Match">
    <td><CopyableCode code="If-Match" /></td>
    <td><code>string</code></td>
    <td>ETag of the IoT Hub. Do not specify for creating a brand new IoT Hub. Required to update an existing IoT Hub.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>The version of the API.</td>
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

Get the non-security related metadata of an IoT hub.

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
type
FROM azure.iot_hub.resources
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND resourceName = '{{ resourceName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list_by_resource_group">

Get all the IoT hubs in a resource group.

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
type
FROM azure.iot_hub.resources
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list_by_subscription">

Get all the IoT hubs in a subscription.

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
type
FROM azure.iot_hub.resources
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND api-version = '{{ api-version }}'
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

Create or update the metadata of an Iot hub. The usual pattern to modify a property is to retrieve the IoT hub metadata and security metadata, and then combine them with the modified values in a new body to update the IoT hub. If certain properties are missing in the JSON, updating IoT Hub may cause these values to fallback to default, which may lead to unexpected behavior.

```sql
INSERT INTO azure.iot_hub.resources (
data__etag,
data__properties,
data__sku,
data__identity,
data__location,
data__tags,
subscriptionId,
resourceGroupName,
resourceName,
api-version,
If-Match
)
SELECT 
'{{ etag }}',
'{{ properties }}',
'{{ sku }}' /* required */,
'{{ identity }}',
'{{ location }}',
'{{ tags }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ resourceName }}',
'{{ api-version }}',
'{{ If-Match }}'
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
type
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: resources
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the resources resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the resources resource.
    - name: resourceName
      value: string
      description: Required parameter for the resources resource.
    - name: etag
      value: string
      description: |
        The Etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal ETag convention.
    - name: properties
      value: object
      description: |
        IotHub properties
    - name: sku
      value: object
      description: |
        IotHub SKU info
    - name: identity
      value: object
      description: |
        The managed identities for the IotHub.
    - name: location
      value: string
      description: |
        The resource location.
    - name: tags
      value: object
      description: |
        The resource tags.
    - name: api-version
      value: string
      description: The version of the API.
    - name: If-Match
      value: string
      description: ETag of the IoT Hub. Do not specify for creating a brand new IoT Hub. Required to update an existing IoT Hub.
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

Update an existing IoT Hub tags. to update other fields use the CreateOrUpdate method

```sql
UPDATE azure.iot_hub.resources
SET 
data__tags = '{{ tags }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND resourceName = '{{ resourceName }}' --required
AND api-version = '{{ api-version}}'
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
type;
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

Delete an IoT hub.

```sql
DELETE FROM azure.iot_hub.resources
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND resourceName = '{{ resourceName }}' --required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="check_name_availability"
    values={[
        { label: 'check_name_availability', value: 'check_name_availability' },
        { label: 'test_all_routes', value: 'test_all_routes' },
        { label: 'test_route', value: 'test_route' },
        { label: 'export_devices', value: 'export_devices' },
        { label: 'import_devices', value: 'import_devices' }
    ]}
>
<TabItem value="check_name_availability">

Check if an IoT hub name is available.

```sql
EXEC azure.iot_hub.resources.check_name_availability 
@subscriptionId='{{ subscriptionId }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"name": "{{ name }}"
}'
;
```
</TabItem>
<TabItem value="test_all_routes">

Test all routes configured in this Iot Hub

```sql
EXEC azure.iot_hub.resources.test_all_routes 
@iotHubName='{{ iotHubName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"routingSource": "{{ routingSource }}", 
"message": "{{ message }}", 
"twin": "{{ twin }}"
}'
;
```
</TabItem>
<TabItem value="test_route">

Test the new route for this Iot Hub

```sql
EXEC azure.iot_hub.resources.test_route 
@iotHubName='{{ iotHubName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"message": "{{ message }}", 
"route": "{{ route }}", 
"twin": "{{ twin }}"
}'
;
```
</TabItem>
<TabItem value="export_devices">

Exports all the device identities in the IoT hub identity registry to an Azure Storage blob container. For more information, see: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-identity-registry#import-and-export-device-identities.

```sql
EXEC azure.iot_hub.resources.export_devices 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@resourceName='{{ resourceName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"exportBlobContainerUri": "{{ exportBlobContainerUri }}", 
"excludeKeys": {{ excludeKeys }}, 
"exportBlobName": "{{ exportBlobName }}", 
"authenticationType": "{{ authenticationType }}", 
"identity": "{{ identity }}", 
"includeConfigurations": {{ includeConfigurations }}, 
"configurationsBlobName": "{{ configurationsBlobName }}"
}'
;
```
</TabItem>
<TabItem value="import_devices">

Import, update, or delete device identities in the IoT hub identity registry from a blob. For more information, see: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-identity-registry#import-and-export-device-identities.

```sql
EXEC azure.iot_hub.resources.import_devices 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@resourceName='{{ resourceName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"inputBlobContainerUri": "{{ inputBlobContainerUri }}", 
"outputBlobContainerUri": "{{ outputBlobContainerUri }}", 
"inputBlobName": "{{ inputBlobName }}", 
"outputBlobName": "{{ outputBlobName }}", 
"authenticationType": "{{ authenticationType }}", 
"identity": "{{ identity }}", 
"includeConfigurations": {{ includeConfigurations }}, 
"configurationsBlobName": "{{ configurationsBlobName }}"
}'
;
```
</TabItem>
</Tabs>
