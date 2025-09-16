--- 
title: endpoints
hide_title: false
hide_table_of_contents: false
keywords:
  - endpoints
  - hybrid_connectivity
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

Creates, updates, deletes, gets or lists an <code>endpoints</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>endpoints</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.hybrid_connectivity.endpoints" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_ingress_gateway_credentials', value: 'list_ingress_gateway_credentials' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Endpoint details

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The endpoint properties.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>System data of endpoint resource</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_ingress_gateway_credentials">

Ingress gateway access

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
    <td><CopyableCode code="ingress" /></td>
    <td><code>object</code></td>
    <td>Ingress gateway profile</td>
</tr>
<tr>
    <td><CopyableCode code="relay" /></td>
    <td><code>object</code></td>
    <td>Azure relay hybrid connection access properties</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list">

List of endpoints.

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
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The endpoint properties.</td>
</tr>
<tr>
    <td><CopyableCode code="systemData" /></td>
    <td><code>object</code></td>
    <td>System data of endpoint resource</td>
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
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-endpointName"><code>endpointName</code></a></td>
    <td></td>
    <td>Gets the endpoint to the resource.</td>
</tr>
<tr>
    <td><a href="#list_ingress_gateway_credentials"><CopyableCode code="list_ingress_gateway_credentials" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-endpointName"><code>endpointName</code></a></td>
    <td><a href="#parameter-expiresin"><code>expiresin</code></a></td>
    <td>Gets the ingress gateway endpoint credentials </td>
</tr>
<tr>
    <td><a href="#list"><CopyableCode code="list" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a></td>
    <td></td>
    <td>List of endpoints to the target resource.</td>
</tr>
<tr>
    <td><a href="#create_or_update"><CopyableCode code="create_or_update" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-endpointName"><code>endpointName</code></a></td>
    <td></td>
    <td>Create or update the endpoint to the target resource.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-endpointName"><code>endpointName</code></a></td>
    <td></td>
    <td>Update the endpoint to the target resource.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceUri"><code>resourceUri</code></a>, <a href="#parameter-endpointName"><code>endpointName</code></a></td>
    <td></td>
    <td>Deletes the endpoint access to the target resource.</td>
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
<tr id="parameter-endpointName">
    <td><CopyableCode code="endpointName" /></td>
    <td><code>string</code></td>
    <td>The endpoint name.</td>
</tr>
<tr id="parameter-resourceUri">
    <td><CopyableCode code="resourceUri" /></td>
    <td><code>string</code></td>
    <td>The fully qualified Azure Resource manager identifier of the resource to be connected.</td>
</tr>
<tr id="parameter-expiresin">
    <td><CopyableCode code="expiresin" /></td>
    <td><code>integer (int64)</code></td>
    <td>The is how long the endpoint access token is valid (in seconds).</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_ingress_gateway_credentials', value: 'list_ingress_gateway_credentials' },
        { label: 'list', value: 'list' }
    ]}
>
<TabItem value="get">

Gets the endpoint to the resource.

```sql
SELECT
properties,
systemData
FROM azure.hybrid_connectivity.endpoints
WHERE resourceUri = '{{ resourceUri }}' -- required
AND endpointName = '{{ endpointName }}' -- required
;
```
</TabItem>
<TabItem value="list_ingress_gateway_credentials">

Gets the ingress gateway endpoint credentials 

```sql
SELECT
ingress,
relay
FROM azure.hybrid_connectivity.endpoints
WHERE resourceUri = '{{ resourceUri }}' -- required
AND endpointName = '{{ endpointName }}' -- required
AND expiresin = '{{ expiresin }}'
;
```
</TabItem>
<TabItem value="list">

List of endpoints to the target resource.

```sql
SELECT
properties,
systemData
FROM azure.hybrid_connectivity.endpoints
WHERE resourceUri = '{{ resourceUri }}' -- required
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

Create or update the endpoint to the target resource.

```sql
INSERT INTO azure.hybrid_connectivity.endpoints (
data__properties,
resourceUri,
endpointName
)
SELECT 
'{{ properties }}',
'{{ resourceUri }}',
'{{ endpointName }}'
RETURNING
properties,
systemData
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: endpoints
  props:
    - name: resourceUri
      value: string
      description: Required parameter for the endpoints resource.
    - name: endpointName
      value: string
      description: Required parameter for the endpoints resource.
    - name: properties
      value: object
      description: |
        The endpoint properties.
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

Update the endpoint to the target resource.

```sql
UPDATE azure.hybrid_connectivity.endpoints
SET 
data__properties = '{{ properties }}'
WHERE 
resourceUri = '{{ resourceUri }}' --required
AND endpointName = '{{ endpointName }}' --required
RETURNING
properties,
systemData;
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

Deletes the endpoint access to the target resource.

```sql
DELETE FROM azure.hybrid_connectivity.endpoints
WHERE resourceUri = '{{ resourceUri }}' --required
AND endpointName = '{{ endpointName }}' --required
;
```
</TabItem>
</Tabs>
