--- 
title: private_endpoint_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - private_endpoint_connections
  - powerbi_privatelinks
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.powerbi_privatelinks.private_endpoint_connections" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource', value: 'list_by_resource' }
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
    <td><CopyableCode code="id" /></td>
    <td><code>string</code></td>
    <td>Specifies the id of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Specifies the name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Specifies the properties of the private endpoint connection. (title: PrivateEndpointConnectionProperties)</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The system meta data relating to this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Specifies the type of the resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource">

Success. The response describes the list of private endpoint connections in the private endpoint resource.

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
    <td>Specifies the id of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Specifies the name of the resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Specifies the properties of the private endpoint connection. (title: PrivateEndpointConnectionProperties)</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>The system meta data relating to this resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Specifies the type of the resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-azureResourceName"><code>azureResourceName</code></a>, <a href="#parameter-privateEndpointName"><code>privateEndpointName</code></a></td>
    <td></td>
    <td>Get a specific private endpoint connection for Power BI by private endpoint name.</td>
</tr>
<tr>
    <td><a href="#list_by_resource"><CopyableCode code="list_by_resource" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-azureResourceName"><code>azureResourceName</code></a></td>
    <td></td>
    <td>Gets private endpoint connection for Power BI.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-azureResourceName"><code>azureResourceName</code></a>, <a href="#parameter-privateEndpointName"><code>privateEndpointName</code></a></td>
    <td></td>
    <td>Updates the status of Private Endpoint Connection object. Used to approve or reject a connection.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-azureResourceName"><code>azureResourceName</code></a>, <a href="#parameter-privateEndpointName"><code>privateEndpointName</code></a></td>
    <td></td>
    <td>Deletes a private endpoint connection for Power BI by private endpoint name.</td>
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
<tr id="parameter-azureResourceName">
    <td><CopyableCode code="azureResourceName" /></td>
    <td><code>string</code></td>
    <td>The name of the Azure resource.</td>
</tr>
<tr id="parameter-privateEndpointName">
    <td><CopyableCode code="privateEndpointName" /></td>
    <td><code>string</code></td>
    <td>The name of the private endpoint.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>The name of the resource group.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>The Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000).</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_resource', value: 'list_by_resource' }
    ]}
>
<TabItem value="get">

Get a specific private endpoint connection for Power BI by private endpoint name.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.powerbi_privatelinks.private_endpoint_connections
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND azureResourceName = '{{ azureResourceName }}' -- required
AND privateEndpointName = '{{ privateEndpointName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_resource">

Gets private endpoint connection for Power BI.

```sql
SELECT
id,
name,
properties,
systemData,
type
FROM azure.powerbi_privatelinks.private_endpoint_connections
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND azureResourceName = '{{ azureResourceName }}' -- required
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

Updates the status of Private Endpoint Connection object. Used to approve or reject a connection.

```sql
INSERT INTO azure.powerbi_privatelinks.private_endpoint_connections (
data__properties,
subscriptionId,
resourceGroupName,
azureResourceName,
privateEndpointName
)
SELECT 
'{{ properties }}',
'{{ subscriptionId }}',
'{{ resourceGroupName }}',
'{{ azureResourceName }}',
'{{ privateEndpointName }}'
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
    - name: subscriptionId
      value: string
      description: Required parameter for the private_endpoint_connections resource.
    - name: resourceGroupName
      value: string
      description: Required parameter for the private_endpoint_connections resource.
    - name: azureResourceName
      value: string
      description: Required parameter for the private_endpoint_connections resource.
    - name: privateEndpointName
      value: string
      description: Required parameter for the private_endpoint_connections resource.
    - name: properties
      value: object
      description: |
        Specifies the properties of the private endpoint connection.
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

Deletes a private endpoint connection for Power BI by private endpoint name.

```sql
DELETE FROM azure.powerbi_privatelinks.private_endpoint_connections
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND azureResourceName = '{{ azureResourceName }}' --required
AND privateEndpointName = '{{ privateEndpointName }}' --required
;
```
</TabItem>
</Tabs>
