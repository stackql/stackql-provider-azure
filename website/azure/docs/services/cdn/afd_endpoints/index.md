--- 
title: afd_endpoints
hide_title: false
hide_table_of_contents: false
keywords:
  - afd_endpoints
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

Creates, updates, deletes, gets or lists an <code>afd_endpoints</code> resource.

## Overview
<table><tbody>
<tr><td><b>Name</b></td><td><code>afd_endpoints</code></td></tr>
<tr><td><b>Type</b></td><td>Resource</td></tr>
<tr><td><b>Id</b></td><td><CopyableCode code="azure.cdn.afd_endpoints" /></td></tr>
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
    <td>Gets an existing AzureFrontDoor endpoint with the specified endpoint name under the specified subscription, resource group and profile.</td>
</tr>
<tr>
    <td><a href="#list_by_profile"><CopyableCode code="list_by_profile" /></a></td>
    <td><CopyableCode code="select" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Lists existing AzureFrontDoor endpoints.</td>
</tr>
<tr>
    <td><a href="#create"><CopyableCode code="create" /></a></td>
    <td><CopyableCode code="insert" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-endpointName"><code>endpointName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Creates a new AzureFrontDoor endpoint with the specified endpoint name under the specified subscription, resource group and profile.</td>
</tr>
<tr>
    <td><a href="#update"><CopyableCode code="update" /></a></td>
    <td><CopyableCode code="update" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-endpointName"><code>endpointName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Updates an existing AzureFrontDoor endpoint with the specified endpoint name under the specified subscription, resource group and profile. Only tags can be updated after creating an endpoint. To update origins, use the Update Origin operation. To update origin groups, use the Update Origin group operation. To update domains, use the Update Custom Domain operation.</td>
</tr>
<tr>
    <td><a href="#delete"><CopyableCode code="delete" /></a></td>
    <td><CopyableCode code="delete" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-endpointName"><code>endpointName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a></td>
    <td></td>
    <td>Deletes an existing AzureFrontDoor endpoint with the specified endpoint name under the specified subscription, resource group and profile.</td>
</tr>
<tr>
    <td><a href="#purge_content"><CopyableCode code="purge_content" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-endpointName"><code>endpointName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-contentPaths"><code>contentPaths</code></a></td>
    <td></td>
    <td>Removes a content from AzureFrontDoor.</td>
</tr>
<tr>
    <td><a href="#validate_custom_domain"><CopyableCode code="validate_custom_domain" /></a></td>
    <td><CopyableCode code="exec" /></td>
    <td><a href="#parameter-resourceGroupName"><code>resourceGroupName</code></a>, <a href="#parameter-profileName"><code>profileName</code></a>, <a href="#parameter-endpointName"><code>endpointName</code></a>, <a href="#parameter-subscriptionId"><code>subscriptionId</code></a>, <a href="#parameter-hostName"><code>hostName</code></a></td>
    <td></td>
    <td>Validates the custom domain mapping to ensure it maps to the correct Azure Front Door endpoint in DNS.</td>
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
    <td>Name of the Azure Front Door Standard or Azure Front Door Premium profile which is unique within the resource group.</td>
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

Gets an existing AzureFrontDoor endpoint with the specified endpoint name under the specified subscription, resource group and profile.

```sql
SELECT
location,
properties,
tags
FROM azure.cdn.afd_endpoints
WHERE resourceGroupName = '{{ resourceGroupName }}' -- required
AND profileName = '{{ profileName }}' -- required
AND endpointName = '{{ endpointName }}' -- required
AND subscriptionId = '{{ subscriptionId }}' -- required
;
```
</TabItem>
<TabItem value="list_by_profile">

Lists existing AzureFrontDoor endpoints.

```sql
SELECT
location,
properties,
tags
FROM azure.cdn.afd_endpoints
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

Creates a new AzureFrontDoor endpoint with the specified endpoint name under the specified subscription, resource group and profile.

```sql
INSERT INTO azure.cdn.afd_endpoints (
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
- name: afd_endpoints
  props:
    - name: resourceGroupName
      value: string
      description: Required parameter for the afd_endpoints resource.
    - name: profileName
      value: string
      description: Required parameter for the afd_endpoints resource.
    - name: endpointName
      value: string
      description: Required parameter for the afd_endpoints resource.
    - name: subscriptionId
      value: string
      description: Required parameter for the afd_endpoints resource.
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

Updates an existing AzureFrontDoor endpoint with the specified endpoint name under the specified subscription, resource group and profile. Only tags can be updated after creating an endpoint. To update origins, use the Update Origin operation. To update origin groups, use the Update Origin group operation. To update domains, use the Update Custom Domain operation.

```sql
UPDATE azure.cdn.afd_endpoints
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

Deletes an existing AzureFrontDoor endpoint with the specified endpoint name under the specified subscription, resource group and profile.

```sql
DELETE FROM azure.cdn.afd_endpoints
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
    defaultValue="purge_content"
    values={[
        { label: 'purge_content', value: 'purge_content' },
        { label: 'validate_custom_domain', value: 'validate_custom_domain' }
    ]}
>
<TabItem value="purge_content">

Removes a content from AzureFrontDoor.

```sql
EXEC azure.cdn.afd_endpoints.purge_content 
@resourceGroupName='{{ resourceGroupName }}' --required, 
@profileName='{{ profileName }}' --required, 
@endpointName='{{ endpointName }}' --required, 
@subscriptionId='{{ subscriptionId }}' --required 
@@json=
'{
"contentPaths": "{{ contentPaths }}", 
"domains": "{{ domains }}"
}'
;
```
</TabItem>
<TabItem value="validate_custom_domain">

Validates the custom domain mapping to ensure it maps to the correct Azure Front Door endpoint in DNS.

```sql
EXEC azure.cdn.afd_endpoints.validate_custom_domain 
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
