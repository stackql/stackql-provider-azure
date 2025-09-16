--- 
title: private_endpoint_connections
hide_title: false
hide_table_of_contents: false
keywords:
  - private_endpoint_connections
  - key_vault
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.key_vault.private_endpoint_connections" /></td></tr>
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

Private endpoint connection successfully returned.

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
    <td>Fully qualified identifier of the key vault resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the key vault resource.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>Modified whenever there is a change in the state of private endpoint connection.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Azure location of the key vault resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Resource properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Tags assigned to the key vault resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type of the key vault resource.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_resource">

Get information about all private endpoint connections in the specified resource group.

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
    <td>Fully qualified identifier of the key vault resource.</td>
</tr>
<tr>
    <td><CopyableCode code="name" /></td>
    <td><code>string</code></td>
    <td>Name of the key vault resource.</td>
</tr>
<tr>
    <td><CopyableCode code="etag" /></td>
    <td><code>string</code></td>
    <td>Modified whenever there is a change in the state of private endpoint connection.</td>
</tr>
<tr>
    <td><CopyableCode code="location" /></td>
    <td><code>string</code></td>
    <td>Azure location of the key vault resource.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>Resource properties.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Tags assigned to the key vault resource.</td>
</tr>
<tr>
    <td><CopyableCode code="type" /></td>
    <td><code>string</code></td>
    <td>Resource type of the key vault resource.</td>
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
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-privateEndpointConnectionName"><code>privateEndpointConnectionName</code></a></td>
    <td></td>
    <td>Gets the specified private endpoint connection associated with the key vault.</td>
</tr>
<tr>
    <td><a href="#list_by_resource"><CopyableCode code="list_by_resource" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vaultName"><code>vaultName</code></a></td>
    <td></td>
    <td>The List operation gets information about the private endpoint connections associated with the vault.</td>
</tr>
<tr>
    <td><a href="#put"><CopyableCode code="put" /></a></td>
    <td><CopyableCode code="replace" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-privateEndpointConnectionName"><code>privateEndpointConnectionName</code></a></td>
    <td></td>
    <td>Updates the specified private endpoint connection associated with the key vault.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-vaultName"><code>vaultName</code></a>, <a href="#parameter-privateEndpointConnectionName"><code>privateEndpointConnectionName</code></a></td>
    <td></td>
    <td>Deletes the specified private endpoint connection associated with the key vault.</td>
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
    <td>Name of the private endpoint connection associated with the key vault.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the resource group that contains the key vault.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.</td>
</tr>
<tr id="parameter-vaultName">
    <td><CopyableCode code="vaultName" /></td>
    <td><code>string</code></td>
    <td>The name of the key vault.</td>
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

Gets the specified private endpoint connection associated with the key vault.

```sql
SELECT
id,
name,
etag,
location,
properties,
tags,
type
FROM azure.key_vault.private_endpoint_connections
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND vaultName = '{{ vaultName }}' -- required
AND privateEndpointConnectionName = '{{ privateEndpointConnectionName }}' -- required
;
```
</TabItem>
<TabItem value="list_by_resource">

The List operation gets information about the private endpoint connections associated with the vault.

```sql
SELECT
id,
name,
etag,
location,
properties,
tags,
type
FROM azure.key_vault.private_endpoint_connections
WHERE subscriptionId = '{{ subscriptionId }}' -- required
AND resourceGroupName = '{{ resourceGroupName }}' -- required
AND vaultName = '{{ vaultName }}' -- required
;
```
</TabItem>
</Tabs>


## `REPLACE` examples

<Tabs
    defaultValue="put"
    values={[
        { label: 'put', value: 'put' }
    ]}
>
<TabItem value="put">

Updates the specified private endpoint connection associated with the key vault.

```sql
REPLACE azure.key_vault.private_endpoint_connections
SET 
data__properties = '{{ properties }}',
data__etag = '{{ etag }}'
WHERE 
subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND vaultName = '{{ vaultName }}' --required
AND privateEndpointConnectionName = '{{ privateEndpointConnectionName }}' --required
RETURNING
id,
name,
etag,
location,
properties,
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

Deletes the specified private endpoint connection associated with the key vault.

```sql
DELETE FROM azure.key_vault.private_endpoint_connections
WHERE subscriptionId = '{{ subscriptionId }}' --required
AND resourceGroupName = '{{ resourceGroupName }}' --required
AND vaultName = '{{ vaultName }}' --required
AND privateEndpointConnectionName = '{{ privateEndpointConnectionName }}' --required
;
```
</TabItem>
</Tabs>
