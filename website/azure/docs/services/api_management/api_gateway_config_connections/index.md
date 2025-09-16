--- 
title: api_gateway_config_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - api_gateway_config_connections
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

Creates, updates, deletes, gets or lists an <code>api_gateway_config_connections</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>api_gateway_config_connections</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.api_management.api_gateway_config_connections" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_gateway', value: 'list_by_gateway' }
    ]}
>
<TabItem value="get">

Successfully got the API Management gateway config connection resource.

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
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>ETag of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the API Management gateway config connection.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_gateway">

The API Management gateway config connection list.

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
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>ETag of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Properties of the API Management gateway config connection.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-gatewayName"><code>gatewayName</code></a>, <a href="#parameter-configConnectionName"><code>configConnectionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets an API Management gateway config connection resource description.</td>
</tr>
<tr>
    <td><a href="#list_by_gateway"><CopyableCode code="list_by_gateway" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-gatewayName"><code>gatewayName</code></a></td>
    <td></td>
    <td>List all API Management gateway config connections within a gateway.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-gatewayName"><code>gatewayName</code></a>, <a href="#parameter-configConnectionName"><code>configConnectionName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-data__properties"><code>data__properties</code></a></td>
    <td></td>
    <td>Creates or updates an API Management gateway config connection. This is long running operation and could take several minutes to complete.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-gatewayName"><code>gatewayName</code></a>, <a href="#parameter-configConnectionName"><code>configConnectionName</code></a>, <a href="#parameter-If-Match"><code>If-Match</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes an existing API Management gateway config connection.</td>
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
<tr id="parameter-If-Match">
    <td><CopyableCode code="If-Match" /></td>
    <td><code>string</code></td>
    <td>ETag of the Entity. ETag should match the current entity state from the header response of the GET request or it should be * for unconditional update.</td>
</tr>
<tr id="parameter-configConnectionName">
    <td><CopyableCode code="configConnectionName" /></td>
    <td><code>string</code></td>
    <td>The name of the API Management gateway config connection.</td>
</tr>
<tr id="parameter-gatewayName">
    <td><CopyableCode code="gatewayName" /></td>
    <td><code>string</code></td>
    <td>The name of the API Management gateway.</td>
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
        { label: 'list_by_gateway', value: 'list_by_gateway' }
    ]}
>
<TabItem value="get">

Gets an API Management gateway config connection resource description.

```sql
SELECT
etag,
properties
FROM azure.api_management.api_gateway_config_connections
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND gatewayName = '{{ gatewayName }}' -- required
AND configConnectionName = '{{ configConnectionName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_gateway">

List all API Management gateway config connections within a gateway.

```sql
SELECT
etag,
properties
FROM azure.api_management.api_gateway_config_connections
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
AND gatewayName = '{{ gatewayName }}' -- required
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

Creates or updates an API Management gateway config connection. This is long running operation and could take several minutes to complete.

```sql
INSERT INTO azure.api_management.api_gateway_config_connections (
data__properties,
resourceGroupName,
gatewayName,
configConnectionName,
subscriptionId
)
SELECT 
'{{ properties }}' /* required */,
'{{ resourceGroupName }}',
'{{ gatewayName }}',
'{{ configConnectionName }}',
'{{ subscriptionId }}'
RETURNING
etag,
properties
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: api_gateway_config_connections
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the api_gateway_config_connections resource.
    - name: gatewayName
      value: string
      description: Required parameter for the api_gateway_config_connections resource.
    - name: configConnectionName
      value: string
      description: Required parameter for the api_gateway_config_connections resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the api_gateway_config_connections resource.
    - name: properties
      value: object
      description: |
        Properties of the API Management gateway config connection.
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

Deletes an existing API Management gateway config connection.

```sql
DELETE FROM azure.api_management.api_gateway_config_connections
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND gatewayName = '{{ gatewayName }}' --required
AND configConnectionName = '{{ configConnectionName }}' --required
AND If-Match = '{{ If-Match }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>
