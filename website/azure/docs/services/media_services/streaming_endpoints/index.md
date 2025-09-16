--- 
title: streaming_endpoints
hide_title: false
hide_table_of_contents: false
keywords:
  - streaming_endpoints
  - media_services
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

Creates, updates, deletes, gets or lists a <code>streaming_endpoints</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>streaming_endpoints</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.media_services.streaming_endpoints" /></td></tr>
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

OK. The request has succeeded.

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
    <td>The streaming endpoint properties.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The streaming endpoint sku.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The system metadata relating to this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

OK. The request has succeeded.

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
    <td>The streaming endpoint properties.</td>
</tr>
<tr>
    <td><CopyableCode code="sku" /></td>
    <td><code>object</code></td>
    <td>The streaming endpoint sku.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The system metadata relating to this resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-streamingEndpointName"><code>streamingEndpointName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Gets a streaming endpoint.</td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Lists the streaming endpoints in the account.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-streamingEndpointName"><code>streamingEndpointName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a>, <a href="#parameter-autoStart"><code>autoStart</code></a></td>
    <td>Creates a streaming endpoint.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-streamingEndpointName"><code>streamingEndpointName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Updates a existing streaming endpoint.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-streamingEndpointName"><code>streamingEndpointName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Deletes a streaming endpoint.</td>
</tr>
<tr>
    <td><a href="#skus"><CopyableCode code="skus" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-streamingEndpointName"><code>streamingEndpointName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>List streaming endpoint supported skus.</td>
</tr>
<tr>
    <td><a href="#start"><CopyableCode code="start" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-streamingEndpointName"><code>streamingEndpointName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Starts an existing streaming endpoint.</td>
</tr>
<tr>
    <td><a href="#stop"><CopyableCode code="stop" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-streamingEndpointName"><code>streamingEndpointName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Stops an existing streaming endpoint.</td>
</tr>
<tr>
    <td><a href="#scale"><CopyableCode code="scale" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-streamingEndpointName"><code>streamingEndpointName</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Scales an existing streaming endpoint.</td>
</tr>
<tr>
    <td><a href="#async_operation"><CopyableCode code="async_operation" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-operationId"><code>operationId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Get a streaming endpoint operation status.</td>
</tr>
<tr>
    <td><a href="#operation_location"><CopyableCode code="operation_location" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-accountName"><code>accountName</code></a>, <a href="#parameter-streamingEndpointName"><code>streamingEndpointName</code></a>, <a href="#parameter-operationId"><code>operationId</code></a></td>
    <td><a href="#parameter-api-version"><code>api-version</code></a></td>
    <td>Get a streaming endpoint operation status.</td>
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
<tr id="parameter-accountName">
    <td><CopyableCode code="accountName" /></td>
    <td><code>string</code></td>
    <td>The Media Services account name.</td>
</tr>
<tr id="parameter-operationId">
    <td><CopyableCode code="operationId" /></td>
    <td><code>string</code></td>
    <td>The ID of an ongoing async operation.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group within the Azure subscription.</td>
</tr>
<tr id="parameter-streamingEndpointName">
    <td><CopyableCode code="streamingEndpointName" /></td>
    <td><code>string</code></td>
    <td>The name of the streaming endpoint, maximum length is 24.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The unique identifier for a Microsoft Azure subscription.</td>
</tr>
<tr id="parameter-api-version">
    <td><CopyableCode code="api-version" /></td>
    <td><code>string</code></td>
    <td>The version of the API to be used with the client request.</td>
</tr>
<tr id="parameter-autoStart">
    <td><CopyableCode code="autoStart" /></td>
    <td><code>boolean</code></td>
    <td>The flag indicates if the resource should be automatically started on creation.</td>
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

Gets a streaming endpoint.

```sql
SELECT
location,
properties,
sku,
systemData,
tags
FROM azure.media_services.streaming_endpoints
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND streamingEndpointName = '{{ streamingEndpointName }}' -- required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
<TabItem value="list">

Lists the streaming endpoints in the account.

```sql
SELECT
location,
properties,
sku,
systemData,
tags
FROM azure.media_services.streaming_endpoints
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND accountName = '{{ accountName }}' -- required
AND api-version = '{{ api-version }}'
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

Creates a streaming endpoint.

```sql
INSERT INTO azure.media_services.streaming_endpoints (
data__properties,
data__sku,
data__tags,
data__location,
subscriptionId,
resourceGroupName,
accountName,
streamingEndpointName,
api-version,
autoStart
)
SELECT 
'{{ properties }}',
'{{ sku }}',
'{{ tags }}',
'{{ location }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ accountName }}',
'{{ streamingEndpointName }}',
'{{ api-version }}',
'{{ autoStart }}'
RETURNING
location,
properties,
sku,
systemData,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: streaming_endpoints
  props:
    - name: subscriptionId
      value: string
      description: Required parameter for the streaming_endpoints resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the streaming_endpoints resource.
    - name: accountName
      value: string
      description: Required parameter for the streaming_endpoints resource.
    - name: streamingEndpointName
      value: string
      description: Required parameter for the streaming_endpoints resource.
    - name: properties
      value: object
      description: |
        The streaming endpoint properties.
    - name: sku
      value: object
      description: |
        The streaming endpoint sku.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: location
      value: string
      description: |
        The geo-location where the resource lives
    - name: api-version
      value: string
      description: The version of the API to be used with the client request.
    - name: autoStart
      value: boolean
      description: The flag indicates if the resource should be automatically started on creation.
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

Updates a existing streaming endpoint.

```sql
UPDATE azure.media_services.streaming_endpoints
SET 
data__properties = '{{ properties }}',
data__sku = '{{ sku }}',
data__tags = '{{ tags }}',
data__location = '{{ location }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND accountName = '{{ accountName }}' --required
AND streamingEndpointName = '{{ streamingEndpointName }}' --required
AND api-version = '{{ api-version}}'
RETURNING
location,
properties,
sku,
systemData,
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

Deletes a streaming endpoint.

```sql
DELETE FROM azure.media_services.streaming_endpoints
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND accountName = '{{ accountName }}' --required
AND streamingEndpointName = '{{ streamingEndpointName }}' --required
AND api-version = '{{ api-version }}'
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="skus"
    values={[
        { label: 'skus', value: 'skus' },
        { label: 'start', value: 'start' },
        { label: 'stop', value: 'stop' },
        { label: 'scale', value: 'scale' },
        { label: 'async_operation', value: 'async_operation' },
        { label: 'operation_location', value: 'operation_location' }
    ]}
>
<TabItem value="skus">

List streaming endpoint supported skus.

```sql
EXEC azure.media_services.streaming_endpoints.skus 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@streamingEndpointName='{{ streamingEndpointName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="start">

Starts an existing streaming endpoint.

```sql
EXEC azure.media_services.streaming_endpoints.start 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@streamingEndpointName='{{ streamingEndpointName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="stop">

Stops an existing streaming endpoint.

```sql
EXEC azure.media_services.streaming_endpoints.stop 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@streamingEndpointName='{{ streamingEndpointName }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="scale">

Scales an existing streaming endpoint.

```sql
EXEC azure.media_services.streaming_endpoints.scale 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@streamingEndpointName='{{ streamingEndpointName }}' --required, 
@api-version='{{ api-version }}' 
@@json=
'{
"scaleUnit": {{ scaleUnit }}
}'
;
```
</TabItem>
<TabItem value="async_operation">

Get a streaming endpoint operation status.

```sql
EXEC azure.media_services.streaming_endpoints.async_operation 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@operationId='{{ operationId }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
<TabItem value="operation_location">

Get a streaming endpoint operation status.

```sql
EXEC azure.media_services.streaming_endpoints.operation_location 
@subscriptionId='{{ subscriptionId }}' --required, 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@accountName='{{ accountName }}' --required, 
@streamingEndpointName='{{ streamingEndpointName }}' --required, 
@operationId='{{ operationId }}' --required, 
@api-version='{{ api-version }}'
;
```
</TabItem>
</Tabs>
