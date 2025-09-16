--- 
title: endpoints
hide_title: false
hide_table_of_contents: false
keywords:
  - endpoints
  - cdn
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
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cdn.endpoints" /></td></tr>
</tbody></table>

## Fields

The following fields are returned by `SELECT` queries:

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_profile', value: 'list_by_profile' }
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
    <td>Resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The JSON object that contains the properties required to create an endpoint.</td>
</tr>
<tr>
    <td><CopyableCode code="tags" /></td>
    <td><code>object</code></td>
    <td>Resource tags.</td>
</tr>
</tbody>
</table>
</TabItem>
<TabItem value="list_by_profile">

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
    <td>Resource location.</td>
</tr>
<tr>
    <td><CopyableCode code="properties" /></td>
    <td><code>object</code></td>
    <td>The JSON object that contains the properties required to create an endpoint.</td>
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
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-endpointName"><code>endpointName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Gets an existing CDN endpoint with the specified endpoint name under the specified subscription, resource group and profile.</td>
</tr>
<tr>
    <td><a href="#list_by_profile"><CopyableCode code="list_by_profile" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Lists existing CDN endpoints.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-endpointName"><code>endpointName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates a new CDN endpoint with the specified endpoint name under the specified subscription, resource group and profile.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-endpointName"><code>endpointName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Updates an existing CDN endpoint with the specified endpoint name under the specified subscription, resource group and profile. Only tags can be updated after creating an endpoint. To update origins, use the Update Origin operation. To update origin groups, use the Update Origin group operation. To update custom domains, use the Update Custom Domain operation.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-endpointName"><code>endpointName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes an existing CDN endpoint with the specified endpoint name under the specified subscription, resource group and profile.</td>
</tr>
<tr>
    <td><a href="#start"><CopyableCode code="start" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-endpointName"><code>endpointName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Starts an existing CDN endpoint that is on a stopped state.</td>
</tr>
<tr>
    <td><a href="#stop"><CopyableCode code="stop" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-endpointName"><code>endpointName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Stops an existing running CDN endpoint.</td>
</tr>
<tr>
    <td><a href="#purge_content"><CopyableCode code="purge_content" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-endpointName"><code>endpointName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-contentPaths"><code>contentPaths</code></a></td>
    <td></td>
    <td>Removes a content from CDN.</td>
</tr>
<tr>
    <td><a href="#load_content"><CopyableCode code="load_content" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-endpointName"><code>endpointName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-contentPaths"><code>contentPaths</code></a></td>
    <td></td>
    <td>Pre-loads a content to CDN. Available for Verizon Profiles.</td>
</tr>
<tr>
    <td><a href="#validate_custom_domain"><CopyableCode code="validate_custom_domain" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-endpointName"><code>endpointName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-hostName"><code>hostName</code></a></td>
    <td></td>
    <td>Validates the custom domain mapping to ensure it maps to the correct CDN endpoint in DNS.</td>
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
    <td>Name of the endpoint under the profile which is unique globally.</td>
</tr>
<tr id="parameter-profileName">
    <td><CopyableCode code="profileName" /></td>
    <td><code>string</code></td>
    <td>Name of the CDN profile which is unique within the resource group.</td>
</tr>
<tr id="parameter-resourceGroupName">
    <td><CopyableCode code="resourceGroupName" /></td>
    <td><code>string</code></td>
    <td>Name of the Resource group within the Azure subscription.</td>
</tr>
<tr id="parameter-subscriptionId">
    <td><CopyableCode code="subscriptionId" /></td>
    <td><code>string</code></td>
    <td>Azure Subscription ID.</td>
</tr>
</tbody>
</table>

## `SELECT` examples

<Tabs
    defaultValue="get"
    values={[
        { label: 'get', value: 'get' },
        { label: 'list_by_profile', value: 'list_by_profile' }
    ]}
>
<TabItem value="get">

Gets an existing CDN endpoint with the specified endpoint name under the specified subscription, resource group and profile.

```sql
SELECT
location,
properties,
tags
FROM azure.cdn.endpoints
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND profileName = '{{ profileName }}' -- required
AND endpointName = '{{ endpointName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_profile">

Lists existing CDN endpoints.

```sql
SELECT
location,
properties,
tags
FROM azure.cdn.endpoints
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND profileName = '{{ profileName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
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

Creates a new CDN endpoint with the specified endpoint name under the specified subscription, resource group and profile.

```sql
INSERT INTO azure.cdn.endpoints (
data__location,
data__tags,
data__properties,
resourceGroupName,
profileName,
endpointName,
subscriptionId
)
SELECT 
'{{ location }}',
'{{ tags }}',
'{{ properties }}',
'{{ resourceGroupName }}',
'{{ profileName }}',
'{{ endpointName }}',
'{{ subscriptionId }}'
RETURNING
location,
properties,
tags
;
```
</TabItem>
<TabItem value="manifest">

```yaml
# Description fields are for documentation purposes
- name: endpoints
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the endpoints resource.
    - name: profileName
      value: string
      description: Required parameter for the endpoints resource.
    - name: endpointName
      value: string
      description: Required parameter for the endpoints resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the endpoints resource.
    - name: location
      value: string
      description: |
        Resource location.
    - name: tags
      value: object
      description: |
        Resource tags.
    - name: properties
      value: object
      description: |
        The JSON object that contains the properties required to create an endpoint.
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

Updates an existing CDN endpoint with the specified endpoint name under the specified subscription, resource group and profile. Only tags can be updated after creating an endpoint. To update origins, use the Update Origin operation. To update origin groups, use the Update Origin group operation. To update custom domains, use the Update Custom Domain operation.

```sql
UPDATE azure.cdn.endpoints
SET 
data__tags = '{{ tags }}',
data__properties = '{{ properties }}'
WHERE 
resourceGroupName = '{{ resourceGroupName }}' --required
AND profileName = '{{ profileName }}' --required
AND endpointName = '{{ endpointName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
RETURNING
location,
properties,
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

Deletes an existing CDN endpoint with the specified endpoint name under the specified subscription, resource group and profile.

```sql
DELETE FROM azure.cdn.endpoints
WHERE resourceGroupName = '{{ resourceGroupName }}' --required
AND profileName = '{{ profileName }}' --required
AND endpointName = '{{ endpointName }}' --required
AND subscriptionId = '{{ subscriptionId }}' --required
;
```
</TabItem>
</Tabs>


## Lifecycle Methods

<Tabs
    defaultValue="start"
    values={[
        { label: 'start', value: 'start' },
        { label: 'stop', value: 'stop' },
        { label: 'purge_content', value: 'purge_content' },
        { label: 'load_content', value: 'load_content' },
        { label: 'validate_custom_domain', value: 'validate_custom_domain' }
    ]}
>
<TabItem value="start">

Starts an existing CDN endpoint that is on a stopped state.

```sql
EXEC azure.cdn.endpoints.start 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@profileName='{{ profileName }}' --required, 
@endpointName='{{ endpointName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="stop">

Stops an existing running CDN endpoint.

```sql
EXEC azure.cdn.endpoints.stop 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@profileName='{{ profileName }}' --required, 
@endpointName='{{ endpointName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required
;
```
</TabItem>
<TabItem value="purge_content">

Removes a content from CDN.

```sql
EXEC azure.cdn.endpoints.purge_content 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@profileName='{{ profileName }}' --required, 
@endpointName='{{ endpointName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"contentPaths": "{{ contentPaths }}"
}'
;
```
</TabItem>
<TabItem value="load_content">

Pre-loads a content to CDN. Available for Verizon Profiles.

```sql
EXEC azure.cdn.endpoints.load_content 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@profileName='{{ profileName }}' --required, 
@endpointName='{{ endpointName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"contentPaths": "{{ contentPaths }}"
}'
;
```
</TabItem>
<TabItem value="validate_custom_domain">

Validates the custom domain mapping to ensure it maps to the correct CDN endpoint in DNS.

```sql
EXEC azure.cdn.endpoints.validate_custom_domain 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@profileName='{{ profileName }}' --required, 
@endpointName='{{ endpointName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"hostName": "{{ hostName }}"
}'
;
```
</TabItem>
</Tabs>
